package pl.droidsonroids.gif;

import android.content.res.AssetManager;
import android.content.res.Resources;
/* renamed from: pl.droidsonroids.gif.f */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/f.class */
public abstract class AbstractC9701f {

    /* renamed from: pl.droidsonroids.gif.f$b */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/f$b.class */
    public static final class C9703b extends AbstractC9701f {

        /* renamed from: a */
        private final AssetManager f40972a;

        /* renamed from: b */
        private final String f40973b;

        public C9703b(AssetManager assetManager, String str) {
            super();
            this.f40972a = assetManager;
            this.f40973b = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // pl.droidsonroids.gif.AbstractC9701f
        /* renamed from: a */
        public GifInfoHandle mo42a() {
            return new GifInfoHandle(this.f40972a.openFd(this.f40973b));
        }
    }

    /* renamed from: pl.droidsonroids.gif.f$c */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/f$c.class */
    public static class C9704c extends AbstractC9701f {

        /* renamed from: a */
        private final Resources f40974a;

        /* renamed from: b */
        private final int f40975b;

        public C9704c(Resources resources, int i) {
            super();
            this.f40974a = resources;
            this.f40975b = i;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // pl.droidsonroids.gif.AbstractC9701f
        /* renamed from: a */
        public GifInfoHandle mo42a() {
            return new GifInfoHandle(this.f40974a.openRawResourceFd(this.f40975b));
        }
    }

    private AbstractC9701f() {
    }

    /* renamed from: a */
    public abstract GifInfoHandle mo42a();
}
