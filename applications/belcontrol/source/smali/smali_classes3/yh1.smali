.class public Lyh1;
.super Lcom/mopub/common/AdUrlGenerator;
.source ""


# instance fields
.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final N()V
    .locals 2

    iget-object v0, p0, Lyh1;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyh1;->m:Ljava/lang/String;

    const-string v1, "assets"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final O()V
    .locals 2

    iget-object v0, p0, Lyh1;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyh1;->n:Ljava/lang/String;

    const-string v1, "MAGIC_NO"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public P(Lcom/mopub/nativeads/RequestParameters;)Lyh1;
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getUserDataKeywords()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getKeywords()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getDesiredAssets()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lyh1;->m:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public Q(I)Lyh1;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lyh1;->n:Ljava/lang/String;

    return-object p0
.end method

.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/m/ad"

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/BaseUrlGenerator;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->m(Lcom/mopub/common/ClientMetadata;)V

    invoke-virtual {p0}, Lyh1;->N()V

    invoke-virtual {p0}, Lyh1;->O()V

    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    invoke-virtual {p0, p1}, Lyh1;->withAdUnitId(Ljava/lang/String;)Lyh1;

    move-result-object p1

    return-object p1
.end method

.method public withAdUnitId(Ljava/lang/String;)Lyh1;
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->f:Ljava/lang/String;

    return-object p0
.end method
