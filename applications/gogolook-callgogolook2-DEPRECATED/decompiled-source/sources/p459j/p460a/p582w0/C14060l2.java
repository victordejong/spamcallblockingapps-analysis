package p459j.p460a.p582w0;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import java.util.Set;
import org.json.JSONObject;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.l2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/l2.class */
public final class C14060l2 {
    /* renamed from: a */
    public static final String m2708a(Context context, String str, String str2) {
        C15149k.m377b(context, "receiver$0");
        C15149k.m377b(str, "resName");
        int identifier = context.getResources().getIdentifier(str, "string", context.getPackageName());
        if (identifier != 0) {
            str2 = context.getResources().getString(identifier);
        }
        return str2;
    }

    /* renamed from: a */
    public static final JSONObject m2707a(Bundle bundle) {
        C15149k.m377b(bundle, "receiver$0");
        JSONObject jSONObject = new JSONObject();
        Set<String> keySet = bundle.keySet();
        if (keySet != null) {
            for (String str : keySet) {
                jSONObject.put(str, bundle.get(str));
            }
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static final void m2705a(Throwable th) {
        C15149k.m377b(th, "receiver$0");
        C13973d4.m2952a(th);
    }

    /* renamed from: a */
    public static final boolean m2706a(Fragment fragment) {
        C15149k.m377b(fragment, "receiver$0");
        return fragment.getActivity() != null && !fragment.isDetached() && fragment.isAdded();
    }
}
