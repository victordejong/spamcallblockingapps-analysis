.class public Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdViewConfig"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityListener;

.field private c:Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityBackPressListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;->b:Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityListener;

    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;->a:Landroid/view/View;

    return-object v0
.end method

.method public getBackPressListener()Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityBackPressListener;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;->c:Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityBackPressListener;

    return-object v0
.end method

.method public getEventListener()Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityListener;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;->b:Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityListener;

    return-object v0
.end method

.method public setBackPressListener(Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityBackPressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;->c:Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityBackPressListener;

    return-void
.end method
