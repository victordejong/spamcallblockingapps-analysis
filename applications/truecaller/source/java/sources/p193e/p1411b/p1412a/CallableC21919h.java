package p193e.p1411b.p1412a;

import android.content.Context;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.zip.ZipInputStream;
/* renamed from: e.b.a.h */
/* loaded from: classes-dex2jar.jar:e/b/a/h.class */
public final class CallableC21919h implements Callable<C21942p<C21913e>> {

    /* renamed from: a */
    public final /* synthetic */ Context f60845a;

    /* renamed from: b */
    public final /* synthetic */ String f60846b;

    public CallableC21919h(Context context, String str) {
        this.f60845a = context;
        this.f60846b = str;
    }

    @Override // java.util.concurrent.Callable
    public C21942p<C21913e> call() throws Exception {
        C21942p<C21913e> c21942p;
        Context context = this.f60845a;
        String str = this.f60846b;
        try {
            String str2 = "asset_" + str;
            c21942p = str.endsWith(".zip") ? C21914f.m8899e(new ZipInputStream(context.getAssets().open(str)), str2) : C21914f.m8902b(context.getAssets().open(str), str2);
        } catch (IOException e) {
            c21942p = new C21942p<>(e);
        }
        return c21942p;
    }
}
