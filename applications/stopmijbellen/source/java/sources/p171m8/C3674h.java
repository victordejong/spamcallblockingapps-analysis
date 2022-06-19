package p171m8;

import android.widget.EditText;
import android.widget.Spinner;
import androidx.appcompat.widget.SwitchCompat;
import ba.C0748b;
import com.mglab.scm.visual.BWLItem;
import com.mglab.scm.visual.C2107c;
import java.util.Objects;
import p007a6.C0033h;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2779g;
import p117h8.C3026c;
import p117h8.C3027d;
import p117h8.C3043q;
import p117h8.C3050w;
import p117h8.C3051x;
import p149k8.C3382a;
import p149k8.C3385b0;
import p170m7.AbstractC3656d;
import p233s6.C4313h;
import p233s6.C4316k;
import p233s6.C4317l;
import p278w8.C4782k;
import p278w8.C4790q;
import p278w8.C4791r;
import p289x8.C4933b;
/* renamed from: m8.h */
/* loaded from: classes2-dex2jar.jar:m8/h.class */
public final /* synthetic */ class C3674h implements AbstractC3656d, View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: a */
    public final /* synthetic */ Object f12025a;

    /* renamed from: b */
    public final /* synthetic */ Object f12026b;

    public /* synthetic */ C3674h(Object obj, Object obj2) {
        this.f12025a = obj;
        this.f12026b = obj2;
    }

    @Override // p170m7.AbstractC3656d
    /* renamed from: a */
    public void mo99a(Exception exc, Object obj) {
        C3675i c3675i = (C3675i) this.f12025a;
        String str = (String) this.f12026b;
        C4316k c4316k = (C4316k) obj;
        Objects.requireNonNull(c3675i);
        if (c4316k == null) {
            c3675i.f12039l.setVisibility(0);
            c3675i.f12038k.setVisibility(8);
            c3675i.f12042o.setVisibility(8);
            return;
        }
        try {
            c4316k.toString();
            C2779g.m3111d(str, c4316k.m1108f("body").mo1104d());
            C4316k m1110c = new C4317l().m1107a(C2779g.m3111d(str, c4316k.m1108f("body").mo1104d())).m1110c();
            m1110c.toString();
            C4316k m1110c2 = m1110c.m1108f("stat").m1110c();
            m1110c2.toString();
            C4313h m1111b = m1110c.m1108f("feedbacks").m1111b();
            m1111b.toString();
            for (int i = 0; i < m1111b.size(); i++) {
                c3675i.m1899a(m1111b.m1112e(i).m1110c());
            }
            c3675i.f12031d = m1110c2.m1108f("location").mo1104d();
            c3675i.m1894f();
            c3675i.f12038k.setVisibility(8);
            c3675i.f12037j.setVisibility(0);
            c3675i.f12042o.setVisibility(0);
            if (!c3675i.f12043p) {
                return;
            }
            c3675i.m1895e();
        } catch (Exception e) {
            e.printStackTrace();
            e.toString();
            c3675i.f12039l.setVisibility(0);
            c3675i.f12038k.setVisibility(8);
            c3675i.f12042o.setVisibility(8);
        }
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        C2107c c2107c = (C2107c) this.f12025a;
        Objects.requireNonNull(c2107c);
        int m3960c = ((BWLItem) this.f12026b).m3960c();
        String obj = ((EditText) C2107c.f7645k.findViewById(2131296841)).getText().toString();
        String obj2 = ((EditText) C2107c.f7645k.findViewById(2131296744)).getText().toString();
        int i = c2107c.f7649d;
        int i2 = -1;
        if (i == 1) {
            try {
                C4790q c4790q = new C4790q(C3050w.class);
                C4782k<String> m239a = C3051x.f10381h.m239a(obj);
                C4782k<String> m239a2 = C3051x.f10380g.m239a(obj2);
                C4933b<Integer> c4933b = C3051x.f10383j;
                if (!c2107c.f7650e) {
                    i2 = 0;
                }
                new C4791r(c4790q.m460a(m239a, m239a2, c4933b.m239a(Integer.valueOf(i2)), C3051x.f10382i.m239a(C3043q.m2705q(obj2))), C3027d.f10155f.m239a(Integer.valueOf(m3960c))).mo458i();
            } catch (Exception e) {
                e.printStackTrace();
            }
            C0033h.m8884m(1, C0748b.m7409b());
        } else if (i == 2) {
            try {
                C4790q c4790q2 = new C4790q(C3026c.class);
                C4782k<String> m239a3 = C3027d.f10157h.m239a(obj);
                C4782k<String> m239a4 = C3027d.f10156g.m239a(obj2);
                C4933b<Integer> c4933b2 = C3027d.f10159j;
                if (!c2107c.f7650e) {
                    i2 = ((Spinner) C2107c.f7645k.findViewById(2131296453)).getSelectedItemPosition();
                }
                new C4791r(c4790q2.m460a(m239a3, m239a4, c4933b2.m239a(Integer.valueOf(i2)), C3027d.f10158i.m239a(C3043q.m2705q(obj2))), C3027d.f10155f.m239a(Integer.valueOf(m3960c))).mo458i();
                SwitchCompat switchCompat = (SwitchCompat) C2107c.f7645k.findViewById(2131297029);
                if (switchCompat.isChecked() && switchCompat.isEnabled() && !c2107c.f7650e) {
                    C0748b.m7409b().m7404g(new C3385b0(obj2, true));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            C0748b.m7409b().m7404g(new C3382a(1));
        }
        C2779g.m3122K(c2107c.f7646a, c2107c.f7647b, 2131820740);
        C2779g.m3129D(c2107c.f7646a);
    }
}
