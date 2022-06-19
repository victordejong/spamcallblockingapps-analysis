package p193e.p194a.p1080o.p1097b.p1098a.p1099a;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.contextcall.C3771R;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.p1102o.C18798k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.o.b.a.a.s */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/s.class */
public final class C18690s extends AbstractC18669c {

    /* renamed from: a */
    public final C18798k f52542a;

    /* renamed from: b */
    public final C18689r f52543b;

    /* renamed from: c */
    public final AbstractC18686p f52544c;

    /* renamed from: e.a.o.b.a.a.s$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/s$a.class */
    public static final class View$OnClickListenerC18691a implements View.OnClickListener {
        public View$OnClickListenerC18691a() {
            C18690s.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC18686p abstractC18686p = C18690s.this.f52544c;
            if (abstractC18686p != null) {
                abstractC18686p.mo14629O(null);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C18690s(p193e.p194a.p1080o.p1102o.C18798k r4, p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18689r r5, p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18686p r6) {
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
            r0.f52542a = r1
            r0 = r3
            r1 = r5
            r0.f52543b = r1
            r0 = r3
            r1 = r6
            r0.f52544c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18690s.<init>(e.a.o.o.k, e.a.o.b.a.a.r, e.a.o.b.a.a.p):void");
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18669c
    /* renamed from: N4 */
    public void mo14627N4(AbstractC18671e abstractC18671e) {
        l.e(abstractC18671e, "item");
        C18798k c18798k = this.f52542a;
        c18798k.f52815a.setOnClickListener(new View$OnClickListenerC18691a());
        C17891a1.C17902k.m15630a(c18798k, this.f52543b);
        TextView textView = c18798k.f52817c;
        l.d(textView, "messageTextView");
        ConstraintLayout constraintLayout = c18798k.f52815a;
        l.d(constraintLayout, "root");
        textView.setText(constraintLayout.getContext().getString(C3771R.string.context_call_button_type_reason));
        ImageView imageView = c18798k.f52816b;
        l.d(imageView, "editMessageIcon");
        C19286f.m13689O(imageView);
    }
}
