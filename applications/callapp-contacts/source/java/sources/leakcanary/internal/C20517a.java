package leakcanary.internal;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import kotlin.C18399h;
import kotlin.C20128v;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u001a\u0010\u0006\u001a\u00020\u0007*\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\nH��\"\u001b\u0010��\u001a\u00020\u00018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u000b"}, m4298d2 = {"hasAndroidXFragmentActivity", "", "getHasAndroidXFragmentActivity", "()Z", "hasAndroidXFragmentActivity$delegate", "Lkotlin/Lazy;", "onAndroidXFragmentViewDestroyed", "", "Landroid/app/Activity;", "block", "Lkotlin/Function0;", "plumber-android_release"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: leakcanary.internal.a */
/* loaded from: classes5-dex2jar.jar:leakcanary/internal/a.class */
public final class C20517a {

    /* renamed from: a */
    private static final Lazy f67033a = C18399h.m3897a(C20518a.f67034a);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: leakcanary.internal.a$a */
    /* loaded from: classes5-dex2jar.jar:leakcanary/internal/a$a.class */
    static final class C20518a extends AbstractC18526r implements Function0<Boolean> {

        /* renamed from: a */
        public static final C20518a f67034a = new C20518a();

        C20518a() {
            super(0);
        }

        /* renamed from: a */
        private static boolean m646a() {
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
            return Boolean.valueOf(m646a());
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, m4298d2 = {"leakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1", "Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;", "onFragmentViewDestroyed", "", "fm", "Landroidx/fragment/app/FragmentManager;", "fragment", "Landroidx/fragment/app/Fragment;", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: leakcanary.internal.a$b */
    /* loaded from: classes5-dex2jar.jar:leakcanary/internal/a$b.class */
    public static final class C20519b extends FragmentManager.AbstractC1063c {

        /* renamed from: a */
        final /* synthetic */ Function0 f67035a;

        C20519b(Function0 function0) {
            this.f67035a = function0;
        }

        @Override // androidx.fragment.app.FragmentManager.AbstractC1063c
        /* renamed from: a */
        public final void mo645a(FragmentManager fm, Fragment fragment) {
            C18524p.m3841c(fm, "fm");
            C18524p.m3841c(fragment, "fragment");
            this.f67035a.invoke();
        }
    }

    /* renamed from: a */
    public static final void m647a(Activity onAndroidXFragmentViewDestroyed, Function0<C20128v> block) {
        C18524p.m3841c(onAndroidXFragmentViewDestroyed, "$this$onAndroidXFragmentViewDestroyed");
        C18524p.m3841c(block, "block");
        if (((Boolean) f67033a.mo1102a()).booleanValue() && (onAndroidXFragmentViewDestroyed instanceof FragmentActivity)) {
            ((FragmentActivity) onAndroidXFragmentViewDestroyed).getSupportFragmentManager().m43748a((FragmentManager.AbstractC1063c) new C20519b(block), true);
        }
    }
}
