package p193e.p194a.p1365y.p1381b;

import android.content.Context;
import com.truecaller.flashsdk.assist.FlashBitmapConverter;
import javax.inject.Provider;
/* renamed from: e.a.y.b.o */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/o.class */
public final class C21618o implements Object<C21615n> {

    /* renamed from: a */
    public final Provider<Context> f60280a;

    /* renamed from: b */
    public final Provider<FlashBitmapConverter> f60281b;

    /* renamed from: c */
    public final Provider<AbstractC21607h> f60282c;

    public C21618o(Provider<Context> provider, Provider<FlashBitmapConverter> provider2, Provider<AbstractC21607h> provider3) {
        this.f60280a = provider;
        this.f60281b = provider2;
        this.f60282c = provider3;
    }

    public Object get() {
        return new C21615n((Context) this.f60280a.get(), (FlashBitmapConverter) this.f60281b.get(), (AbstractC21607h) this.f60282c.get());
    }
}
