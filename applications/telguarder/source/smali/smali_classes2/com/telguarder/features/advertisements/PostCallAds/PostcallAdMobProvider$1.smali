.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider$1;
.super Ljava/lang/Object;
.source "PostcallAdMobProvider.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->populateAppInstallAdView(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 302
    instance-of p1, p2, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 303
    check-cast p2, Landroid/widget/ImageView;

    const/4 p1, 0x1

    .line 304
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
