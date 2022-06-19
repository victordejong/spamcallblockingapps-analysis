.class final Lcom/mopub/mobileads/a;
.super Lcom/mopub/network/AdLoader;
.source "SourceFile"


# instance fields
.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/mopub/network/AdLoader;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/mopub/mobileads/a;->c:Z

    .line 33
    iput-boolean p1, p0, Lcom/mopub/mobileads/a;->d:Z

    return-void
.end method


# virtual methods
.method final a()Lcom/mopub/network/AdResponse;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/network/AdResponse;

    return-object v0
.end method

.method final a(Landroid/content/Context;)V
    .locals 2

    .line 66
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mopub/mobileads/a;->c:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/mopub/mobileads/a;->c:Z

    .line 1046
    iget-object v0, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrls()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1049
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 73
    :goto_0
    invoke-static {v0, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 77
    iget-object p1, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/network/AdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    .line 78
    new-instance v0, Lcom/mopub/network/SingleImpression;

    iget-object v1, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getImpressionData()Lcom/mopub/network/ImpressionData;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mopub/network/SingleImpression;-><init>(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V

    invoke-virtual {v0}, Lcom/mopub/network/SingleImpression;->sendImpression()V

    :cond_2
    :goto_1
    return-void
.end method

.method final b(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mopub/mobileads/a;->d:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/mopub/mobileads/a;->d:Z

    .line 1054
    iget-object v0, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getClickTrackingUrls()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1057
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 89
    :goto_0
    invoke-static {v0, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_2
    :goto_1
    return-void
.end method
