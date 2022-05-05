package p459j.p460a.p463b0;

import android.content.Context;
import android.content.DialogInterface;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p533l.C12944k;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p613z0.DialogC14636k;
/* renamed from: j.a.b0.g */
/* loaded from: classes2-dex2jar.jar:j/a/b0/g.class */
public class DialogC11125g extends DialogC14636k {

    /* renamed from: u */
    public AbstractC11127b f24996u;

    /* renamed from: j.a.b0.g$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/g$a.class */
    public class DialogInterface$OnClickListenerC11126a implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC11126a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            DialogC11125g gVar = DialogC11125g.this;
            AbstractC11127b bVar = gVar.f24996u;
            if (bVar != null) {
                bVar.mo5752a(C12944k.f29299b[gVar.m939b()]);
            }
        }
    }

    /* renamed from: j.a.b0.g$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/g$b.class */
    public interface AbstractC11127b {
        /* renamed from: a */
        void mo5752a(String str);
    }

    public DialogC11125g(Context context) {
        super(context);
        m940a(C12944k.f29299b);
        m942a(C14206w4.m2225a((int) R$string.intro_ddd_content));
        m945a(R$string.intro_ddd_button, new DialogInterface$OnClickListenerC11126a());
    }

    /* renamed from: a */
    public void m10247a(AbstractC11127b bVar) {
        this.f24996u = bVar;
    }
}
