package p459j.p460a.p503e0.p505p;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p503e0.p505p.p506c.AbstractC12375a;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
/* renamed from: j.a.e0.p.a */
/* loaded from: classes3-dex2jar.jar:j/a/e0/p/a.class */
public class C12369a {

    /* renamed from: a */
    public Activity f27884a;

    /* renamed from: b */
    public NumberInfo f27885b;

    /* renamed from: c */
    public String f27886c;

    /* renamed from: d */
    public AbstractC12375a f27887d;

    /* renamed from: j.a.e0.p.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/p/a$a.class */
    public class DialogInterface$OnClickListenerC12370a implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC12370a(C12369a aVar) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: j.a.e0.p.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/p/a$b.class */
    public class View$OnClickListenerC12371b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f27888a;

        /* renamed from: b */
        public final /* synthetic */ DialogC14618f f27889b;

        public View$OnClickListenerC12371b(EditText editText, DialogC14618f fVar) {
            this.f27888a = editText;
            this.f27889b = fVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String l = C14108o4.m2474l(C12369a.this.f27886c);
            if (l != null && !l.equals("")) {
                String obj = this.f27888a.getText().toString();
                int intValue = Integer.valueOf(C12369a.this.m6297a(R$string.toast_tag_limit_length2)).intValue();
                if (obj.length() > intValue) {
                    C14687h.m861a(C12369a.this.f27884a, String.format(C12369a.this.m6297a(R$string.toast_tag_limit), Integer.valueOf(intValue)), 1).m858c();
                    return;
                }
                this.f27888a.setText("");
                if (obj != null && !obj.equals("")) {
                    long longValue = C13625a.m3787d(C12369a.this.f27884a, l, obj).longValue();
                    C12369a.this.f27885b.m28349b(obj, longValue, longValue);
                    C11052i.m10328e().m10344a(l);
                    if (C12369a.this.f27887d != null) {
                        C12369a.this.f27887d.onComplete();
                    }
                }
            }
            this.f27889b.dismiss();
        }
    }

    public C12369a(Activity activity, NumberInfo numberInfo, String str) {
        this.f27884a = activity;
        this.f27885b = numberInfo;
        this.f27886c = str;
    }

    /* renamed from: a */
    public C12369a m6295a(AbstractC12375a aVar) {
        this.f27887d = aVar;
        return this;
    }

    /* renamed from: a */
    public String m6297a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public void m6298a() {
        View inflate = this.f27884a.getLayoutInflater().inflate(R$layout.result_dialog_note, (ViewGroup) null);
        EditText editText = (EditText) inflate.findViewById(R$id.ra_note_edit);
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this.f27884a);
        fVar.m976c(m6297a(R$string.ra_add_memo));
        fVar.m986a(inflate);
        fVar.m978b(m6297a(R$string.okok), (DialogInterface.OnClickListener) null);
        fVar.m984a(m6297a(R$string.cancel), new DialogInterface$OnClickListenerC12370a(this));
        DialogC14618f a = fVar.m989a();
        a.show();
        a.f32631a.setOnClickListener(new View$OnClickListenerC12371b(editText, a));
    }
}
