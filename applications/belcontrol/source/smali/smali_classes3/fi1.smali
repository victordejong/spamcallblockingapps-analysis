.class public Lfi1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi1$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Lcom/mopub/network/AdResponse;


# direct methods
.method public constructor <init>(Lcom/mopub/network/AdResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfi1;->a:Ljava/lang/Long;

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lfi1;->b:Lcom/mopub/network/AdResponse;

    return-void
.end method


# virtual methods
.method public final a(Lcom/mopub/mobileads/MoPubError;)Lfi1$a;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lfi1$a;->AD_LOADED:Lfi1$a;

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/mopub/mobileads/MoPubError;->getIntCode()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    sget-object p1, Lfi1$a;->INVALID_DATA:Lfi1$a;

    return-object p1

    :cond_1
    sget-object p1, Lfi1$a;->TIMEOUT:Lfi1$a;

    return-object p1

    :cond_2
    sget-object p1, Lfi1$a;->MISSING_ADAPTER:Lfi1$a;

    return-object p1

    :cond_3
    sget-object p1, Lfi1$a;->AD_LOADED:Lfi1$a;

    return-object p1
.end method

.method public final b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lfi1;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lfi1;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%%LOAD_DURATION_MS%%"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%%LOAD_RESULT%%"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lfi1;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lfi1;->a(Lcom/mopub/mobileads/MoPubError;)Lfi1$a;

    move-result-object p2

    iget-object v0, p0, Lfi1;->b:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getAfterLoadUrls()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lfi1$a;->a(Lfi1$a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lfi1;->b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lfi1;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lfi1;->a(Lcom/mopub/mobileads/MoPubError;)Lfi1$a;

    move-result-object p2

    iget-object v0, p0, Lfi1;->b:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getAfterLoadFailUrls()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lfi1$a;->a(Lfi1$a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lfi1;->b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lfi1;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfi1;->b:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getAfterLoadSuccessUrls()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lfi1$a;->AD_LOADED:Lfi1$a;

    invoke-static {v1}, Lfi1$a;->a(Lfi1$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfi1;->b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfi1;->b:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getBeforeLoadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lfi1;->a:Ljava/lang/Long;

    invoke-static {v0, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    return-void
.end method
