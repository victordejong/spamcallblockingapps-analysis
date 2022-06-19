package com.truecaller.p183ui.dialogs;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.C27020r;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1012a.AbstractC16577g0;
import p193e.p194a.p1011l.p1012a.C16579h0;
import p193e.p194a.p1011l.p1012a.C16605z;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p682e.p683a.AbstractC12839w2;
import q3.a.i0;
import q3.a.j0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018��2\u00020\u0001:\u00011B\u0007¢\u0006\u0004\b/\u00100J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0017¢\u0006\u0004\b\u000f\u0010\u0010R%\u0010\u0017\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R%\u0010\u001a\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0014\u001a\u0004\b\u0019\u0010\u0016R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u00062"}, d2 = {"Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;", "Ln3/b/a/q;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "i", "Ls1/g;", "getHeaderView", "()Landroid/widget/TextView;", "headerView", "h", "getReportView", "reportView", "Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$Type;", "g", "Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$Type;", "type", "Le/a/l/a/z;", "e", "Le/a/l/a/z;", "getPremiumReporter", "()Le/a/l/a/z;", "setPremiumReporter", "(Le/a/l/a/z;)V", "premiumReporter", "Le/a/l/a/g0;", "f", "Le/a/l/a/g0;", "getProductsReporter", "()Le/a/l/a/g0;", "setProductsReporter", "(Le/a/l/a/g0;)V", "productsReporter", "<init>", "()V", "Type", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ui.dialogs.QaPremiumReportDialog */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/dialogs/QaPremiumReportDialog.class */
public final class QaPremiumReportDialog extends AbstractC12839w2 {
    @Inject

    /* renamed from: e */
    public C16605z f15832e;
    @Inject

    /* renamed from: f */
    public AbstractC16577g0 f15833f;

    /* renamed from: g */
    public Type f15834g;

    /* renamed from: h */
    public final g f15835h = C19286f.m13659t(this, C2752R.C2754id.reportView);

    /* renamed from: i */
    public final g f15836i = C19286f.m13659t(this, 2131364137);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$Type;", "", "<init>", "(Ljava/lang/String;I)V", "PREMIUM_REPORT", "PRODUCTS_REPORT", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.ui.dialogs.QaPremiumReportDialog$Type */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/dialogs/QaPremiumReportDialog$Type.class */
    public enum Type {
        PREMIUM_REPORT,
        PRODUCTS_REPORT
    }

    @e(c = "com.truecaller.ui.dialogs.QaPremiumReportDialog$onViewCreated$1", f = "QaPremiumReportDialog.kt", l = {52, 56}, m = "invokeSuspend")
    /* renamed from: com.truecaller.ui.dialogs.QaPremiumReportDialog$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/dialogs/QaPremiumReportDialog$a.class */
    public static final class C4691a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f15837e;

        /* renamed from: f */
        public int f15838f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4691a(d dVar) {
            super(2, dVar);
            QaPremiumReportDialog.this = r5;
        }

        /* renamed from: i */
        public final d<s> m34502i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4691a(dVar);
        }

        /* renamed from: k */
        public final Object m34501k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4691a(dVar).m34500s(s.a);
        }

        /* renamed from: s */
        public final Object m34500s(Object obj) {
            TextView textView;
            Object obj2;
            Object obj3;
            TextView textView2;
            a aVar = a.a;
            int i = this.f15838f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                Type type = QaPremiumReportDialog.this.f15834g;
                if (type == null) {
                    l.l("type");
                    throw null;
                }
                int ordinal = type.ordinal();
                if (ordinal == 0) {
                    TextView textView3 = (TextView) QaPremiumReportDialog.this.f15836i.getValue();
                    l.d(textView3, "headerView");
                    textView3.setText("Premium Report");
                    TextView textView4 = (TextView) QaPremiumReportDialog.this.f15835h.getValue();
                    l.d(textView4, "reportView");
                    C16605z c16605z = QaPremiumReportDialog.this.f15832e;
                    if (c16605z == null) {
                        l.l("premiumReporter");
                        throw null;
                    }
                    this.f15837e = textView4;
                    this.f15838f = 1;
                    obj2 = c16605z.m17189i(this);
                    if (obj2 == aVar) {
                        return aVar;
                    }
                    textView = textView4;
                    textView.setText((CharSequence) obj2);
                } else if (ordinal == 1) {
                    TextView textView5 = (TextView) QaPremiumReportDialog.this.f15836i.getValue();
                    l.d(textView5, "headerView");
                    textView5.setText("Products");
                    TextView textView6 = (TextView) QaPremiumReportDialog.this.f15835h.getValue();
                    l.d(textView6, "reportView");
                    AbstractC16577g0 abstractC16577g0 = QaPremiumReportDialog.this.f15833f;
                    if (abstractC16577g0 == null) {
                        l.l("productsReporter");
                        throw null;
                    }
                    this.f15837e = textView6;
                    this.f15838f = 2;
                    obj3 = ((C16579h0) abstractC16577g0).m17227b(this);
                    if (obj3 == aVar) {
                        return aVar;
                    }
                    textView2 = textView6;
                    textView2.setText((CharSequence) obj3);
                }
            } else if (i == 1) {
                textView = (TextView) this.f15837e;
                C25225a.m3932a3(obj);
                obj2 = obj;
                textView.setText((CharSequence) obj2);
            } else if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                textView2 = (TextView) this.f15837e;
                C25225a.m3932a3(obj);
                obj3 = obj;
                textView2.setText((CharSequence) obj3);
            }
            return s.a;
        }
    }

    /* renamed from: QA */
    public static final QaPremiumReportDialog m34503QA(Type type) {
        l.e(type, "type");
        QaPremiumReportDialog qaPremiumReportDialog = new QaPremiumReportDialog();
        Bundle bundle = new Bundle();
        bundle.putSerializable("extra_type", type);
        qaPremiumReportDialog.setArguments(bundle);
        return qaPremiumReportDialog;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
        if (r4 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            com.truecaller.p183ui.dialogs.QaPremiumReportDialog.super.onCreate(r1)
            r0 = r3
            android.os.Bundle r0 = r0.getArguments()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1c
            r0 = r4
            java.lang.String r1 = "extra_type"
            java.io.Serializable r0 = r0.getSerializable(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1c
            goto L20
        L1c:
            com.truecaller.ui.dialogs.QaPremiumReportDialog$Type r0 = com.truecaller.p183ui.dialogs.QaPremiumReportDialog.Type.PREMIUM_REPORT
            r4 = r0
        L20:
            r0 = r4
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.ui.dialogs.QaPremiumReportDialog.Type"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r3
            r1 = r4
            com.truecaller.ui.dialogs.QaPremiumReportDialog$Type r1 = (com.truecaller.p183ui.dialogs.QaPremiumReportDialog.Type) r1
            r0.f15834g = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.p183ui.dialogs.QaPremiumReportDialog.onCreate(android.os.Bundle):void");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.dialog_qa_premium_report, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        AbstractC26992b0 viewLifecycleOwner = getViewLifecycleOwner();
        l.d(viewLifecycleOwner, "viewLifecycleOwner");
        s1.a.a.a.v0.f.d.w2(C27020r.m994b(viewLifecycleOwner), (f) null, (j0) null, new C4691a(null), 3, (Object) null);
    }
}
