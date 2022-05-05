package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.WindowInsets;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.Insets;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/core/view/WindowInsetsCompat.class */
public class WindowInsetsCompat {
    @RestrictTo

    /* renamed from: b */
    public static final WindowInsetsCompat f3306b = new Builder().m19084a().m19100a().m19099b().m19098c();

    /* renamed from: a */
    private final Impl f3307a;

    /* loaded from: classes-dex2jar.jar:androidx/core/view/WindowInsetsCompat$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private final BuilderImpl f3308a;

        public Builder() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                this.f3308a = new BuilderImpl29();
            } else if (i >= 20) {
                this.f3308a = new BuilderImpl20();
            } else {
                this.f3308a = new BuilderImpl();
            }
        }

        public Builder(@NonNull WindowInsetsCompat windowInsetsCompat) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                this.f3308a = new BuilderImpl29(windowInsetsCompat);
            } else if (i >= 20) {
                this.f3308a = new BuilderImpl20(windowInsetsCompat);
            } else {
                this.f3308a = new BuilderImpl(windowInsetsCompat);
            }
        }

        @NonNull
        /* renamed from: a */
        public WindowInsetsCompat m19084a() {
            return this.f3308a.mo19080a();
        }

        @NonNull
        /* renamed from: b */
        public Builder m19083b(@NonNull Insets insets) {
            this.f3308a.mo19079b(insets);
            return this;
        }

        @NonNull
        /* renamed from: c */
        public Builder m19082c(@NonNull Insets insets) {
            this.f3308a.mo19078c(insets);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/WindowInsetsCompat$BuilderImpl.class */
    public static class BuilderImpl {

        /* renamed from: a */
        private final WindowInsetsCompat f3309a;

        BuilderImpl() {
            this(new WindowInsetsCompat((WindowInsetsCompat) null));
        }

        BuilderImpl(@NonNull WindowInsetsCompat windowInsetsCompat) {
            this.f3309a = windowInsetsCompat;
        }

        @NonNull
        /* renamed from: a */
        WindowInsetsCompat mo19080a() {
            return this.f3309a;
        }

        /* renamed from: b */
        void mo19079b(@NonNull Insets insets) {
        }

        /* renamed from: c */
        void mo19078c(@NonNull Insets insets) {
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/view/WindowInsetsCompat$BuilderImpl20.class */
    private static class BuilderImpl20 extends BuilderImpl {

        /* renamed from: c */
        private static Field f3310c;

        /* renamed from: d */
        private static boolean f3311d = false;

        /* renamed from: e */
        private static Constructor<WindowInsets> f3312e;

        /* renamed from: f */
        private static boolean f3313f = false;

        /* renamed from: b */
        private WindowInsets f3314b;

        BuilderImpl20() {
            this.f3314b = m19081d();
        }

        BuilderImpl20(@NonNull WindowInsetsCompat windowInsetsCompat) {
            this.f3314b = windowInsetsCompat.m19086o();
        }

        @Nullable
        /* renamed from: d */
        private static WindowInsets m19081d() {
            if (!f3311d) {
                try {
                    f3310c = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e);
                }
                f3311d = true;
            }
            Field field = f3310c;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e2) {
                    Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e2);
                }
            }
            if (!f3313f) {
                try {
                    f3312e = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e3) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e3);
                }
                f3313f = true;
            }
            Constructor<WindowInsets> constructor = f3312e;
            if (constructor == null) {
                return null;
            }
            try {
                return constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException e4) {
                Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e4);
                return null;
            }
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        @NonNull
        /* renamed from: a */
        WindowInsetsCompat mo19080a() {
            return WindowInsetsCompat.m19085p(this.f3314b);
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        /* renamed from: c */
        void mo19078c(@NonNull Insets insets) {
            WindowInsets windowInsets = this.f3314b;
            if (windowInsets != null) {
                this.f3314b = windowInsets.replaceSystemWindowInsets(insets.f3016a, insets.f3017b, insets.f3018c, insets.f3019d);
            }
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/view/WindowInsetsCompat$BuilderImpl29.class */
    private static class BuilderImpl29 extends BuilderImpl {

        /* renamed from: b */
        final WindowInsets.Builder f3315b;

        BuilderImpl29() {
            this.f3315b = new WindowInsets.Builder();
        }

        BuilderImpl29(@NonNull WindowInsetsCompat windowInsetsCompat) {
            WindowInsets o = windowInsetsCompat.m19086o();
            this.f3315b = o != null ? new WindowInsets.Builder(o) : new WindowInsets.Builder();
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        @NonNull
        /* renamed from: a */
        WindowInsetsCompat mo19080a() {
            return WindowInsetsCompat.m19085p(this.f3315b.build());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        /* renamed from: b */
        void mo19079b(@NonNull Insets insets) {
            this.f3315b.setStableInsets(insets.m19581c());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        /* renamed from: c */
        void mo19078c(@NonNull Insets insets) {
            this.f3315b.setSystemWindowInsets(insets.m19581c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/WindowInsetsCompat$Impl.class */
    public static class Impl {

        /* renamed from: a */
        final WindowInsetsCompat f3316a;

        Impl(@NonNull WindowInsetsCompat windowInsetsCompat) {
            this.f3316a = windowInsetsCompat;
        }

        @NonNull
        /* renamed from: a */
        WindowInsetsCompat mo19071a() {
            return this.f3316a;
        }

        @NonNull
        /* renamed from: b */
        WindowInsetsCompat mo19075b() {
            return this.f3316a;
        }

        @NonNull
        /* renamed from: c */
        WindowInsetsCompat mo19074c() {
            return this.f3316a;
        }

        @Nullable
        /* renamed from: d */
        DisplayCutoutCompat mo19070d() {
            return null;
        }

        @NonNull
        /* renamed from: e */
        Insets mo19069e() {
            return mo19077g();
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Impl)) {
                return false;
            }
            Impl impl = (Impl) obj;
            if (mo19076j() != impl.mo19076j() || mo19072i() != impl.mo19072i() || !ObjectsCompat.m19346a(mo19077g(), impl.mo19077g()) || !ObjectsCompat.m19346a(mo19073f(), impl.mo19073f()) || !ObjectsCompat.m19346a(mo19070d(), impl.mo19070d())) {
                z = false;
            }
            return z;
        }

        @NonNull
        /* renamed from: f */
        Insets mo19073f() {
            return Insets.f3015e;
        }

        @NonNull
        /* renamed from: g */
        Insets mo19077g() {
            return Insets.f3015e;
        }

        @NonNull
        /* renamed from: h */
        WindowInsetsCompat mo19068h(int i, int i2, int i3, int i4) {
            return WindowInsetsCompat.f3306b;
        }

        public int hashCode() {
            return ObjectsCompat.m19345b(Boolean.valueOf(mo19076j()), Boolean.valueOf(mo19072i()), mo19077g(), mo19073f(), mo19070d());
        }

        /* renamed from: i */
        boolean mo19072i() {
            return false;
        }

        /* renamed from: j */
        boolean mo19076j() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/view/WindowInsetsCompat$Impl20.class */
    public static class Impl20 extends Impl {
        @NonNull

        /* renamed from: b */
        final WindowInsets f3317b;

        /* renamed from: c */
        private Insets f3318c;

        Impl20(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat);
            this.f3318c = null;
            this.f3317b = windowInsets;
        }

        Impl20(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl20 impl20) {
            this(windowInsetsCompat, new WindowInsets(impl20.f3317b));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        /* renamed from: g */
        final Insets mo19077g() {
            if (this.f3318c == null) {
                this.f3318c = Insets.m19583a(this.f3317b.getSystemWindowInsetLeft(), this.f3317b.getSystemWindowInsetTop(), this.f3317b.getSystemWindowInsetRight(), this.f3317b.getSystemWindowInsetBottom());
            }
            return this.f3318c;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        /* renamed from: h */
        WindowInsetsCompat mo19068h(int i, int i2, int i3, int i4) {
            Builder builder = new Builder(WindowInsetsCompat.m19085p(this.f3317b));
            builder.m19082c(WindowInsetsCompat.m19089l(mo19077g(), i, i2, i3, i4));
            builder.m19083b(WindowInsetsCompat.m19089l(mo19073f(), i, i2, i3, i4));
            return builder.m19084a();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        /* renamed from: j */
        boolean mo19076j() {
            return this.f3317b.isRound();
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/view/WindowInsetsCompat$Impl21.class */
    private static class Impl21 extends Impl20 {

        /* renamed from: d */
        private Insets f3319d = null;

        Impl21(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        Impl21(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl21 impl21) {
            super(windowInsetsCompat, impl21);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        /* renamed from: b */
        WindowInsetsCompat mo19075b() {
            return WindowInsetsCompat.m19085p(this.f3317b.consumeStableInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        /* renamed from: c */
        WindowInsetsCompat mo19074c() {
            return WindowInsetsCompat.m19085p(this.f3317b.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        /* renamed from: f */
        final Insets mo19073f() {
            if (this.f3319d == null) {
                this.f3319d = Insets.m19583a(this.f3317b.getStableInsetLeft(), this.f3317b.getStableInsetTop(), this.f3317b.getStableInsetRight(), this.f3317b.getStableInsetBottom());
            }
            return this.f3319d;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        /* renamed from: i */
        boolean mo19072i() {
            return this.f3317b.isConsumed();
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/view/WindowInsetsCompat$Impl28.class */
    private static class Impl28 extends Impl21 {
        Impl28(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        Impl28(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl28 impl28) {
            super(windowInsetsCompat, impl28);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        /* renamed from: a */
        WindowInsetsCompat mo19071a() {
            return WindowInsetsCompat.m19085p(this.f3317b.consumeDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @Nullable
        /* renamed from: d */
        DisplayCutoutCompat mo19070d() {
            return DisplayCutoutCompat.m19317a(this.f3317b.getDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Impl28)) {
                return false;
            }
            return Objects.equals(this.f3317b, ((Impl28) obj).f3317b);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public int hashCode() {
            return this.f3317b.hashCode();
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/view/WindowInsetsCompat$Impl29.class */
    private static class Impl29 extends Impl28 {

        /* renamed from: e */
        private Insets f3320e = null;

        Impl29(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        Impl29(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl29 impl29) {
            super(windowInsetsCompat, impl29);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        /* renamed from: e */
        Insets mo19069e() {
            if (this.f3320e == null) {
                this.f3320e = Insets.m19582b(this.f3317b.getMandatorySystemGestureInsets());
            }
            return this.f3320e;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        /* renamed from: h */
        WindowInsetsCompat mo19068h(int i, int i2, int i3, int i4) {
            return WindowInsetsCompat.m19085p(this.f3317b.inset(i, i2, i3, i4));
        }
    }

    @RequiresApi
    private WindowInsetsCompat(@NonNull WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            this.f3307a = new Impl29(this, windowInsets);
        } else if (i >= 28) {
            this.f3307a = new Impl28(this, windowInsets);
        } else if (i >= 21) {
            this.f3307a = new Impl21(this, windowInsets);
        } else if (i >= 20) {
            this.f3307a = new Impl20(this, windowInsets);
        } else {
            this.f3307a = new Impl(this);
        }
    }

    public WindowInsetsCompat(@Nullable WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat != null) {
            Impl impl = windowInsetsCompat.f3307a;
            if (Build.VERSION.SDK_INT >= 29 && (impl instanceof Impl29)) {
                this.f3307a = new Impl29(this, (Impl29) impl);
            } else if (Build.VERSION.SDK_INT >= 28 && (impl instanceof Impl28)) {
                this.f3307a = new Impl28(this, (Impl28) impl);
            } else if (Build.VERSION.SDK_INT >= 21 && (impl instanceof Impl21)) {
                this.f3307a = new Impl21(this, (Impl21) impl);
            } else if (Build.VERSION.SDK_INT < 20 || !(impl instanceof Impl20)) {
                this.f3307a = new Impl(this);
            } else {
                this.f3307a = new Impl20(this, (Impl20) impl);
            }
        } else {
            this.f3307a = new Impl(this);
        }
    }

    /* renamed from: l */
    static Insets m19089l(Insets insets, int i, int i2, int i3, int i4) {
        int max = Math.max(0, insets.f3016a - i);
        int max2 = Math.max(0, insets.f3017b - i2);
        int max3 = Math.max(0, insets.f3018c - i3);
        int max4 = Math.max(0, insets.f3019d - i4);
        return (max == i && max2 == i2 && max3 == i3 && max4 == i4) ? insets : Insets.m19583a(max, max2, max3, max4);
    }

    @NonNull
    @RequiresApi
    /* renamed from: p */
    public static WindowInsetsCompat m19085p(@NonNull WindowInsets windowInsets) {
        Preconditions.m19337d(windowInsets);
        return new WindowInsetsCompat(windowInsets);
    }

    @NonNull
    /* renamed from: a */
    public WindowInsetsCompat m19100a() {
        return this.f3307a.mo19071a();
    }

    @NonNull
    /* renamed from: b */
    public WindowInsetsCompat m19099b() {
        return this.f3307a.mo19075b();
    }

    @NonNull
    /* renamed from: c */
    public WindowInsetsCompat m19098c() {
        return this.f3307a.mo19074c();
    }

    @NonNull
    /* renamed from: d */
    public Insets m19097d() {
        return this.f3307a.mo19069e();
    }

    /* renamed from: e */
    public int m19096e() {
        return m19092i().f3019d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WindowInsetsCompat)) {
            return false;
        }
        return ObjectsCompat.m19346a(this.f3307a, ((WindowInsetsCompat) obj).f3307a);
    }

    /* renamed from: f */
    public int m19095f() {
        return m19092i().f3016a;
    }

    /* renamed from: g */
    public int m19094g() {
        return m19092i().f3018c;
    }

    /* renamed from: h */
    public int m19093h() {
        return m19092i().f3017b;
    }

    public int hashCode() {
        Impl impl = this.f3307a;
        return impl == null ? 0 : impl.hashCode();
    }

    @NonNull
    /* renamed from: i */
    public Insets m19092i() {
        return this.f3307a.mo19077g();
    }

    /* renamed from: j */
    public boolean m19091j() {
        return !m19092i().equals(Insets.f3015e);
    }

    @NonNull
    /* renamed from: k */
    public WindowInsetsCompat m19090k(@IntRange(from = 0) int i, @IntRange(from = 0) int i2, @IntRange(from = 0) int i3, @IntRange(from = 0) int i4) {
        return this.f3307a.mo19068h(i, i2, i3, i4);
    }

    /* renamed from: m */
    public boolean m19088m() {
        return this.f3307a.mo19072i();
    }

    @NonNull
    @Deprecated
    /* renamed from: n */
    public WindowInsetsCompat m19087n(int i, int i2, int i3, int i4) {
        Builder builder = new Builder(this);
        builder.m19082c(Insets.m19583a(i, i2, i3, i4));
        return builder.m19084a();
    }

    @Nullable
    @RequiresApi
    /* renamed from: o */
    public WindowInsets m19086o() {
        Impl impl = this.f3307a;
        return impl instanceof Impl20 ? ((Impl20) impl).f3317b : null;
    }
}
