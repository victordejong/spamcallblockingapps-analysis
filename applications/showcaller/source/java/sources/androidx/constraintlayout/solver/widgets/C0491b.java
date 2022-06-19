package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.C0458d;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.solver.widgets.b */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/b.class */
public class C0491b {
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0072, code lost:
        if (r0 == 2) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a7, code lost:
        if (r0 == 2) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00aa, code lost:
        r22 = true;
        r25 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b4, code lost:
        r22 = false;
        r24 = r26;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void m33876a(androidx.constraintlayout.solver.widgets.C0493d r10, androidx.constraintlayout.solver.C0458d r11, int r12, int r13, androidx.constraintlayout.solver.widgets.C0492c r14) {
        /*
            Method dump skipped, instructions count: 2592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.C0491b.m33876a(androidx.constraintlayout.solver.widgets.d, androidx.constraintlayout.solver.d, int, int, androidx.constraintlayout.solver.widgets.c):void");
    }

    /* renamed from: b */
    public static void m33875b(C0493d c0493d, C0458d c0458d, ArrayList<ConstraintWidget> arrayList, int i) {
        int i2;
        C0492c[] c0492cArr;
        int i3;
        if (i == 0) {
            i3 = c0493d.f2315Y0;
            c0492cArr = c0493d.f2318b1;
            i2 = 0;
        } else {
            i3 = c0493d.f2316Z0;
            c0492cArr = c0493d.f2317a1;
            i2 = 2;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            C0492c c0492c = c0492cArr[i4];
            c0492c.m33874a();
            if (arrayList == null || arrayList.contains(c0492c.f2283a)) {
                m33876a(c0493d, c0458d, i, i2, c0492c);
            }
        }
    }
}
