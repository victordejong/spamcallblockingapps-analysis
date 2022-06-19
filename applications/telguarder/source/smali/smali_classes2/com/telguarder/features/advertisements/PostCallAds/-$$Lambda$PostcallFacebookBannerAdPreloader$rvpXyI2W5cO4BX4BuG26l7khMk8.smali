.class public final synthetic Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdPreloader$rvpXyI2W5cO4BX4BuG26l7khMk8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdPreloader$rvpXyI2W5cO4BX4BuG26l7khMk8;->f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdPreloader$rvpXyI2W5cO4BX4BuG26l7khMk8;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdPreloader$rvpXyI2W5cO4BX4BuG26l7khMk8;->f$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdPreloader$rvpXyI2W5cO4BX4BuG26l7khMk8;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->lambda$preload$0$PostcallFacebookBannerAdPreloader(Landroid/content/Context;)V

    return-void
.end method
