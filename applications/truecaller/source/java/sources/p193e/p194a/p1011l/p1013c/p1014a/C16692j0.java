package p193e.p194a.p1011l.p1013c.p1014a;

import android.view.View;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.premium.GoldCallerIdPreviewView;
import p1727n3.p1868v.AbstractC26992b0;
import p193e.p194a.p1011l.p1025p2.C17135n;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.j0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/j0.class */
public final class C16692j0 extends AbstractC16668g implements AbstractC16683i1 {

    /* renamed from: d */
    public final GoldCallerIdPreviewView f46835d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16692j0(View view, AbstractC26992b0 abstractC26992b0) {
        super(view, null);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC26992b0, "lifecycleOwner");
        View findViewById = this.itemView.findViewById(C2752R.C2754id.callerIdPreview);
        l.d(findViewById, "itemView.findViewById(R.id.callerIdPreview)");
        GoldCallerIdPreviewView goldCallerIdPreviewView = (GoldCallerIdPreviewView) findViewById;
        this.f46835d = goldCallerIdPreviewView;
        goldCallerIdPreviewView.getShineView().setLifecycleOwner(abstractC26992b0);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16683i1
    /* renamed from: X */
    public void mo17091X(C17135n c17135n) {
        l.e(c17135n, "previewData");
        this.f46835d.m34826f1(c17135n);
    }
}
