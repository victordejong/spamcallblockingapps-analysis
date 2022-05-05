package p459j.p460a.p521j0.p522u.p523d.p524e1;

import android.text.Spannable;
import android.text.SpannableString;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14147s;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.u.d.e1.r */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/r.class */
public class C12591r implements AbstractC12569j {

    /* renamed from: a */
    public final RowInfo.Secondary f28372a;

    /* renamed from: b */
    public final boolean f28373b;

    /* renamed from: c */
    public final boolean f28374c;

    /* renamed from: d */
    public final boolean f28375d;

    /* renamed from: e */
    public final RowInfo f28376e;

    /* renamed from: f */
    public final String f28377f;

    /* renamed from: g */
    public final boolean f28378g;

    public C12591r(RowInfo rowInfo, String str, boolean z) {
        C15149k.m377b(rowInfo, "rowInfo");
        C15149k.m377b(str, "number");
        this.f28376e = rowInfo;
        this.f28377f = str;
        this.f28378g = z;
        this.f28376e.m28226g();
        this.f28372a = this.f28376e.m28223i();
        RowInfo.Primary h = this.f28376e.m28224h();
        RowInfo.Secondary.Type type = null;
        boolean z2 = true;
        this.f28373b = (h != null ? h.type : null) == RowInfo.Primary.Type.SPOOF;
        RowInfo.Primary h2 = this.f28376e.m28224h();
        this.f28374c = h2 != null ? h2.isRed : false;
        RowInfo.Secondary i = this.f28376e.m28223i();
        if ((i != null ? i.type : type) != RowInfo.Secondary.Type.COO_DESC) {
            z2 = false;
        }
        this.f28375d = z2;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: a */
    public Spannable mo5828a(String str, boolean z) {
        String str2;
        C15149k.m377b(str, LogsGroupRealmObject.DISPLAY_NAME);
        RowInfo.Secondary secondary = this.f28372a;
        return (secondary == null || (str2 = secondary.name) == null) ? null : SpannableString.valueOf(str2);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: a */
    public SpannableString mo5863a() {
        RowInfo.Primary h = this.f28376e.m28224h();
        return C14147s.m2358a(h != null ? (h.type != RowInfo.Primary.Type.NUMBER || !this.f28378g) ? h.name : this.f28376e.m28238c() : null);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: a */
    public boolean mo5862a(RowInfo rowInfo, boolean z) {
        C15149k.m377b(rowInfo, "rowInfo");
        return AbstractC12569j.C12570a.m5889a(this, rowInfo, z);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: b */
    public int mo5861b() {
        int i;
        if (this.f28373b || this.f28378g) {
            RowInfo rowInfo = this.f28376e;
            i = CallUtils.m26581a(rowInfo, !C14217x3.m2160b(rowInfo.m28269a()), this.f28378g);
        } else {
            i = this.f28375d ? C14167t.m2315a(2131099965) : C14167t.m2315a(2131100120);
        }
        return i;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: c */
    public int mo5860c() {
        return C14167t.m2315a(this.f28374c ? 2131099810 : 2131100116);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: d */
    public boolean mo5827d() {
        return false;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    public String description() {
        String str;
        if (this.f28373b) {
            str = C14206w4.m2225a((int) R$string.ndp_info_spoof_hint);
        } else if (this.f28378g) {
            str = C14206w4.m2225a(C14093n4.m2573c(this.f28377f));
        } else {
            str = null;
            if (this.f28375d) {
                RowInfo.Secondary secondary = this.f28372a;
                str = null;
                if (secondary != null) {
                    str = secondary.name;
                }
            }
        }
        return str;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: e */
    public int mo5859e() {
        return 1;
    }

    /* renamed from: f */
    public final String m5858f() {
        return this.f28377f;
    }

    /* renamed from: g */
    public final RowInfo m5857g() {
        return this.f28376e;
    }

    /* renamed from: h */
    public final RowInfo.Secondary m5856h() {
        return this.f28372a;
    }

    /* renamed from: i */
    public final boolean m5855i() {
        return this.f28378g;
    }

    /* renamed from: j */
    public final boolean m5854j() {
        return this.f28373b;
    }
}
