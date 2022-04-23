package p459j.p460a.p521j0.p522u.p523d.p524e1;

import android.text.Spannable;
import android.text.SpannableString;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.util.Arrays;
import p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14206w4;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.u.d.e1.f */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/f.class */
public final class C12562f implements AbstractC12569j {

    /* renamed from: a */
    public final NumberInfo f28293a;

    /* renamed from: b */
    public final RowInfo.Secondary f28294b;

    /* renamed from: c */
    public final boolean f28295c;

    /* renamed from: d */
    public final boolean f28296d;

    /* renamed from: e */
    public final RowInfo f28297e;

    /* renamed from: f */
    public final String f28298f;

    /* renamed from: g */
    public final boolean f28299g;

    public C12562f(RowInfo rowInfo, String str, boolean z) {
        this.f28297e = rowInfo;
        this.f28298f = str;
        this.f28299g = z;
        RowInfo rowInfo2 = this.f28297e;
        RowInfo.Secondary.Type type = null;
        this.f28293a = rowInfo2 != null ? rowInfo2.m28226g() : null;
        RowInfo rowInfo3 = this.f28297e;
        this.f28294b = rowInfo3 != null ? rowInfo3.m28223i() : null;
        RowInfo.Secondary secondary = this.f28294b;
        boolean z2 = false;
        this.f28295c = (secondary != null ? secondary.type : type) == RowInfo.Secondary.Type.COO_DESC;
        NumberInfo numberInfo = this.f28293a;
        this.f28296d = numberInfo != null ? numberInfo.m28308m0() : z2;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: a */
    public Spannable mo5828a(String str, boolean z) {
        C15149k.m377b(str, LogsGroupRealmObject.DISPLAY_NAME);
        String str2 = null;
        SpannableString spannableString = null;
        if (this.f28294b != null) {
            spannableString = null;
            if (this.f28296d) {
                C15136c0 c0Var = C15136c0.f33133a;
                String a = C14206w4.m2225a((int) R$string.showcard_list_contact_name);
                Object[] objArr = new Object[1];
                RowInfo rowInfo = this.f28297e;
                if (rowInfo != null) {
                    str2 = rowInfo.m28269a();
                }
                objArr[0] = str2;
                String format = String.format(a, Arrays.copyOf(objArr, objArr.length));
                C15149k.m383a((Object) format, "java.lang.String.format(format, *args)");
                spannableString = SpannableString.valueOf(format);
            }
        }
        return spannableString;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r5 != null) goto L_0x0023;
     */
    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.text.SpannableString mo5863a() {
        /*
            r4 = this;
            r0 = r4
            gogolook.callgogolook2.gson.RowInfo r0 = r0.f28297e
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x001e
            r0 = r5
            gogolook.callgogolook2.gson.RowInfo$Primary r0 = r0.m28224h()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x001e
            r0 = r5
            java.lang.String r0 = r0.name
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x001e
            goto L_0x0023
        L_0x001e:
            r0 = r4
            java.lang.String r0 = r0.f28298f
            r5 = r0
        L_0x0023:
            r0 = r5
            if (r0 == 0) goto L_0x002a
            goto L_0x002d
        L_0x002a:
            java.lang.String r0 = ""
            r5 = r0
        L_0x002d:
            android.text.SpannableString r0 = new android.text.SpannableString
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p522u.p523d.p524e1.C12562f.mo5863a():android.text.SpannableString");
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
        return C14167t.m2315a(this.f28295c ? 2131099965 : 2131100120);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: c */
    public int mo5860c() {
        return C14167t.m2315a(2131100116);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: d */
    public boolean mo5827d() {
        return this.f28294b == null || !this.f28296d;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    public String description() {
        RowInfo.Secondary secondary = this.f28294b;
        String str = null;
        if (secondary != null) {
            if (this.f28296d) {
                str = null;
                if (this.f28299g) {
                    str = secondary.name;
                }
            } else {
                str = null;
                if (this.f28295c) {
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
}
