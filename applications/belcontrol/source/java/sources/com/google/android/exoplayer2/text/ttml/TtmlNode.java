package com.google.android.exoplayer2.text.ttml;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.util.Assertions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/ttml/TtmlNode.class */
public final class TtmlNode {
    public static final String ANONYMOUS_REGION_ID = "";
    public static final String ATTR_ID = "id";
    public static final String ATTR_TTS_BACKGROUND_COLOR = "backgroundColor";
    public static final String ATTR_TTS_COLOR = "color";
    public static final String ATTR_TTS_DISPLAY_ALIGN = "displayAlign";
    public static final String ATTR_TTS_EXTENT = "extent";
    public static final String ATTR_TTS_FONT_FAMILY = "fontFamily";
    public static final String ATTR_TTS_FONT_SIZE = "fontSize";
    public static final String ATTR_TTS_FONT_STYLE = "fontStyle";
    public static final String ATTR_TTS_FONT_WEIGHT = "fontWeight";
    public static final String ATTR_TTS_ORIGIN = "origin";
    public static final String ATTR_TTS_TEXT_ALIGN = "textAlign";
    public static final String ATTR_TTS_TEXT_DECORATION = "textDecoration";
    public static final String BOLD = "bold";
    public static final String CENTER = "center";
    public static final String END = "end";
    public static final String ITALIC = "italic";
    public static final String LEFT = "left";
    public static final String LINETHROUGH = "linethrough";
    public static final String NO_LINETHROUGH = "nolinethrough";
    public static final String NO_UNDERLINE = "nounderline";
    public static final String RIGHT = "right";
    public static final String START = "start";
    public static final String TAG_BODY = "body";
    public static final String TAG_BR = "br";
    public static final String TAG_DIV = "div";
    public static final String TAG_HEAD = "head";
    public static final String TAG_LAYOUT = "layout";
    public static final String TAG_METADATA = "metadata";
    public static final String TAG_P = "p";
    public static final String TAG_REGION = "region";
    public static final String TAG_SMPTE_DATA = "smpte:data";
    public static final String TAG_SMPTE_IMAGE = "smpte:image";
    public static final String TAG_SMPTE_INFORMATION = "smpte:information";
    public static final String TAG_SPAN = "span";
    public static final String TAG_STYLE = "style";
    public static final String TAG_STYLING = "styling";
    public static final String TAG_TT = "tt";
    public static final String UNDERLINE = "underline";
    private List<TtmlNode> children;
    public final long endTimeUs;
    public final boolean isTextNode;
    private final HashMap<String, Integer> nodeEndsByRegion;
    private final HashMap<String, Integer> nodeStartsByRegion;
    public final String regionId;
    public final long startTimeUs;
    public final TtmlStyle style;
    private final String[] styleIds;
    public final String tag;
    public final String text;

    private TtmlNode(String str, String str2, long j, long j2, TtmlStyle ttmlStyle, String[] strArr, String str3) {
        this.tag = str;
        this.text = str2;
        this.style = ttmlStyle;
        this.styleIds = strArr;
        this.isTextNode = str2 != null;
        this.startTimeUs = j;
        this.endTimeUs = j2;
        this.regionId = (String) Assertions.checkNotNull(str3);
        this.nodeStartsByRegion = new HashMap<>();
        this.nodeEndsByRegion = new HashMap<>();
    }

    private void applyStyleToOutput(Map<String, TtmlStyle> map, SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        TtmlStyle resolveStyle = TtmlRenderUtil.resolveStyle(this.style, this.styleIds, map);
        if (resolveStyle != null) {
            TtmlRenderUtil.applyStylesToSpan(spannableStringBuilder, i, i2, resolveStyle);
        }
    }

    public static TtmlNode buildNode(String str, long j, long j2, TtmlStyle ttmlStyle, String[] strArr, String str2) {
        return new TtmlNode(str, null, j, j2, ttmlStyle, strArr, str2);
    }

    public static TtmlNode buildTextNode(String str) {
        return new TtmlNode(null, TtmlRenderUtil.applyTextElementSpacePolicy(str), C0515C.TIME_UNSET, C0515C.TIME_UNSET, null, null, "");
    }

    private SpannableStringBuilder cleanUpText(SpannableStringBuilder spannableStringBuilder) {
        int i;
        int i2;
        int length = spannableStringBuilder.length();
        int i3 = 0;
        while (i3 < length) {
            int i4 = length;
            if (spannableStringBuilder.charAt(i3) == ' ') {
                int i5 = i3 + 1;
                int i6 = i5;
                while (i6 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i6) == ' ') {
                    i6++;
                }
                int i7 = i6 - i5;
                i4 = length;
                if (i7 > 0) {
                    spannableStringBuilder.delete(i3, i3 + i7);
                    i4 = length - i7;
                }
            }
            i3++;
            length = i4;
        }
        int i8 = length;
        if (length > 0) {
            i8 = length;
            if (spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
                i8 = length - 1;
            }
        }
        int i9 = 0;
        while (true) {
            i = i8 - 1;
            if (i9 >= i) {
                break;
            }
            int i10 = i8;
            if (spannableStringBuilder.charAt(i9) == '\n') {
                int i11 = i9 + 1;
                i10 = i8;
                if (spannableStringBuilder.charAt(i11) == ' ') {
                    spannableStringBuilder.delete(i11, i9 + 2);
                    i10 = i8 - 1;
                }
            }
            i9++;
            i8 = i10;
        }
        int i12 = i8;
        int i13 = 0;
        if (i8 > 0) {
            i12 = i8;
            i13 = 0;
            if (spannableStringBuilder.charAt(i) == ' ') {
                spannableStringBuilder.delete(i, i8);
                i12 = i8 - 1;
                i13 = 0;
            }
        }
        while (true) {
            i2 = i12 - 1;
            if (i13 >= i2) {
                break;
            }
            int i14 = i12;
            if (spannableStringBuilder.charAt(i13) == ' ') {
                int i15 = i13 + 1;
                i14 = i12;
                if (spannableStringBuilder.charAt(i15) == '\n') {
                    spannableStringBuilder.delete(i13, i15);
                    i14 = i12 - 1;
                }
            }
            i13++;
            i12 = i14;
        }
        if (i12 > 0 && spannableStringBuilder.charAt(i2) == '\n') {
            spannableStringBuilder.delete(i2, i12);
        }
        return spannableStringBuilder;
    }

    private void getEventTimes(TreeSet<Long> treeSet, boolean z) {
        boolean equals = TAG_P.equals(this.tag);
        if (z || equals) {
            long j = this.startTimeUs;
            if (j != C0515C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.endTimeUs;
            if (j2 != C0515C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.children == null) {
            return;
        }
        for (int i = 0; i < this.children.size(); i++) {
            this.children.get(i).getEventTimes(treeSet, z || equals);
        }
    }

    private static SpannableStringBuilder getRegionOutput(String str, Map<String, SpannableStringBuilder> map) {
        if (!map.containsKey(str)) {
            map.put(str, new SpannableStringBuilder());
        }
        return map.get(str);
    }

    private void traverseForStyle(long j, Map<String, TtmlStyle> map, Map<String, SpannableStringBuilder> map2) {
        int i;
        if (!isActive(j)) {
            return;
        }
        Iterator<Map.Entry<String, Integer>> it = this.nodeEndsByRegion.entrySet().iterator();
        while (true) {
            if (it.hasNext()) {
                Map.Entry<String, Integer> next = it.next();
                String key = next.getKey();
                int i2 = 0;
                if (this.nodeStartsByRegion.containsKey(key)) {
                    i2 = this.nodeStartsByRegion.get(key).intValue();
                }
                int intValue = next.getValue().intValue();
                if (i2 != intValue) {
                    applyStyleToOutput(map, map2.get(key), i2, intValue);
                }
            }
        }
        for (i = 0; i < getChildCount(); i++) {
            getChild(i).traverseForStyle(j, map, map2);
        }
    }

    private void traverseForText(long j, boolean z, String str, Map<String, SpannableStringBuilder> map) {
        this.nodeStartsByRegion.clear();
        this.nodeEndsByRegion.clear();
        if (TAG_METADATA.equals(this.tag)) {
            return;
        }
        if (!"".equals(this.regionId)) {
            str = this.regionId;
        }
        if (this.isTextNode && z) {
            getRegionOutput(str, map).append((CharSequence) this.text);
        } else if (TAG_BR.equals(this.tag) && z) {
            getRegionOutput(str, map).append('\n');
        } else if (isActive(j)) {
            for (Map.Entry<String, SpannableStringBuilder> entry : map.entrySet()) {
                this.nodeStartsByRegion.put(entry.getKey(), Integer.valueOf(entry.getValue().length()));
            }
            boolean equals = TAG_P.equals(this.tag);
            for (int i = 0; i < getChildCount(); i++) {
                getChild(i).traverseForText(j, z || equals, str, map);
            }
            if (equals) {
                TtmlRenderUtil.endParagraph(getRegionOutput(str, map));
            }
            for (Map.Entry<String, SpannableStringBuilder> entry2 : map.entrySet()) {
                this.nodeEndsByRegion.put(entry2.getKey(), Integer.valueOf(entry2.getValue().length()));
            }
        }
    }

    public void addChild(TtmlNode ttmlNode) {
        if (this.children == null) {
            this.children = new ArrayList();
        }
        this.children.add(ttmlNode);
    }

    public TtmlNode getChild(int i) {
        List<TtmlNode> list = this.children;
        if (list != null) {
            return list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public int getChildCount() {
        List<TtmlNode> list = this.children;
        return list == null ? 0 : list.size();
    }

    public List<Cue> getCues(long j, Map<String, TtmlStyle> map, Map<String, TtmlRegion> map2) {
        TreeMap treeMap = new TreeMap();
        traverseForText(j, false, this.regionId, treeMap);
        traverseForStyle(j, map, treeMap);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : treeMap.entrySet()) {
            TtmlRegion ttmlRegion = map2.get(entry.getKey());
            arrayList.add(new Cue(cleanUpText((SpannableStringBuilder) entry.getValue()), (Layout.Alignment) null, ttmlRegion.line, ttmlRegion.lineType, ttmlRegion.lineAnchor, ttmlRegion.position, Integer.MIN_VALUE, ttmlRegion.width, ttmlRegion.textSizeType, ttmlRegion.textSize));
        }
        return arrayList;
    }

    public long[] getEventTimesUs() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i = 0;
        getEventTimes(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = it.next().longValue();
            i++;
        }
        return jArr;
    }

    public String[] getStyleIds() {
        return this.styleIds;
    }

    public boolean isActive(long j) {
        long j2 = this.startTimeUs;
        return (j2 == C0515C.TIME_UNSET && this.endTimeUs == C0515C.TIME_UNSET) || (j2 <= j && this.endTimeUs == C0515C.TIME_UNSET) || ((j2 == C0515C.TIME_UNSET && j < this.endTimeUs) || (j2 <= j && j < this.endTimeUs));
    }
}
