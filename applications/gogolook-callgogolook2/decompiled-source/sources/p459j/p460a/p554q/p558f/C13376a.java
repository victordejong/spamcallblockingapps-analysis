package p459j.p460a.p554q.p558f;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import gogolook.callgogolook2.debug_tool.SharedPreferencesDevActivity;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.q.f.a */
/* loaded from: classes2-dex2jar.jar:j/a/q/f/a.class */
public final class C13376a {
    static {
        new C13376a();
    }

    /* renamed from: a */
    public static final void m4113a(Context context, String[] strArr) {
        C15149k.m377b(context, "context");
        C15149k.m377b(strArr, "prefInfo");
        Intent intent = new Intent(context, SharedPreferencesDevActivity.class);
        Bundle bundle = new Bundle();
        bundle.putStringArray("key_pref_names", strArr);
        intent.putExtras(bundle);
        C13377b.m4112a(context, intent);
    }
}
