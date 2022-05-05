package androidx.media2.exoplayer.external.text.ttml;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.text.Cue;
import androidx.media2.exoplayer.external.util.Assertions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/ttml/TtmlNode.class */
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
    public static final String TAG_DATA = "data";
    public static final String TAG_DIV = "div";
    public static final String TAG_HEAD = "head";
    public static final String TAG_IMAGE = "image";
    public static final String TAG_INFORMATION = "information";
    public static final String TAG_LAYOUT = "layout";
    public static final String TAG_METADATA = "metadata";
    public static final String TAG_P = "p";
    public static final String TAG_REGION = "region";
    public static final String TAG_SPAN = "span";
    public static final String TAG_STYLE = "style";
    public static final String TAG_STYLING = "styling";
    public static final String TAG_TT = "tt";
    public static final String UNDERLINE = "underline";
    public List<TtmlNode> children;
    public final long endTimeUs;
    @Nullable
    public final String imageId;
    public final boolean isTextNode;
    public final HashMap<String, Integer> nodeEndsByRegion;
    public final HashMap<String, Integer> nodeStartsByRegion;
    public final String regionId;
    public final long startTimeUs;
    @Nullable
    public final TtmlStyle style;
    @Nullable
    public final String[] styleIds;
    @Nullable
    public final String tag;
    @Nullable
    public final String text;

    public TtmlNode(@Nullable String str, @Nullable String str2, long j, long j2, @Nullable TtmlStyle ttmlStyle, @Nullable String[] strArr, String str3, @Nullable String str4) {
        this.tag = str;
        this.text = str2;
        this.imageId = str4;
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

    public static TtmlNode buildNode(@Nullable String str, long j, long j2, @Nullable TtmlStyle ttmlStyle, @Nullable String[] strArr, String str2, @Nullable String str3) {
        return new TtmlNode(str, null, j, j2, ttmlStyle, strArr, str2, str3);
    }

    public static TtmlNode buildTextNode(String str) {
        return new TtmlNode(null, TtmlRenderUtil.applyTextElementSpacePolicy(str), C0463C.TIME_UNSET, C0463C.TIME_UNSET, null, null, "", null);
    }

    private SpannableStringBuilder cleanUpText(SpannableStringBuilder spannableStringBuilder) {
        int i;
        int i2;
        int length = spannableStringBuilder.length();
        for (int i3 = 0; i3 < length; i3++) {
            length = length;
            if (spannableStringBuilder.charAt(i3) == ' ') {
                int i4 = i3 + 1;
                int i5 = i4;
                while (i5 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i5) == ' ') {
                    i5++;
                }
                int i6 = i5 - i4;
                length = length;
                if (i6 > 0) {
                    spannableStringBuilder.delete(i3, i3 + i6);
                    length -= i6;
                }
            }
        }
        int i7 = length;
        if (length > 0) {
            i7 = length;
            if (spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
                i7 = length - 1;
            }
        }
        int i8 = 0;
        while (true) {
            i = i7 - 1;
            if (i8 >= i) {
                break;
            }
            i7 = i7;
            if (spannableStringBuilder.charAt(i8) == '\n') {
                int i9 = i8 + 1;
                i7 = i7;
                if (spannableStringBuilder.charAt(i9) == ' ') {
                    spannableStringBuilder.delete(i9, i8 + 2);
                    i7--;
                }
            }
            i8++;
        }
        int i10 = 0;
        int i11 = i7;
        if (i7 > 0) {
            i10 = 0;
            i11 = i7;
            if (spannableStringBuilder.charAt(i) == ' ') {
                spannableStringBuilder.delete(i, i7);
                i11 = i7 - 1;
                i10 = 0;
            }
        }
        while (true) {
            i2 = i11 - 1;
            if (i10 >= i2) {
                break;
            }
            i11 = i11;
            if (spannableStringBuilder.charAt(i10) == ' ') {
                int i12 = i10 + 1;
                i11 = i11;
                if (spannableStringBuilder.charAt(i12) == '\n') {
                    spannableStringBuilder.delete(i10, i12);
                    i11--;
                }
            }
            i10++;
        }
        if (i11 > 0 && spannableStringBuilder.charAt(i2) == '\n') {
            spannableStringBuilder.delete(i2, i11);
        }
        return spannableStringBuilder;
    }

    private void getEventTimes(TreeSet<Long> treeSet, boolean z) {
        boolean equals = "p".equals(this.tag);
        boolean equals2 = TAG_DIV.equals(this.tag);
        if (z || equals || (equals2 && this.imageId != null)) {
            long j = this.startTimeUs;
            if (j != C0463C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.endTimeUs;
            if (j2 != C0463C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.children != null) {
            for (int i = 0; i < this.children.size(); i++) {
                this.children.get(i).getEventTimes(treeSet, z || equals);
            }
        }
    }

    public static SpannableStringBuilder getRegionOutput(String str, Map<String, SpannableStringBuilder> map) {
        if (!map.containsKey(str)) {
            map.put(str, new SpannableStringBuilder());
        }
        return map.get(str);
    }

    private void traverseForImage(long j, String str, List<Pair<String, String>> list) {
        String str2;
        if (!"".equals(this.regionId)) {
            str = this.regionId;
        }
        if (!isActive(j) || !TAG_DIV.equals(this.tag) || (str2 = this.imageId) == null) {
            for (int i = 0; i < getChildCount(); i++) {
                getChild(i).traverseForImage(j, str, list);
            }
            return;
        }
        list.add(new Pair<>(str, str2));
    }

    private void traverseForStyle(long j, Map<String, TtmlStyle> map, Map<String, SpannableStringBuilder> map2) {
        int i;
        if (isActive(j)) {
            Iterator<Map.Entry<String, Integer>> it = this.nodeEndsByRegion.entrySet().iterator();
            while (true) {
                int i2 = 0;
                if (it.hasNext()) {
                    Map.Entry<String, Integer> next = it.next();
                    String key = next.getKey();
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
    }

    private void traverseForText(long j, boolean z, String str, Map<String, SpannableStringBuilder> map) {
        this.nodeStartsByRegion.clear();
        this.nodeEndsByRegion.clear();
        if (!TAG_METADATA.equals(this.tag)) {
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
                boolean equals = "p".equals(this.tag);
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

    public List<Cue> getCues(long j, Map<String, TtmlStyle> map, Map<String, TtmlRegion> map2, Map<String, String> map3) {
        List<Pair<String, String>> arrayList = new ArrayList<>();
        traverseForImage(j, this.regionId, arrayList);
        TreeMap treeMap = new TreeMap();
        traverseForText(j, false, this.regionId, treeMap);
        traverseForStyle(j, map, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair<String, String> pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                TtmlRegion ttmlRegion = map2.get(pair.first);
                arrayList2.add(new Cue(decodeByteArray, ttmlRegion.position, 1, ttmlRegion.line, ttmlRegion.lineAnchor, ttmlRegion.width, Float.MIN_VALUE));
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            TtmlRegion ttmlRegion2 = map2.get(entry.getKey());
            arrayList2.add(new Cue(cleanUpText((SpannableStringBuilder) entry.getValue()), (Layout.Alignment) null, ttmlRegion2.line, ttmlRegion2.lineType, ttmlRegion2.lineAnchor, ttmlRegion2.position, Integer.MIN_VALUE, ttmlRegion2.width, ttmlRegion2.textSizeType, ttmlRegion2.textSize));
        }
        return arrayList2;
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
        return (this.startTimeUs == C0463C.TIME_UNSET && this.endTimeUs == C0463C.TIME_UNSET) || (this.startTimeUs <= j && this.endTimeUs == C0463C.TIME_UNSET) || ((this.startTimeUs == C0463C.TIME_UNSET && j < this.endTimeUs) || (this.startTimeUs <= j && j < this.endTimeUs));
    }
}
