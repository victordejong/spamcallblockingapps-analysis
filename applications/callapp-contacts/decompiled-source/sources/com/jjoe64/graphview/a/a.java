package com.jjoe64.graphview.a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.AccelerateInterpolator;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.a.d;
import com.jjoe64.graphview.g;
import com.jjoe64.graphview.i;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/a.class */
public final class a<E extends d> extends b<E> {
    private Paint f;
    private Paint g;
    private int h;
    private double i;
    private i<E> j;
    private boolean k;
    private int l;
    private float m;
    private Map<g, E> n;
    private boolean o;
    private double p;
    private long q;
    private AccelerateInterpolator r;
    private int s;

    public a() {
        this.n = new HashMap();
        this.p = Double.NaN;
        this.f = new Paint();
    }

    public a(E[] eArr) {
        super(eArr);
        this.n = new HashMap();
        this.p = Double.NaN;
        this.f = new Paint();
        this.r = new AccelerateInterpolator(2.0f);
    }

    @Override // com.jjoe64.graphview.a.b
    protected final E a(float f, float f2) {
        for (Map.Entry<g, E> entry : this.n.entrySet()) {
            double d2 = f;
            if (d2 >= entry.getKey().f33587a && d2 <= entry.getKey().f33588b) {
                double d3 = f2;
                if (d3 >= entry.getKey().f33589c && d3 <= entry.getKey().f33590d) {
                    return entry.getValue();
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.jjoe64.graphview.a.b
    public final void a() {
        this.n.clear();
    }

    @Override // com.jjoe64.graphview.a.b
    public final void a(GraphView graphView, Canvas canvas, d dVar) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x03b0, code lost:
        if (r12.p < r0) goto L_0x03b3;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v102, types: [double] */
    /* JADX WARN: Type inference failed for: r0v114, types: [double] */
    /* JADX WARN: Type inference failed for: r0v133, types: [double] */
    /* JADX WARN: Type inference failed for: r0v212 */
    /* JADX WARN: Type inference failed for: r0v213, types: [double] */
    /* JADX WARN: Type inference failed for: r0v227, types: [double] */
    /* JADX WARN: Type inference failed for: r0v311 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v14 */
    /* JADX WARN: Type inference failed for: r22v1, types: [double] */
    /* JADX WARN: Type inference failed for: r22v11 */
    /* JADX WARN: Type inference failed for: r22v25 */
    /* JADX WARN: Type inference failed for: r22v26 */
    /* JADX WARN: Type inference failed for: r22v27 */
    /* JADX WARN: Type inference failed for: r22v28 */
    /* JADX WARN: Type inference failed for: r22v29 */
    /* JADX WARN: Type inference failed for: r22v30 */
    /* JADX WARN: Type inference failed for: r22v33 */
    /* JADX WARN: Type inference failed for: r22v34 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r22v7, types: [double] */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Type inference failed for: r30v0, types: [double] */
    /* JADX WARN: Type inference failed for: r30v1, types: [double] */
    /* JADX WARN: Type inference failed for: r30v3 */
    /* JADX WARN: Unknown variable types count: 9 */
    @Override // com.jjoe64.graphview.a.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.jjoe64.graphview.GraphView r13, android.graphics.Canvas r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 1358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.a.a.a(com.jjoe64.graphview.GraphView, android.graphics.Canvas, boolean):void");
    }
}
