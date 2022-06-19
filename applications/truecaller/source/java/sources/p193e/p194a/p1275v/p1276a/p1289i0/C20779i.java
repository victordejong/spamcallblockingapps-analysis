package p193e.p194a.p1275v.p1276a.p1289i0;

import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.details_view.p162ui.numbers.SimData;
import kotlin.Metadata;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1275v.p1304k.C20911r;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001J%\u0010\b\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Le/a/v/a/i0/i;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/widget/ImageView;", "Le/a/v/a/i0/a;", "number", "Lcom/truecaller/details_view/ui/numbers/SimData;", "simData", "Ls1/s;", "f1", "(Landroid/widget/ImageView;Le/a/v/a/i0/a;Lcom/truecaller/details_view/ui/numbers/SimData;)V", "Le/a/v/k/r;", "t", "Le/a/v/k/r;", "binding", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.i0.i */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/i0/i.class */
public final class C20779i extends ConstraintLayout {

    /* renamed from: t */
    public final C20911r f58429t;

    /* renamed from: e.a.v.a.i0.i$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/i0/i$a.class */
    public static final class View$OnClickListenerC20780a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C20770a f58430a;

        /* renamed from: b */
        public final /* synthetic */ SimData f58431b;

        public View$OnClickListenerC20780a(C20770a c20770a, SimData simData) {
            this.f58430a = c20770a;
            this.f58431b = simData;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f58430a.f58409f.d(Integer.valueOf(this.f58431b.getSlot()));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20779i(android.content.Context r15, android.util.AttributeSet r16, int r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1289i0.C20779i.<init>(android.content.Context, android.util.AttributeSet, int, int, int):void");
    }

    /* renamed from: f1 */
    public final void m10706f1(ImageView imageView, C20770a c20770a, SimData simData) {
        if (simData == null) {
            C19286f.m13689O(imageView);
            return;
        }
        C19286f.m13684T(imageView);
        imageView.setImageDrawable(C25440a.m3540a(imageView.getContext(), simData.getIcon()));
        imageView.setOnClickListener(new View$OnClickListenerC20780a(c20770a, simData));
    }
}
