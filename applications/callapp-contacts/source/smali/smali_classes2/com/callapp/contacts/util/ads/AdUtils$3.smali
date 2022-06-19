.class final Lcom/callapp/contacts/util/ads/AdUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;Ljava/lang/Double;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/Double;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Ljava/lang/String;ZLjava/lang/Double;Ljava/util/Map;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AdUtils$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/AdUtils$3;->b:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/AdUtils$3;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/callapp/contacts/util/ads/AdUtils$3;->d:Z

    iput-object p5, p0, Lcom/callapp/contacts/util/ads/AdUtils$3;->e:Ljava/lang/Double;

    iput-object p6, p0, Lcom/callapp/contacts/util/ads/AdUtils$3;->f:Ljava/util/Map;

    iput-object p7, p0, Lcom/callapp/contacts/util/ads/AdUtils$3;->g:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AdUtils$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AdUtils$3;->b:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AdUtils$3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 439
    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/AdUtils$3;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AdUtils$3;->e:Ljava/lang/Double;

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/Boolean;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setKeywords(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AdUtils$3;->f:Ljava/util/Map;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AdUtils$3;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setLocalExtras(Ljava/util/Map;)V

    .line 443
    :cond_0
    new-instance v1, Lcom/callapp/contacts/util/ads/AdUtils$3$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/AdUtils$3$1;-><init>(Lcom/callapp/contacts/util/ads/AdUtils$3;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 470
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    return-void
.end method
