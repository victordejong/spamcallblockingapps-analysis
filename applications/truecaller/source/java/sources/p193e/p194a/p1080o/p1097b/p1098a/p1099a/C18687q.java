package p193e.p194a.p1080o.p1097b.p1098a.p1099a;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18671e;
import p193e.p194a.p1080o.p1101n.C18787a;
import p193e.p194a.p1080o.p1102o.C18798k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.o.b.a.a.q */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/q.class */
public final class C18687q extends AbstractC18669c {

    /* renamed from: a */
    public final C18798k f52531a;

    /* renamed from: b */
    public final C18689r f52532b;

    /* renamed from: c */
    public final AbstractC18686p f52533c;

    /* renamed from: e.a.o.b.a.a.q$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/q$a.class */
    public static final class View$OnClickListenerC18688a implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C18787a f52535b;

        public View$OnClickListenerC18688a(C18787a c18787a) {
            C18687q.this = r4;
            this.f52535b = c18787a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC18686p abstractC18686p = C18687q.this.f52533c;
            if (abstractC18686p != null) {
                abstractC18686p.mo14628p1(this.f52535b);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C18687q(p193e.p194a.p1080o.p1102o.C18798k r4, p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18689r r5, p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18686p r6) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "binding"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            java.lang.String r1 = "theme"
            s1.z.c.l.e(r0, r1)
            r0 = r4
            androidx.constraintlayout.widget.ConstraintLayout r0 = r0.f52815a
            r7 = r0
            r0 = r7
            java.lang.String r1 = "binding.root"
            s1.z.c.l.d(r0, r1)
            r0 = r3
            r1 = r7
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            r0.f52531a = r1
            r0 = r3
            r1 = r5
            r0.f52532b = r1
            r0 = r3
            r1 = r6
            r0.f52533c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18687q.<init>(e.a.o.o.k, e.a.o.b.a.a.r, e.a.o.b.a.a.p):void");
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18669c
    /* renamed from: N4 */
    public void mo14627N4(AbstractC18671e abstractC18671e) {
        l.e(abstractC18671e, "item");
        C18787a c18787a = ((AbstractC18671e.C18673b) abstractC18671e).f52515a;
        C18798k c18798k = this.f52531a;
        c18798k.f52815a.setOnClickListener(new View$OnClickListenerC18688a(c18787a));
        C17891a1.C17902k.m15630a(c18798k, this.f52532b);
        TextView textView = c18798k.f52817c;
        l.d(textView, "messageTextView");
        textView.setText(c18787a.f52776c);
        ImageView imageView = c18798k.f52816b;
        l.d(imageView, "editMessageIcon");
        C19286f.m13689O(imageView);
    }
}
