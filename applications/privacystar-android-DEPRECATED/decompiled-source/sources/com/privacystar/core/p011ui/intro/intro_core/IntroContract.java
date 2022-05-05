package com.privacystar.core.p011ui.intro.intro_core;

import android.content.Context;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.util.PermissionUtils;
import com.privacystar.core.util.enums.CarrierMobileCode;
import io.realm.Realm;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/intro/intro_core/IntroContract;", "", "()V", "Manager", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.intro_core.IntroContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroContract.class */
public final class IntroContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u0005H&J\u0013\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\u0003H&¨\u0006\f"}, m254d2 = {"Lcom/privacystar/core/ui/intro/intro_core/IntroContract$Manager;", "", "entryDependsOnActivityLoaded", "", "lastFragmentBeforePermissions", "Ljava/lang/Class;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "minPermissionsRequired", "", "", "()[Ljava/lang/String;", "registerAfterPermissionsGranted", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.intro_core.IntroContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroContract$Manager.class */
    public interface Manager {

        @Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
        /* renamed from: com.privacystar.core.ui.intro.intro_core.IntroContract$Manager$DefaultImpls */
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroContract$Manager$DefaultImpls.class */
        public static final class DefaultImpls {
            @NotNull
            public static String[] minPermissionsRequired(Manager manager) {
                String[] generalPermissions = PermissionUtils.getGeneralPermissions();
                Intrinsics.checkExpressionValueIsNotNull(generalPermissions, "PermissionUtils.getGeneralPermissions()");
                return generalPermissions;
            }
        }

        boolean entryDependsOnActivityLoaded();

        @NotNull
        Class<? extends IntroActivity.IntroActivityContent> lastFragmentBeforePermissions();

        @NotNull
        String[] minPermissionsRequired();

        boolean registerAfterPermissionsGranted();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\u0003H&J\b\u0010\f\u001a\u00020\u0003H&J\b\u0010\r\u001a\u00020\u000eH&J\b\u0010\u000f\u001a\u00020\u0010H&J\b\u0010\u0011\u001a\u00020\u0012H&J\b\u0010\u0013\u001a\u00020\u0014H&J\b\u0010\u0015\u001a\u00020\u0005H&J\b\u0010\u0016\u001a\u00020\u0005H&J\b\u0010\u0017\u001a\u00020\u0005H&J\b\u0010\u0018\u001a\u00020\u0005H&J\u001b\u0010\u0019\u001a\u00020\u00032\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00100\u001bH&¢\u0006\u0002\u0010\u001cJ\u001c\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00052\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0010H&¨\u0006 "}, m254d2 = {"Lcom/privacystar/core/ui/intro/intro_core/IntroContract$View;", "", "activityLogLoadedCallback", "", "canCurrentFragmentAutoTransition", "", "checkRegistration", "registrationPending", "configureTheme", "carrier", "Lcom/privacystar/core/util/enums/CarrierMobileCode;", "finishSpinnerAndTransition", "finsihActivity", "getContextTemp", "Landroid/content/Context;", "getCurrentFragmentName", "", "getRealmTemp", "Lio/realm/Realm;", "getSpinnerDuration", "", "isCallerYDEnabled", "isCurrentFragmentNull", "isFragmentLoadingFragment", "isSpinnerShowing", "requestPermissions", "unownedPermissions", "", "([Ljava/lang/String;)V", "setLoadingSpinner", "isVisible", "text", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.intro_core.IntroContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroContract$View.class */
    public interface View {

        @Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
        /* renamed from: com.privacystar.core.ui.intro.intro_core.IntroContract$View$DefaultImpls */
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroContract$View$DefaultImpls.class */
        public static final class DefaultImpls {
            public static /* synthetic */ void setLoadingSpinner$default(View view, boolean z, String str, int i, Object obj) {
                if (obj != null) {
                    throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setLoadingSpinner");
                }
                if ((i & 2) != 0) {
                    str = null;
                }
                view.setLoadingSpinner(z, str);
            }
        }

        void activityLogLoadedCallback();

        boolean canCurrentFragmentAutoTransition();

        void checkRegistration(boolean z);

        void configureTheme(@NotNull CarrierMobileCode carrierMobileCode);

        void finishSpinnerAndTransition();

        void finsihActivity();

        @NotNull
        Context getContextTemp();

        @NotNull
        String getCurrentFragmentName();

        @NotNull
        Realm getRealmTemp();

        long getSpinnerDuration();

        boolean isCallerYDEnabled();

        boolean isCurrentFragmentNull();

        boolean isFragmentLoadingFragment();

        boolean isSpinnerShowing();

        void requestPermissions(@NotNull String[] strArr);

        void setLoadingSpinner(boolean z, @Nullable String str);
    }
}
