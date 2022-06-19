.class final Lcom/mopub/mobileads/AdViewController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdViewController;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/AdViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController$2;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$2;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController$2;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->resolveAdSize()Landroid/graphics/Point;

    move-result-object v0

    .line 1408
    iput-object v0, v1, Lcom/mopub/mobileads/AdViewController;->f:Landroid/graphics/Point;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$2;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/AdViewController;)V

    return-void
.end method
