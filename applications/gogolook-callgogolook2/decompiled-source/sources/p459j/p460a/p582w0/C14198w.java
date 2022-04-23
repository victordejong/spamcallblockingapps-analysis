package p459j.p460a.p582w0;

import android.content.Intent;
import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import java.util.Map;
import p626l.C14978j;
import p626l.p632u.C15005e0;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.w */
/* loaded from: classes3-dex2jar.jar:j/a/w0/w.class */
public final class C14198w {

    /* renamed from: a */
    public static final C14198w f31725a = new C14198w();

    /* renamed from: a */
    public static final String m2244a(String str, String str2) {
        C15149k.m377b(str, "action");
        return m2242a(C15005e0.m624a(new C14978j("action", str), new C14978j("from", str2)));
    }

    /* renamed from: a */
    public static /* synthetic */ String m2243a(String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return m2244a(str, str2);
    }

    @VisibleForTesting
    /* renamed from: a */
    public static final String m2242a(Map<String, String> map) {
        C15149k.m377b(map, "paramMap");
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("whoscall");
        builder.authority("goto");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            if (value != null) {
                builder.appendQueryParameter(entry.getKey(), value);
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(builder);
        sb.append('\n');
        System.out.print((Object) sb.toString());
        String builder2 = builder.toString();
        C15149k.m383a((Object) builder2, "builder.toString()");
        return builder2;
    }

    /* renamed from: b */
    public static final String m2241b(String str) {
        return m2243a(str, null, 2, null);
    }

    /* renamed from: b */
    public static final String m2240b(String str, String str2) {
        C15149k.m377b(str, "page");
        return m2242a(C15005e0.m624a(new C14978j("page", str), new C14978j("from", str2)));
    }

    /* renamed from: b */
    public static /* synthetic */ String m2239b(String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return m2240b(str, str2);
    }

    /* renamed from: c */
    public static final String m2238c(String str) {
        return m2239b(str, null, 2, null);
    }

    /* renamed from: d */
    public static final Intent m2237d(String str) {
        C15149k.m377b(str, "typeformId");
        return new Intent("android.intent.action.VIEW", Uri.parse(f31725a.m2245a(str)));
    }

    @VisibleForTesting
    /* renamed from: a */
    public final String m2245a(String str) {
        C15149k.m377b(str, "typeformId");
        return "https://gogolook.typeform.com/to/" + str + "?uid=" + C14217x3.m2120o() + "&app_id=whoscall_android&region=" + C14017g4.m2810n();
    }
}
