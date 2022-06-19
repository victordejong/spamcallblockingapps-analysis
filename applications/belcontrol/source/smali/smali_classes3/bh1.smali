.class public Lbh1;
.super Lcom/mopub/network/AdLoader;
.source ""


# instance fields
.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/mopub/network/AdLoader;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbh1;->m:Z

    iput-boolean p1, p0, Lbh1;->n:Z

    return-void
.end method


# virtual methods
.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getClickTrackingUrls()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrls()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/mopub/network/AdResponse;
    .locals 1

    iget-object v0, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    return-object v0
.end method

.method public m(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lbh1;->n:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbh1;->n:Z

    invoke-virtual {p0}, Lbh1;->j()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public n(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lbh1;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbh1;->m:Z

    invoke-virtual {p0}, Lbh1;->k()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/mopub/network/SingleImpression;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getImpressionData()Lcom/mopub/network/ImpressionData;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mopub/network/SingleImpression;-><init>(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V

    invoke-virtual {v0}, Lcom/mopub/network/SingleImpression;->sendImpression()V

    :cond_1
    :goto_0
    return-void
.end method
