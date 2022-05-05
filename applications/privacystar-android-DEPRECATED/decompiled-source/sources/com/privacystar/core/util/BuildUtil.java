package com.privacystar.core.util;

import android.content.Context;
import android.content.res.Resources;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import io.realm.Realm;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u0018\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u0019\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u001a\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u001b\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u001c\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u001d\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u001e\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u001f\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0006\u0010 \u001a\u00020!J\u0018\u0010\"\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010#\u001a\u00020$R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0003\u0010\u0005R\u001b\u0010\b\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\u0007\u001a\u0004\b\b\u0010\u0005R\u001b\u0010\n\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\u0007\u001a\u0004\b\n\u0010\u0005R\u001b\u0010\f\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u0007\u001a\u0004\b\f\u0010\u0005R\u001b\u0010\u000e\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0007\u001a\u0004\b\u000e\u0010\u0005R\u001b\u0010\u0010\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0007\u001a\u0004\b\u0010\u0010\u0005R\u001b\u0010\u0012\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0007\u001a\u0004\b\u0012\u0010\u0005¨\u0006%"}, m254d2 = {"Lcom/privacystar/core/util/BuildUtil;", "", "()V", "isAF", "", "()Z", "isAF$delegate", "Lkotlin/Lazy;", "isCD", "isCD$delegate", "isCW", "isCW$delegate", "isDebugBuild", "isDebugBuild$delegate", "isDevelopmentBuild", "isDevelopmentBuild$delegate", "isLoggingBuild", "isLoggingBuild$delegate", "isPS", "isPS$delegate", "doesVariantHaveCustomProtectionTitle", "context", "Landroid/content/Context;", "doesVariantHaveGpPurchases", "doesVariantHaveLogoHeaderView", "doesVariantHavePurchaseView", "doesVariantHaveThemes", "doesVariantOfferAnnualSubscription", "doesVariantOfferMonthlySubscription", "doesVariantRoadblockCarriers", "doesVariantShowCustomCYDReturningText", "doesVariantSuppressFullUx", "getTestPackageName", "", "shouldVariantInstanceShowFullUx", "realm", "Lio/realm/Realm;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/BuildUtil.class */
public final class BuildUtil {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BuildUtil.class), "isDevelopmentBuild", "isDevelopmentBuild()Z")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BuildUtil.class), "isDebugBuild", "isDebugBuild()Z")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BuildUtil.class), "isAF", "isAF()Z")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BuildUtil.class), "isPS", "isPS()Z")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BuildUtil.class), "isCD", "isCD()Z")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BuildUtil.class), "isCW", "isCW()Z")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BuildUtil.class), "isLoggingBuild", "isLoggingBuild()Z"))};
    public static final BuildUtil INSTANCE = new BuildUtil();
    @NotNull
    private static final Lazy isDevelopmentBuild$delegate = LazyKt.lazy(BuildUtil$isDevelopmentBuild$2.INSTANCE);
    @NotNull
    private static final Lazy isDebugBuild$delegate = LazyKt.lazy(BuildUtil$isDebugBuild$2.INSTANCE);
    @NotNull
    private static final Lazy isAF$delegate = LazyKt.lazy(BuildUtil$isAF$2.INSTANCE);
    @NotNull
    private static final Lazy isPS$delegate = LazyKt.lazy(BuildUtil$isPS$2.INSTANCE);
    @NotNull
    private static final Lazy isCD$delegate = LazyKt.lazy(BuildUtil$isCD$2.INSTANCE);
    @NotNull
    private static final Lazy isCW$delegate = LazyKt.lazy(BuildUtil$isCW$2.INSTANCE);
    @NotNull
    private static final Lazy isLoggingBuild$delegate = LazyKt.lazy(BuildUtil$isLoggingBuild$2.INSTANCE);

    private BuildUtil() {
    }

    public final boolean doesVariantHaveCustomProtectionTitle(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        return context.getResources().getBoolean(C1566R.bool.variant_has_custom_protection_title);
    }

    public final boolean doesVariantHaveGpPurchases(@Nullable Context context) {
        Resources resources;
        return (context == null || (resources = context.getResources()) == null) ? false : resources.getBoolean(C1566R.bool.variant_has_gp_purchases);
    }

    public final boolean doesVariantHaveLogoHeaderView(@Nullable Context context) {
        Resources resources;
        return (context == null || (resources = context.getResources()) == null) ? false : resources.getBoolean(C1566R.bool.variant_has_logo_header);
    }

    public final boolean doesVariantHavePurchaseView(@Nullable Context context) {
        Resources resources;
        return (context == null || (resources = context.getResources()) == null) ? false : resources.getBoolean(C1566R.bool.variant_has_purchases);
    }

    public final boolean doesVariantHaveThemes(@Nullable Context context) {
        Resources resources;
        return (context == null || (resources = context.getResources()) == null) ? false : resources.getBoolean(C1566R.bool.variant_has_themes);
    }

    public final boolean doesVariantOfferAnnualSubscription(@Nullable Context context) {
        Resources resources;
        return (context == null || (resources = context.getResources()) == null) ? false : resources.getBoolean(C1566R.bool.variant_has_annual_subscription);
    }

    public final boolean doesVariantOfferMonthlySubscription(@Nullable Context context) {
        Resources resources;
        return (context == null || (resources = context.getResources()) == null) ? false : resources.getBoolean(C1566R.bool.variant_has_monthly_subscription);
    }

    public final boolean doesVariantRoadblockCarriers(@Nullable Context context) {
        Resources resources;
        return (context == null || (resources = context.getResources()) == null) ? false : resources.getBoolean(C1566R.bool.variant_roadblocks_carriers);
    }

    public final boolean doesVariantShowCustomCYDReturningText(@Nullable Context context) {
        Resources resources;
        return (context == null || (resources = context.getResources()) == null) ? false : resources.getBoolean(C1566R.bool.variant_has_custom_cyd_returning_text);
    }

    public final boolean doesVariantSuppressFullUx(@Nullable Context context) {
        Resources resources;
        return (context == null || (resources = context.getResources()) == null) ? false : resources.getBoolean(C1566R.bool.variant_suppresses_full_ux);
    }

    @NotNull
    public final String getTestPackageName() {
        return "com.privacystar.android.spg";
    }

    public final boolean isAF() {
        Lazy lazy = isAF$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return ((Boolean) lazy.getValue()).booleanValue();
    }

    public final boolean isCD() {
        Lazy lazy = isCD$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return ((Boolean) lazy.getValue()).booleanValue();
    }

    public final boolean isCW() {
        Lazy lazy = isCW$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return ((Boolean) lazy.getValue()).booleanValue();
    }

    public final boolean isDebugBuild() {
        Lazy lazy = isDebugBuild$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return ((Boolean) lazy.getValue()).booleanValue();
    }

    public final boolean isDevelopmentBuild() {
        Lazy lazy = isDevelopmentBuild$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return ((Boolean) lazy.getValue()).booleanValue();
    }

    public final boolean isLoggingBuild() {
        Lazy lazy = isLoggingBuild$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return ((Boolean) lazy.getValue()).booleanValue();
    }

    public final boolean isPS() {
        Lazy lazy = isPS$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return ((Boolean) lazy.getValue()).booleanValue();
    }

    public final boolean shouldVariantInstanceShowFullUx(@Nullable Context context, @NotNull Realm realm) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        return !doesVariantSuppressFullUx(context) || SubscriptionRealm.isSubscriptionOngoing(realm);
    }
}
