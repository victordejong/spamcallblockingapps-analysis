package com.github.mikephil.charting.highlight;

import com.github.mikephil.charting.charts.RadarChart;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/highlight/RadarHighlighter.class */
public class RadarHighlighter extends PieRadarHighlighter<RadarChart> {
    public RadarHighlighter(RadarChart radarChart) {
        super(radarChart);
    }

    @Override // com.github.mikephil.charting.highlight.PieRadarHighlighter
    protected Highlight getClosestHighlight(int i, float f, float f2) {
        List<Highlight> highlightsAtIndex = getHighlightsAtIndex(i);
        float distanceToCenter = ((RadarChart) this.mChart).distanceToCenter(f, f2) / ((RadarChart) this.mChart).getFactor();
        Highlight highlight = null;
        float f3 = Float.MAX_VALUE;
        for (int i2 = 0; i2 < highlightsAtIndex.size(); i2++) {
            Highlight highlight2 = highlightsAtIndex.get(i2);
            float abs = Math.abs(highlight2.getY() - distanceToCenter);
            f3 = f3;
            if (abs < f3) {
                highlight = highlight2;
                f3 = abs;
            }
        }
        return highlight;
    }

    /* JADX WARN: Type inference failed for: r0v34, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.util.List<com.github.mikephil.charting.highlight.Highlight> getHighlightsAtIndex(int r11) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.highlight.RadarHighlighter.getHighlightsAtIndex(int):java.util.List");
    }
}
