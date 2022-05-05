package p459j.p460a.p503e0.p505p;

import android.app.Activity;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
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
/* renamed from: j.a.e0.p.b */
/* loaded from: classes3-dex2jar.jar:j/a/e0/p/b.class */
public class C12372b {

    /* renamed from: a */
    public Activity f27891a;

    /* renamed from: b */
    public NumberInfo f27892b;

    /* renamed from: c */
    public String f27893c;

    /* renamed from: d */
    public String f27894d;

    /* renamed from: e */
    public String f27895e;

    /* renamed from: f */
    public AbstractC12375a f27896f;

    /* renamed from: j.a.e0.p.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/p/b$a.class */
    public class DialogInterface$OnClickListenerC12373a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f27897a;

        public DialogInterface$OnClickListenerC12373a(EditText editText) {
            this.f27897a = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            String obj = this.f27897a.getText().toString();
            int intValue = Integer.valueOf(C12372b.this.m6290a(R$string.toast_tag_limit_length2)).intValue();
            String l = C14108o4.m2474l(C12372b.this.f27893c);
            if (l != null && !l.equals("") && obj != null && !obj.equals("")) {
                if (obj.length() > intValue) {
                    C14687h.m861a(C12372b.this.f27891a, String.format(C12372b.this.m6290a(R$string.toast_tag_limit), Integer.valueOf(intValue)), 1).m858c();
                    return;
                }
                C13625a.m3810a(C12372b.this.f27891a, l, Long.valueOf(Long.parseLong(C12372b.this.f27894d)), obj);
                long currentTimeMillis = System.currentTimeMillis();
                for (int i2 = 0; i2 < C12372b.this.f27892b.whoscall.notes.size(); i2++) {
                    NumberInfo.Note note = C12372b.this.f27892b.whoscall.notes.get(i2);
                    if (note.createtime == Long.parseLong(C12372b.this.f27894d)) {
                        note.descr = obj;
                        note.date = currentTimeMillis;
                    }
                }
                C11052i.m10328e().m10344a(l);
                if (C12372b.this.f27896f != null) {
                    C12372b.this.f27896f.onComplete();
                }
            }
            dialogInterface.dismiss();
        }
    }

    /* renamed from: j.a.e0.p.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/p/b$b.class */
    public class C12374b implements TextWatcher {

        /* renamed from: a */
        public final /* synthetic */ DialogC14618f f27899a;

        public C12374b(C12372b bVar, DialogC14618f fVar) {
            this.f27899a = fVar;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.f27899a.f32631a.setEnabled(!TextUtils.isEmpty(charSequence));
        }
    }

    public C12372b(Activity activity, NumberInfo numberInfo, String str, String str2, String str3) {
        this.f27891a = activity;
        this.f27892b = numberInfo;
        this.f27893c = str;
        this.f27894d = str2;
        this.f27895e = str3;
    }

    /* renamed from: a */
    public C12372b m6288a(AbstractC12375a aVar) {
        this.f27896f = aVar;
        return this;
    }

    /* renamed from: a */
    public String m6290a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public void m6291a() {
        View inflate = this.f27891a.getLayoutInflater().inflate(R$layout.result_dialog_note, (ViewGroup) null);
        EditText editText = (EditText) inflate.findViewById(R$id.ra_note_edit);
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this.f27891a);
        fVar.m976c(m6290a(R$string.ra_edit_memo));
        fVar.m986a(inflate);
        fVar.m978b(m6290a(R$string.okok), new DialogInterface$OnClickListenerC12373a(editText));
        fVar.m987a(R$string.cancel, (DialogInterface.OnClickListener) null);
        DialogC14618f a = fVar.m989a();
        a.show();
        editText.addTextChangedListener(new C12374b(this, a));
        editText.setText(this.f27895e);
        editText.setSelection(this.f27895e.length());
    }
}
