package p107g9;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.IOException;
import p011aa.C0062o;
import p107g9.AbstractC2968x;
import p107g9.C2953s;
/* renamed from: g9.b */
/* loaded from: classes2-dex2jar.jar:g9/b.class */
public class C2918b extends AbstractC2968x {

    /* renamed from: a */
    public final Context f9846a;

    /* renamed from: b */
    public final Object f9847b = new Object();

    /* renamed from: c */
    public AssetManager f9848c;

    public C2918b(Context context) {
        this.f9846a = context;
    }

    @Override // p107g9.AbstractC2968x
    /* renamed from: c */
    public boolean mo2800c(C2964v c2964v) {
        Uri uri = c2964v.f9956c;
        boolean z = false;
        if ("file".equals(uri.getScheme())) {
            z = false;
            if (!uri.getPathSegments().isEmpty()) {
                z = false;
                if ("android_asset".equals(uri.getPathSegments().get(0))) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p107g9.AbstractC2968x
    /* renamed from: f */
    public AbstractC2968x.C2969a mo2799f(C2964v c2964v, int i) throws IOException {
        if (this.f9848c == null) {
            synchronized (this.f9847b) {
                if (this.f9848c == null) {
                    this.f9848c = this.f9846a.getAssets();
                }
            }
        }
        return new AbstractC2968x.C2969a(C0062o.m8825f(this.f9848c.open(c2964v.f9956c.toString().substring(22))), C2953s.EnumC2958d.DISK);
    }
}
