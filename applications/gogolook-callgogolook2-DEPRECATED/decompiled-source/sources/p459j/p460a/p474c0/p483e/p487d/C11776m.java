package p459j.p460a.p474c0.p483e.p487d;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import com.gogolook.commonlib.view.IconFontTextView;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p474c0.p483e.p485b.C11742g;
import p459j.p460a.p474c0.p483e.p487d.C11812v;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.e.d.m */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/m.class */
public final class C11776m implements AbstractC12392b<C14666a> {
    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C11812v(viewGroup, R$layout.url_scan_history_item);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        Context a = aVar.m907a();
        if (a != null) {
            C14666a aVar3 = aVar;
            if (!(aVar instanceof C11812v)) {
                aVar3 = null;
            }
            C11812v vVar = (C11812v) aVar3;
            if (vVar != null) {
                AbstractC12391a aVar4 = aVar2;
                if (!(aVar2 instanceof C11811u)) {
                    aVar4 = null;
                }
                C11811u uVar = (C11811u) aVar4;
                if (uVar != null) {
                    C11812v.C11813a c = vVar.m8253c();
                    IconFontTextView b = c.m8248b();
                    if (b != null) {
                        b.setText(2131887249);
                        b.m32255a(2131099767);
                    }
                    TextView c2 = c.m8247c();
                    if (c2 != null) {
                        c2.setText(R$string.srp_checked_url_malicious);
                    }
                    TextView a2 = c.m8249a();
                    if (a2 != null) {
                        a2.setText(String.valueOf(uVar.m8256a().m8397a()));
                    }
                    C11812v.C11813a e = vVar.m8251e();
                    IconFontTextView b2 = e.m8248b();
                    if (b2 != null) {
                        b2.setText(2131887313);
                        b2.m32255a(2131100137);
                    }
                    TextView c3 = e.m8247c();
                    if (c3 != null) {
                        c3.setText(R$string.srp_checked_url_suspicious);
                    }
                    TextView a3 = e.m8249a();
                    if (a3 != null) {
                        a3.setText(String.valueOf(uVar.m8256a().m8393e()));
                    }
                    C11812v.C11813a f = vVar.m8250f();
                    IconFontTextView b3 = f.m8248b();
                    if (b3 != null) {
                        b3.setText(2131887243);
                        b3.m32255a(2131100120);
                    }
                    TextView c4 = f.m8247c();
                    if (c4 != null) {
                        c4.setText(R$string.srp_checked_url_unrated);
                    }
                    TextView a4 = f.m8249a();
                    if (a4 != null) {
                        a4.setText(String.valueOf(uVar.m8256a().m8392f()));
                    }
                    C11812v.C11813a d = vVar.m8252d();
                    IconFontTextView b4 = d.m8248b();
                    if (b4 != null) {
                        b4.setText(2131887291);
                        b4.m32255a(2131100157);
                    }
                    TextView c5 = d.m8247c();
                    if (c5 != null) {
                        c5.setText(R$string.srp_checked_url_safe);
                    }
                    TextView a5 = d.m8249a();
                    if (a5 != null) {
                        a5.setText(String.valueOf(uVar.m8256a().m8395c()));
                    }
                    C11742g a6 = uVar.m8256a();
                    vVar.m8255b().setText(a.getString(R$string.srp_checked_sms, String.valueOf(a6.m8394d()), String.valueOf(a6.m8396b())));
                }
            }
        }
    }
}
