package p081h.p444n.p445a;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.LruCache;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* renamed from: h.n.a.n */
/* loaded from: classes2-dex2jar.jar:h/n/a/n.class */
public final class C10786n implements AbstractC10766d {

    /* renamed from: a */
    public final LruCache<String, C10788b> f24621a;

    /* renamed from: h.n.a.n$a */
    /* loaded from: classes2-dex2jar.jar:h/n/a/n$a.class */
    public class C10787a extends LruCache<String, C10788b> {
        public C10787a(C10786n nVar, int i) {
            super(i);
        }

        /* renamed from: a */
        public int sizeOf(String str, C10788b bVar) {
            return bVar.f24623b;
        }
    }

    /* renamed from: h.n.a.n$b */
    /* loaded from: classes2-dex2jar.jar:h/n/a/n$b.class */
    public static final class C10788b {

        /* renamed from: a */
        public final Bitmap f24622a;

        /* renamed from: b */
        public final int f24623b;

        public C10788b(Bitmap bitmap, int i) {
            this.f24622a = bitmap;
            this.f24623b = i;
        }
    }

    public C10786n(int i) {
        this.f24621a = new C10787a(this, i);
    }

    public C10786n(@NonNull Context context) {
        this(C10770e0.m10680a(context));
    }

    @Override // p081h.p444n.p445a.AbstractC10766d
    /* renamed from: a */
    public int mo10629a() {
        return this.f24621a.maxSize();
    }

    @Override // p081h.p444n.p445a.AbstractC10766d
    /* renamed from: a */
    public void mo10628a(@NonNull String str, @NonNull Bitmap bitmap) {
        if (str == null || bitmap == null) {
            throw new NullPointerException("key == null || bitmap == null");
        }
        int a = C10770e0.m10676a(bitmap);
        if (a > mo10629a()) {
            this.f24621a.remove(str);
        } else {
            this.f24621a.put(str, new C10788b(bitmap, a));
        }
    }

    @Override // p081h.p444n.p445a.AbstractC10766d
    @Nullable
    public Bitmap get(@NonNull String str) {
        C10788b bVar = this.f24621a.get(str);
        return bVar != null ? bVar.f24622a : null;
    }

    @Override // p081h.p444n.p445a.AbstractC10766d
    public int size() {
        return this.f24621a.size();
    }
}
