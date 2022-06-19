package p193e.p194a.p195a.p237h1.p239o;

import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.huawei.hms.opendevice.AbstractC2405c;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p195a.p237h1.C6323d;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Le/a/a/h1/o/g;", "Landroid/widget/FrameLayout;", "", "count", "Ls1/s;", "setBadgeCount", "(I)V", "Lcom/google/android/material/progressindicator/CircularProgressIndicator;", C22021b.f61237c, "Lcom/google/android/material/progressindicator/CircularProgressIndicator;", "progressIndicator", "Le/a/a/h1/d;", AbstractC2405c.f7629a, "Le/a/a/h1/d;", "progressAnimator", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "badgeView", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.h1.o.g */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/g.class */
public final class C6366g extends FrameLayout {

    /* renamed from: a */
    public final TextView f21221a;

    /* renamed from: b */
    public final CircularProgressIndicator f21222b;

    /* renamed from: c */
    public final C6323d f21223c;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6366g(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            r5 = this;
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r8 = r0
        L9:
            r0 = r6
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r1 = r6
            r2 = 0
            r3 = r8
            r0.<init>(r1, r2, r3)
            r0 = r6
            r1 = 2131559698(0x7f0d0512, float:1.8744747E38)
            r2 = r5
            android.view.View r0 = android.widget.FrameLayout.inflate(r0, r1, r2)
            r0 = r5
            r1 = 2131362274(0x7f0a01e2, float:1.8344324E38)
            android.view.View r0 = r0.findViewById(r1)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "findViewById(R.id.badgeView)"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r6
            android.widget.TextView r1 = (android.widget.TextView) r1
            r0.f21221a = r1
            r0 = r5
            r1 = 2131365280(0x7f0a0da0, float:1.835042E38)
            android.view.View r0 = r0.findViewById(r1)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "findViewById(R.id.progressIndicator)"
            s1.z.c.l.d(r0, r1)
            r0 = r6
            com.google.android.material.progressindicator.CircularProgressIndicator r0 = (com.google.android.material.progressindicator.CircularProgressIndicator) r0
            r6 = r0
            r0 = r5
            r1 = r6
            r0.f21222b = r1
            r0 = r5
            e.a.a.h1.d r1 = new e.a.a.h1.d
            r2 = r1
            r3 = r6
            r2.<init>(r3)
            r0.f21223c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p237h1.p239o.C6366g.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    public final void setBadgeCount(int i) {
        this.f21221a.setText(String.valueOf(i));
        this.f21221a.setVisibility(i > 0 ? 0 : 8);
    }
}
