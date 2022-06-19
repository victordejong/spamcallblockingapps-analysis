.class final Lcom/mopub/nativeads/e;
.super Lcom/mopub/common/AdUrlGenerator;
.source "SourceFile"


# instance fields
.field g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/mopub/nativeads/RequestParameters;)Lcom/mopub/nativeads/e;
    .locals 1

    if-eqz p1, :cond_1

    .line 35
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getUserDataKeywords()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/mopub/nativeads/e;->d:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getKeywords()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/e;->c:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getDesiredAssets()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/e;->h:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public final generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/m/ad"

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/mopub/nativeads/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/e;->a(Lcom/mopub/common/ClientMetadata;)V

    .line 1072
    iget-object p1, p0, Lcom/mopub/nativeads/e;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1073
    iget-object p1, p0, Lcom/mopub/nativeads/e;->h:Ljava/lang/String;

    const-string v0, "assets"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/nativeads/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    :cond_0
    iget-object p1, p0, Lcom/mopub/nativeads/e;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2067
    iget-object p1, p0, Lcom/mopub/nativeads/e;->g:Ljava/lang/String;

    const-string v0, "MAGIC_NO"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/nativeads/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/nativeads/e;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/e;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/e;

    move-result-object p1

    return-object p1
.end method

.method public final withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/e;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/mopub/nativeads/e;->b:Ljava/lang/String;

    return-object p0
.end method
