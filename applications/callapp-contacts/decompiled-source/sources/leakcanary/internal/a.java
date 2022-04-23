package leakcanary.internal;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u001a\u0010\u0006\u001a\u00020\u0007*\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\nH��\"\u001b\u0010��\u001a\u00020\u00018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u000b"}, d2 = {"hasAndroidXFragmentActivity", "", "getHasAndroidXFragmentActivity", "()Z", "hasAndroidXFragmentActivity$delegate", "Lkotlin/Lazy;", "onAndroidXFragmentViewDestroyed", "", "Landroid/app/Activity;", "block", "Lkotlin/Function0;", "plumber-android_release"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:leakcanary/internal/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Lazy f39080a = h.a(C0747a.f39081a);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* renamed from: leakcanary.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:leakcanary/internal/a$a.class */
    static final class C0747a extends r implements Function0<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0747a f39081a = new C0747a();

        C0747a() {
            super(0);
        }

        private static boolean a() {
            boolean z;
            try {
                Class.forName("androidx.fragment.app.FragmentActivity");
                z = true;
            } catch (Throwable th) {
                z = false;
            }
            return z;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(a());
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"leakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1", "Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;", "onFragmentViewDestroyed", "", "fm", "Landroidx/fragment/app/FragmentManager;", "fragment", "Landroidx/fragment/app/Fragment;", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:leakcanary/internal/a$b.class */
    public static final class b extends FragmentManager.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0 f39082a;

        b(Function0 function0) {
            this.f39082a = function0;
        }

        @Override // androidx.fragment.app.FragmentManager.c
        public final void a(FragmentManager fm, Fragment fragment) {
            p.c(fm, "fm");
            p.c(fragment, "fragment");
            this.f39082a.invoke();
        }
    }

    public static final void a(Activity onAndroidXFragmentViewDestroyed, Function0<v> block) {
        p.c(onAndroidXFragmentViewDestroyed, "$this$onAndroidXFragmentViewDestroyed");
        p.c(block, "block");
        if (((Boolean) f39080a.a()).booleanValue() && (onAndroidXFragmentViewDestroyed instanceof FragmentActivity)) {
            ((FragmentActivity) onAndroidXFragmentViewDestroyed).getSupportFragmentManager().a((FragmentManager.c) new b(block), true);
        }
    }
}
