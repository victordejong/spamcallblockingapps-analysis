package p459j.p460a.p471b1.p472a;

import android.content.Context;
import android.content.SharedPreferences;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b1.a.c */
/* loaded from: classes3-dex2jar.jar:j/a/b1/a/c.class */
public final class C11509c {

    /* renamed from: a */
    public final Context f25700a;

    /* renamed from: b */
    public final String f25701b;

    /* renamed from: c */
    public final int f25702c;

    public C11509c(Context context, String str, int i) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "name");
        this.f25700a = context;
        this.f25701b = str;
        this.f25702c = i;
    }

    /* renamed from: a */
    public final SharedPreferences m9446a() {
        SharedPreferences sharedPreferences = this.f25700a.getSharedPreferences(this.f25701b, this.f25702c);
        C15149k.m383a((Object) sharedPreferences, "context.getSharedPreferences(name, mode)");
        return sharedPreferences;
    }
}
