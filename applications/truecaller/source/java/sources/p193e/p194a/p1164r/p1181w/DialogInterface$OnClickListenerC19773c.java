package p193e.p194a.p1164r.p1181w;

import android.content.DialogInterface;
import com.mopub.network.ImpressionData;
import com.truecaller.common.network.country.CountryListDto;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.r.w.c */
/* loaded from: classes16-dex2jar.jar:e/a/r/w/c.class */
public final /* synthetic */ class DialogInterface$OnClickListenerC19773c implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ e f54820a;

    /* renamed from: b */
    public final /* synthetic */ String f54821b;

    public /* synthetic */ DialogInterface$OnClickListenerC19773c(e eVar, String str) {
        this.f54820a = eVar;
        this.f54821b = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        e eVar = this.f54820a;
        String str = this.f54821b;
        j jVar = eVar.i;
        Objects.requireNonNull(jVar);
        l.e(str, "phoneNumber");
        AbstractC19775h abstractC19775h = (AbstractC19775h) jVar.f57683a;
        if (abstractC19775h != null) {
            abstractC19775h.setPhoneNumber(str);
        }
        CountryListDto.C3679a c3679a = jVar.d;
        if (c3679a == null) {
            l.l(ImpressionData.COUNTRY);
            throw null;
        }
        String str2 = c3679a.f10913d;
        if (str2 == null) {
            return;
        }
        l.d(str2, "country.code ?: return");
        CountryListDto.C3679a c3679a2 = jVar.d;
        if (c3679a2 == null) {
            l.l(ImpressionData.COUNTRY);
            throw null;
        }
        String str3 = c3679a2.f10912c;
        if (str3 == null) {
            return;
        }
        l.d(str3, "country.iso ?: return");
        String str4 = jVar.e;
        if (!(str4 == null || str4.length() == 0)) {
            if (!(str.length() == 0)) {
                jVar.j.m12910d(l.a(jVar.e, jVar.f) ? "SIM" : "ManualEntry");
                jVar.j.m12911c(jVar.e);
                jVar.j.m12905i(str2);
                jVar.j.m12904j(str3);
                if (!jVar.p.m12856a(str3)) {
                    jVar.Kj(false);
                    return;
                }
                AbstractC19775h abstractC19775h2 = (AbstractC19775h) jVar.f57683a;
                if (abstractC19775h2 == null) {
                    return;
                }
                abstractC19775h2.m12868K3();
                return;
            }
        }
        AbstractC19775h abstractC19775h3 = (AbstractC19775h) jVar.f57683a;
        if (abstractC19775h3 == null) {
            return;
        }
        abstractC19775h3.m12865Nh();
    }
}
