.class public Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/mraid/MraidInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/MraidInterstitial;

.field private final b:Lcom/explorestack/iab/mraid/MraidView$a;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 1

    .line 220
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance p1, Lcom/explorestack/iab/mraid/MraidView$a;

    sget-object v0, Lcom/explorestack/iab/mraid/c;->INTERSTITIAL:Lcom/explorestack/iab/mraid/c;

    invoke-direct {p1, v0}, Lcom/explorestack/iab/mraid/MraidView$a;-><init>(Lcom/explorestack/iab/mraid/c;)V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/explorestack/iab/mraid/MraidInterstitial;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    iget-object v1, v1, Lcom/explorestack/iab/mraid/MraidInterstitial;->e:Lcom/explorestack/iab/mraid/MraidViewListener;

    .line 2967
    iput-object v1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->e:Lcom/explorestack/iab/mraid/MraidViewListener;

    .line 301
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    invoke-virtual {v1, p1}, Lcom/explorestack/iab/mraid/MraidView$a;->a(Landroid/content/Context;)Lcom/explorestack/iab/mraid/MraidView;

    move-result-object p1

    iput-object p1, v0, Lcom/explorestack/iab/mraid/MraidInterstitial;->b:Lcom/explorestack/iab/mraid/MraidView;

    .line 302
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    return-object p1
.end method

.method public forceUseNativeCloseButton(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    .line 1942
    iput-boolean p1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->n:Z

    return-object p0
.end method

.method public setBaseUrl(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    .line 1917
    iput-object p1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setCloseStyle(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    .line 1972
    iput-object p1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->f:Lcom/explorestack/iab/utils/h;

    return-object p0
.end method

.method public setCloseTime(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    .line 1932
    iput p1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->j:F

    return-object p0
.end method

.method public setCountDownStyle(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    .line 1977
    iput-object p1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->g:Lcom/explorestack/iab/utils/h;

    return-object p0
.end method

.method public setDurationSec(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    .line 1937
    iput p1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->k:F

    return-object p0
.end method

.method public setIsTag(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    .line 1947
    iput-boolean p1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->l:Z

    return-object p0
.end method

.method public setListener(Lcom/explorestack/iab/mraid/MraidInterstitialListener;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->a(Lcom/explorestack/iab/mraid/MraidInterstitial;Lcom/explorestack/iab/mraid/MraidInterstitialListener;)Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    return-object p0
.end method

.method public setLoadingStyle(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    .line 1982
    iput-object p1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->h:Lcom/explorestack/iab/utils/h;

    return-object p0
.end method

.method public setPreload(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    .line 1927
    iput-boolean p1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->m:Z

    return-object p0
.end method

.method public setProductLink(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    .line 1962
    iput-object p1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setProgressStyle(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    .line 1987
    iput-object p1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->i:Lcom/explorestack/iab/utils/h;

    return-object p0
.end method

.method public setR1(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    .line 1952
    iput-boolean p1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->o:Z

    return-object p0
.end method

.method public setR2(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    .line 1957
    iput-boolean p1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->p:Z

    return-object p0
.end method

.method public setSupportedNativeFeatures([Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidView$a;

    .line 1922
    iput-object p1, v0, Lcom/explorestack/iab/mraid/MraidView$a;->d:[Ljava/lang/String;

    return-object p0
.end method
