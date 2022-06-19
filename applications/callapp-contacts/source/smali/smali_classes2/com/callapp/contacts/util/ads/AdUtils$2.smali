.class final Lcom/callapp/contacts/util/ads/AdUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/lang/Double;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/Double;

.field final synthetic e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/Double;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AdUtils$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/AdUtils$2;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/callapp/contacts/util/ads/AdUtils$2;->c:Z

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/AdUtils$2;->d:Ljava/lang/Double;

    iput-object p5, p0, Lcom/callapp/contacts/util/ads/AdUtils$2;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 342
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AdUtils$2;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AdUtils$2;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 343
    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/AdUtils$2;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AdUtils$2;->d:Ljava/lang/Double;

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/Boolean;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 344
    new-instance v1, Lcom/callapp/contacts/util/ads/AdUtils$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/AdUtils$2$1;-><init>(Lcom/callapp/contacts/util/ads/AdUtils$2;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 375
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    return-void
.end method
