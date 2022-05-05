package p459j.p460a.p533l;

import android.content.Context;
import android.text.TextUtils;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.CallStats;
import p459j.p460a.p582w0.C14206w4;
/* renamed from: j.a.l.i */
/* loaded from: classes2-dex2jar.jar:j/a/l/i.class */
public class C12942i {

    /* renamed from: a */
    public String f29289a;

    /* renamed from: b */
    public String f29290b;

    /* renamed from: c */
    public int f29291c;

    /* renamed from: d */
    public CallStats.BlockType f29292d;

    /* renamed from: e */
    public CallStats.BlockResult f29293e;

    /* renamed from: f */
    public int f29294f;

    public C12942i(boolean z, int i, String str, int i2, int i3) {
        this.f29293e = CallStats.BlockResult.UNINITIALIZED;
        this.f29294f = 0;
        if (z) {
            this.f29289a = TextUtils.isEmpty(str) ? C14206w4.m2225a(i) : String.format(C14206w4.m2225a(i), str);
        }
        this.f29291c = i2;
        this.f29294f = i3;
        this.f29290b = str;
        MyApplication.m29013o();
        this.f29292d = z ? CallStats.BlockType.BLOCK : CallStats.BlockType.NONE;
    }

    public C12942i(boolean z, String str, int i, int i2) {
        this(z, R$string.blockhistory_reason_number, str, i, i2);
    }

    /* renamed from: a */
    public static int m4967a(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            return context.getResources().getIdentifier(str, "string", context.getPackageName());
        }
        return 0;
    }

    /* renamed from: a */
    public static String m4964a(String str) {
        if (TextUtils.isEmpty(str) || str.startsWith("gogolook.callgogolook2")) {
            return C14206w4.m2225a((int) R$string.blockhistory_reason_new) + C14206w4.m2225a((int) R$string.blockhistory_reason_number);
        }
        return C14206w4.m2225a((int) R$string.blockhistory_reason_new) + str;
    }

    /* renamed from: a */
    public int m4968a() {
        return this.f29294f;
    }

    /* renamed from: a */
    public void m4966a(CallStats.BlockResult blockResult) {
        this.f29293e = blockResult;
    }

    /* renamed from: a */
    public void m4965a(CallStats.BlockType blockType) {
        this.f29292d = blockType;
    }

    /* renamed from: a */
    public void m4963a(boolean z) {
    }

    /* renamed from: b */
    public CallStats.BlockResult m4962b() {
        return this.f29293e;
    }

    /* renamed from: c */
    public CallStats.BlockType m4961c() {
        return this.f29292d;
    }

    /* renamed from: d */
    public boolean m4960d() {
        return this.f29292d != CallStats.BlockType.NONE;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C12942i)) {
            return false;
        }
        C12942i iVar = (C12942i) obj;
        return this.f29292d == iVar.f29292d && TextUtils.equals(this.f29289a, iVar.f29289a) && TextUtils.equals(this.f29290b, iVar.f29290b);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.f29292d.toString());
        if (TextUtils.isEmpty(this.f29289a)) {
            sb.append(", cause = ");
            sb.append(this.f29289a);
        }
        if (TextUtils.isEmpty(this.f29290b)) {
            sb.append(", keyword = ");
            sb.append(this.f29290b);
        }
        sb.append(", type = ");
        sb.append(this.f29292d);
        return sb.toString();
    }
}
