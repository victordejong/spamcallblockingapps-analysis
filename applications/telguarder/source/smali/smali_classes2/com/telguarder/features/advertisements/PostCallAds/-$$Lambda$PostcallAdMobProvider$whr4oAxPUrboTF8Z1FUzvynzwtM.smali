.class public final synthetic Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobProvider$whr4oAxPUrboTF8Z1FUzvynzwtM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobProvider$whr4oAxPUrboTF8Z1FUzvynzwtM;->f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobProvider$whr4oAxPUrboTF8Z1FUzvynzwtM;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onUnifiedNativeAdLoaded(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobProvider$whr4oAxPUrboTF8Z1FUzvynzwtM;->f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobProvider$whr4oAxPUrboTF8Z1FUzvynzwtM;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->lambda$createAndLoadAd$1$PostcallAdMobProvider(Landroid/content/Context;Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    return-void
.end method
