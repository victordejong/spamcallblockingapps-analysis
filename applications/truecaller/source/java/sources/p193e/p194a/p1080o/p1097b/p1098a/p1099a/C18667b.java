package p193e.p194a.p1080o.p1097b.p1098a.p1099a;

import android.content.Context;
import android.text.InputFilter;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.truecaller.contextcall.C3771R;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18671e;
import p193e.p194a.p1080o.p1102o.C18798k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.o.b.a.a.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/b.class */
public final class C18667b extends AbstractC18669c {

    /* renamed from: a */
    public final C18798k f52506a;

    /* renamed from: b */
    public final C18689r f52507b;

    /* renamed from: c */
    public final AbstractC18686p f52508c;

    /* renamed from: e.a.o.b.a.a.b$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/b$a.class */
    public static final class View$OnClickListenerC18668a implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ String f52510b;

        public View$OnClickListenerC18668a(String str) {
            C18667b.this = r4;
            this.f52510b = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC18686p abstractC18686p = C18667b.this.f52508c;
            if (abstractC18686p != null) {
                abstractC18686p.mo14629O(this.f52510b);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C18667b(p193e.p194a.p1080o.p1102o.C18798k r4, p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18689r r5, p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18686p r6) {
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
            r0.f52506a = r1
            r0 = r3
            r1 = r5
            r0.f52507b = r1
            r0 = r3
            r1 = r6
            r0.f52508c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18667b.<init>(e.a.o.o.k, e.a.o.b.a.a.r, e.a.o.b.a.a.p):void");
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18669c
    /* renamed from: N4 */
    public void mo14627N4(AbstractC18671e abstractC18671e) {
        l.e(abstractC18671e, "item");
        String str = ((AbstractC18671e.C18672a) abstractC18671e).f52514a;
        C18798k c18798k = this.f52506a;
        c18798k.f52815a.setOnClickListener(new View$OnClickListenerC18668a(str));
        C17891a1.C17902k.m15630a(c18798k, this.f52507b);
        TextView textView = c18798k.f52817c;
        l.d(textView, "messageTextView");
        Context context = textView.getContext();
        l.d(context, "messageTextView.context");
        textView.setMaxWidth((int) context.getResources().getDimension(C3771R.dimen.context_call_max_custom_message_width));
        textView.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(18)});
        textView.setText(str);
        ImageView imageView = c18798k.f52816b;
        l.d(imageView, "editMessageIcon");
        C19286f.m13684T(imageView);
    }
}
