package com.google.android.exoplayer2.text.webvtt;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Log;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/webvtt/WebvttCueParser.class */
public final class WebvttCueParser {
    private static final char CHAR_AMPERSAND = '&';
    private static final char CHAR_GREATER_THAN = '>';
    private static final char CHAR_LESS_THAN = '<';
    private static final char CHAR_SEMI_COLON = ';';
    private static final char CHAR_SLASH = '/';
    private static final char CHAR_SPACE = ' ';
    public static final Pattern CUE_HEADER_PATTERN = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    private static final Pattern CUE_SETTING_PATTERN = Pattern.compile("(\\S+?):(\\S+)");
    private static final String ENTITY_AMPERSAND = "amp";
    private static final String ENTITY_GREATER_THAN = "gt";
    private static final String ENTITY_LESS_THAN = "lt";
    private static final String ENTITY_NON_BREAK_SPACE = "nbsp";
    private static final int STYLE_BOLD = 1;
    private static final int STYLE_ITALIC = 2;
    private static final String TAG = "WebvttCueParser";
    private static final String TAG_BOLD = "b";
    private static final String TAG_CLASS = "c";
    private static final String TAG_ITALIC = "i";
    private static final String TAG_LANG = "lang";
    private static final String TAG_UNDERLINE = "u";
    private static final String TAG_VOICE = "v";
    private final StringBuilder textBuilder = new StringBuilder();

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag.class */
    public static final class StartTag {
        private static final String[] NO_CLASSES = new String[0];
        public final String[] classes;
        public final String name;
        public final int position;
        public final String voice;

        private StartTag(String str, int i, String str2, String[] strArr) {
            this.position = i;
            this.name = str;
            this.voice = str2;
            this.classes = strArr;
        }

        public static StartTag buildStartTag(String str, int i) {
            String str2;
            String trim = str.trim();
            if (trim.isEmpty()) {
                return null;
            }
            int indexOf = trim.indexOf(" ");
            if (indexOf == -1) {
                str2 = "";
            } else {
                str2 = trim.substring(indexOf).trim();
                trim = trim.substring(0, indexOf);
            }
            String[] split = Util.split(trim, "\\.");
            return new StartTag(split[0], i, str2, split.length > 1 ? (String[]) Arrays.copyOfRange(split, 1, split.length) : NO_CLASSES);
        }

        public static StartTag buildWholeCueVirtualTag() {
            return new StartTag("", 0, "", new String[0]);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch.class */
    public static final class StyleMatch implements Comparable<StyleMatch> {
        public final int score;
        public final WebvttCssStyle style;

        public StyleMatch(int i, WebvttCssStyle webvttCssStyle) {
            this.score = i;
            this.style = webvttCssStyle;
        }

        public int compareTo(StyleMatch styleMatch) {
            return this.score - styleMatch.score;
        }
    }

    private static void applyEntity(String str, SpannableStringBuilder spannableStringBuilder) {
        char c;
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case 3309:
                if (str.equals(ENTITY_GREATER_THAN)) {
                    z = false;
                    break;
                }
                break;
            case 3464:
                if (str.equals(ENTITY_LESS_THAN)) {
                    z = true;
                    break;
                }
                break;
            case 96708:
                if (str.equals(ENTITY_AMPERSAND)) {
                    z = true;
                    break;
                }
                break;
            case 3374865:
                if (str.equals(ENTITY_NON_BREAK_SPACE)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                c = '>';
                break;
            case true:
                c = '<';
                break;
            case true:
                c = '&';
                break;
            case true:
                c = ' ';
                break;
            default:
                Log.w(TAG, "ignoring unsupported entity: '&" + str + ";'");
                return;
        }
        spannableStringBuilder.append(c);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x016f A[LOOP:0: B:33:0x0168->B:35:0x016f, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void applySpansForTag(java.lang.String r6, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag r7, android.text.SpannableStringBuilder r8, java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCssStyle> r9, java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StyleMatch> r10) {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCueParser.applySpansForTag(java.lang.String, com.google.android.exoplayer2.text.webvtt.WebvttCueParser$StartTag, android.text.SpannableStringBuilder, java.util.List, java.util.List):void");
    }

    private static void applyStyleToText(SpannableStringBuilder spannableStringBuilder, WebvttCssStyle webvttCssStyle, int i, int i2) {
        RelativeSizeSpan relativeSizeSpan;
        if (webvttCssStyle == null) {
            return;
        }
        if (webvttCssStyle.getStyle() != -1) {
            spannableStringBuilder.setSpan(new StyleSpan(webvttCssStyle.getStyle()), i, i2, 33);
        }
        if (webvttCssStyle.isLinethrough()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (webvttCssStyle.isUnderline()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (webvttCssStyle.hasFontColor()) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(webvttCssStyle.getFontColor()), i, i2, 33);
        }
        if (webvttCssStyle.hasBackgroundColor()) {
            spannableStringBuilder.setSpan(new BackgroundColorSpan(webvttCssStyle.getBackgroundColor()), i, i2, 33);
        }
        if (webvttCssStyle.getFontFamily() != null) {
            spannableStringBuilder.setSpan(new TypefaceSpan(webvttCssStyle.getFontFamily()), i, i2, 33);
        }
        if (webvttCssStyle.getTextAlign() != null) {
            spannableStringBuilder.setSpan(new AlignmentSpan.Standard(webvttCssStyle.getTextAlign()), i, i2, 33);
        }
        int fontSizeUnit = webvttCssStyle.getFontSizeUnit();
        if (fontSizeUnit == 1) {
            relativeSizeSpan = new AbsoluteSizeSpan((int) webvttCssStyle.getFontSize(), true);
        } else if (fontSizeUnit == 2) {
            relativeSizeSpan = new RelativeSizeSpan(webvttCssStyle.getFontSize());
        } else if (fontSizeUnit != 3) {
            return;
        } else {
            relativeSizeSpan = new RelativeSizeSpan(webvttCssStyle.getFontSize() / 100.0f);
        }
        spannableStringBuilder.setSpan(relativeSizeSpan, i, i2, 33);
    }

    private static int findEndOfTag(String str, int i) {
        int indexOf = str.indexOf(62, i);
        return indexOf == -1 ? str.length() : indexOf + 1;
    }

    private static void getApplicableStyles(List<WebvttCssStyle> list, String str, StartTag startTag, List<StyleMatch> list2) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            WebvttCssStyle webvttCssStyle = list.get(i);
            int specificityScore = webvttCssStyle.getSpecificityScore(str, startTag.name, startTag.classes, startTag.voice);
            if (specificityScore > 0) {
                list2.add(new StyleMatch(specificityScore, webvttCssStyle));
            }
        }
        Collections.sort(list2);
    }

    private static String getTagName(String str) {
        String trim = str.trim();
        if (trim.isEmpty()) {
            return null;
        }
        return Util.splitAtFirst(trim, "[ \\.]")[0];
    }

    private static boolean isSupportedTag(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case 98:
                if (str.equals(TAG_BOLD)) {
                    z = false;
                    break;
                }
                break;
            case 99:
                if (str.equals(TAG_CLASS)) {
                    z = true;
                    break;
                }
                break;
            case 105:
                if (str.equals(TAG_ITALIC)) {
                    z = true;
                    break;
                }
                break;
            case 117:
                if (str.equals(TAG_UNDERLINE)) {
                    z = true;
                    break;
                }
                break;
            case 118:
                if (str.equals(TAG_VOICE)) {
                    z = true;
                    break;
                }
                break;
            case 3314158:
                if (str.equals(TAG_LANG)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
            case true:
            case true:
            case true:
            case true:
            case true:
                return true;
            default:
                return false;
        }
    }

    private static boolean parseCue(String str, Matcher matcher, ParsableByteArray parsableByteArray, WebvttCue$Builder webvttCue$Builder, StringBuilder sb, List<WebvttCssStyle> list) {
        try {
            webvttCue$Builder.setStartTime(WebvttParserUtil.parseTimestampUs(matcher.group(1))).setEndTime(WebvttParserUtil.parseTimestampUs(matcher.group(2)));
            parseCueSettingsList(matcher.group(3), webvttCue$Builder);
            sb.setLength(0);
            while (true) {
                String readLine = parsableByteArray.readLine();
                if (TextUtils.isEmpty(readLine)) {
                    parseCueText(str, sb.toString(), webvttCue$Builder, list);
                    return true;
                }
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(readLine.trim());
            }
        } catch (NumberFormatException e) {
            Log.w(TAG, "Skipping cue with bad header: " + matcher.group());
            return false;
        }
    }

    public static void parseCueSettingsList(String str, WebvttCue$Builder webvttCue$Builder) {
        Matcher matcher = CUE_SETTING_PATTERN.matcher(str);
        while (matcher.find()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            try {
                if ("line".equals(group)) {
                    parseLineAttribute(group2, webvttCue$Builder);
                } else if ("align".equals(group)) {
                    webvttCue$Builder.setTextAlignment(parseTextAlignment(group2));
                } else if ("position".equals(group)) {
                    parsePositionAttribute(group2, webvttCue$Builder);
                } else if ("size".equals(group)) {
                    webvttCue$Builder.setWidth(WebvttParserUtil.parsePercentage(group2));
                } else {
                    Log.w(TAG, "Unknown cue setting " + group + ":" + group2);
                }
            } catch (NumberFormatException e) {
                Log.w(TAG, "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    public static void parseCueText(String str, String str2, WebvttCue$Builder webvttCue$Builder, List<WebvttCssStyle> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < str2.length()) {
            char charAt = str2.charAt(i);
            if (charAt == '&') {
                int i2 = i + 1;
                int indexOf = str2.indexOf(59, i2);
                int indexOf2 = str2.indexOf(32, i2);
                if (indexOf == -1) {
                    indexOf = indexOf2;
                } else if (indexOf2 != -1) {
                    indexOf = Math.min(indexOf, indexOf2);
                }
                if (indexOf != -1) {
                    applyEntity(str2.substring(i2, indexOf), spannableStringBuilder);
                    if (indexOf == indexOf2) {
                        spannableStringBuilder.append(" ");
                    }
                    i = indexOf + 1;
                } else {
                    spannableStringBuilder.append(charAt);
                    i = i2;
                }
            } else if (charAt != '<') {
                spannableStringBuilder.append(charAt);
                i++;
            } else {
                int i3 = i + 1;
                if (i3 >= str2.length()) {
                    i = i3;
                } else {
                    int i4 = 1;
                    boolean z = str2.charAt(i3) == '/';
                    int findEndOfTag = findEndOfTag(str2, i3);
                    int i5 = findEndOfTag - 2;
                    boolean z2 = str2.charAt(i5) == '/';
                    if (z) {
                        i4 = 2;
                    }
                    if (!z2) {
                        i5 = findEndOfTag - 1;
                    }
                    String substring = str2.substring(i + i4, i5);
                    String tagName = getTagName(substring);
                    i = findEndOfTag;
                    if (tagName != null) {
                        if (!isSupportedTag(tagName)) {
                            i = findEndOfTag;
                        } else if (z) {
                            while (true) {
                                if (!arrayDeque.isEmpty()) {
                                    StartTag startTag = (StartTag) arrayDeque.pop();
                                    applySpansForTag(str, startTag, spannableStringBuilder, list, arrayList);
                                    if (startTag.name.equals(tagName)) {
                                        i = findEndOfTag;
                                        break;
                                    }
                                } else {
                                    i = findEndOfTag;
                                    break;
                                }
                            }
                        } else {
                            i = findEndOfTag;
                            if (!z2) {
                                arrayDeque.push(StartTag.buildStartTag(substring, spannableStringBuilder.length()));
                                i = findEndOfTag;
                            }
                        }
                    }
                }
            }
        }
        while (!arrayDeque.isEmpty()) {
            applySpansForTag(str, (StartTag) arrayDeque.pop(), spannableStringBuilder, list, arrayList);
        }
        applySpansForTag(str, StartTag.buildWholeCueVirtualTag(), spannableStringBuilder, list, arrayList);
        webvttCue$Builder.setText(spannableStringBuilder);
    }

    private static void parseLineAttribute(String str, WebvttCue$Builder webvttCue$Builder) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            webvttCue$Builder.setLineAnchor(parsePositionAnchor(str.substring(indexOf + 1)));
            str = str.substring(0, indexOf);
        } else {
            webvttCue$Builder.setLineAnchor(Integer.MIN_VALUE);
        }
        if (str.endsWith("%")) {
            webvttCue$Builder.setLine(WebvttParserUtil.parsePercentage(str)).setLineType(0);
            return;
        }
        int parseInt = Integer.parseInt(str);
        int i = parseInt;
        if (parseInt < 0) {
            i = parseInt - 1;
        }
        webvttCue$Builder.setLine(i).setLineType(1);
    }

    private static int parsePositionAnchor(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    z = false;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    z = true;
                    break;
                }
                break;
            case 100571:
                if (str.equals(TtmlNode.END)) {
                    z = true;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(TtmlNode.START)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
            case true:
                return 1;
            case true:
                return 2;
            case true:
                return 0;
            default:
                Log.w(TAG, "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static void parsePositionAttribute(String str, WebvttCue$Builder webvttCue$Builder) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            webvttCue$Builder.setPositionAnchor(parsePositionAnchor(str.substring(indexOf + 1)));
            str = str.substring(0, indexOf);
        } else {
            webvttCue$Builder.setPositionAnchor(Integer.MIN_VALUE);
        }
        webvttCue$Builder.setPosition(WebvttParserUtil.parsePercentage(str));
    }

    private static Layout.Alignment parseTextAlignment(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    z = false;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    z = true;
                    break;
                }
                break;
            case 100571:
                if (str.equals(TtmlNode.END)) {
                    z = true;
                    break;
                }
                break;
            case 3317767:
                if (str.equals(TtmlNode.LEFT)) {
                    z = true;
                    break;
                }
                break;
            case 108511772:
                if (str.equals(TtmlNode.RIGHT)) {
                    z = true;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(TtmlNode.START)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
            case true:
                return Layout.Alignment.ALIGN_CENTER;
            case true:
            case true:
                return Layout.Alignment.ALIGN_OPPOSITE;
            case true:
            case true:
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                Log.w(TAG, "Invalid alignment value: " + str);
                return null;
        }
    }

    public boolean parseCue(ParsableByteArray parsableByteArray, WebvttCue$Builder webvttCue$Builder, List<WebvttCssStyle> list) {
        String readLine = parsableByteArray.readLine();
        if (readLine == null) {
            return false;
        }
        Pattern pattern = CUE_HEADER_PATTERN;
        Matcher matcher = pattern.matcher(readLine);
        if (matcher.matches()) {
            return parseCue(null, matcher, parsableByteArray, webvttCue$Builder, this.textBuilder, list);
        }
        String readLine2 = parsableByteArray.readLine();
        if (readLine2 == null) {
            return false;
        }
        Matcher matcher2 = pattern.matcher(readLine2);
        if (!matcher2.matches()) {
            return false;
        }
        return parseCue(readLine.trim(), matcher2, parsableByteArray, webvttCue$Builder, this.textBuilder, list);
    }
}
