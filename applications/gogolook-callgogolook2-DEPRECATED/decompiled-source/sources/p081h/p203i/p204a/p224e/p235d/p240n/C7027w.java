package p081h.p203i.p204a.p224e.p235d.p240n;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.R$string;
import javax.annotation.Nullable;
/* renamed from: h.i.a.e.d.n.w */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/w.class */
public class C7027w {

    /* renamed from: a */
    public final Resources f17164a;

    /* renamed from: b */
    public final String f17165b;

    public C7027w(Context context) {
        C7021t.m21290a(context);
        this.f17164a = context.getResources();
        this.f17165b = this.f17164a.getResourcePackageName(R$string.common_google_play_services_unknown_issue);
    }

    @Nullable
    /* renamed from: a */
    public String m21273a(String str) {
        int identifier = this.f17164a.getIdentifier(str, "string", this.f17165b);
        if (identifier == 0) {
            return null;
        }
        return this.f17164a.getString(identifier);
    }
}
