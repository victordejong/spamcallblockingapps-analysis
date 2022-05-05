package p459j.p460a.p521j0.p522u.p523d.p524e1;

import android.text.Spannable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14147s;
import p459j.p460a.p582w0.C14206w4;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.u.d.e1.u */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/u.class */
public final class C12600u extends C12591r {

    /* renamed from: h */
    public final boolean f28406h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12600u(RowInfo rowInfo, String str, boolean z, boolean z2) {
        super(rowInfo, str, z);
        C15149k.m377b(rowInfo, "rowInfo");
        C15149k.m377b(str, "number");
        this.f28406h = z2;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.C12591r, p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: a */
    public Spannable mo5828a(String str, boolean z) {
        C15149k.m377b(str, LogsGroupRealmObject.DISPLAY_NAME);
        return null;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.C12591r, p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: d */
    public boolean mo5827d() {
        return this.f28406h;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.C12591r, p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    public String description() {
        String str;
        if (m5854j()) {
            str = C14206w4.m2225a((int) R$string.ndp_info_spoof_hint);
        } else if (m5855i()) {
            str = C14206w4.m2225a(C14093n4.m2573c(m5858f()));
        } else {
            str = null;
            if (this.f28406h) {
                RowInfo.Secondary h = m5856h();
                String str2 = h != null ? h.name : null;
                if (str2 == null || str2.length() == 0) {
                    str = null;
                } else {
                    RowInfo.Secondary h2 = m5856h();
                    if ((h2 != null ? h2.type : null) != RowInfo.Secondary.Type.NUMBER || !m5855i()) {
                        RowInfo.Secondary h3 = m5856h();
                        str = null;
                        if (h3 != null) {
                            str = h3.name;
                        }
                    } else {
                        str = C14147s.m2358a(m5856h().name).toString();
                    }
                }
            }
        }
        return str;
    }
}
