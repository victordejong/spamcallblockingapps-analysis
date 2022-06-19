.class public Lcom/mopub/mobileads/VastXmlManagerAggregator;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastXmlManagerAggregator$a;,
        Lcom/mopub/mobileads/VastXmlManagerAggregator$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/mopub/mobileads/VastVideoConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADS_BY_AD_SLOT_ID:Ljava/lang/String; = "adsBy"

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/VastXmlManagerAggregator$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:D

.field public final c:Landroid/content/Context;

.field public final d:I

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "video/mp4"

    const-string v1, "video/3gpp"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/mopub/mobileads/VastXmlManagerAggregator$b;DILandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b:D

    iput p4, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:I

    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    return-void
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :catch_0
    :goto_0
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)D
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    const/16 v0, 0x5dc

    const/16 v1, 0x2bc

    if-gt v1, p1, :cond_2

    if-gt p1, v0, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    rsub-int v1, p1, 0x2bc

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x442f0000    # 700.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x44bb8000    # 1500.0f

    div-float/2addr p1, v0

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final b(IILjava/lang/Integer;Ljava/lang/String;)D
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d(II)D

    move-result-wide p1

    invoke-virtual {p0, p3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/lang/Integer;)D

    move-result-wide v0

    invoke-virtual {p0, p4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c(Ljava/lang/String;)D

    move-result-wide p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v2

    add-double/2addr p1, v0

    div-double/2addr v2, p1

    mul-double p3, p3, v2

    return-wide p3
.end method

.method public final c(Ljava/lang/String;)D
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x63306f58

    if-eq v1, v2, :cond_2

    const v2, 0x4f62635d

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "video/mp4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_4
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    return-wide v0
.end method

.method public final d(II)D
    .locals 4

    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    iget-wide v2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b:D

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:I

    sub-int p1, p2, p1

    div-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double p1, p1

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e([Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    return-object p1
.end method

.method public varargs e([Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    aget-object p1, p1, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->g(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unable to generate VastVideoConfig."

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final f(Llh1;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llh1;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljh1;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmh1;

    invoke-virtual {v1}, Lmh1;->g()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->m(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {v0}, Lcom/mopub/mobileads/VastVideoConfig;-><init>()V

    invoke-virtual {p1}, Ljh1;->c()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    invoke-virtual {p0, v1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->r(Lmh1;Lcom/mopub/mobileads/VastVideoConfig;)V

    invoke-virtual {v1}, Lmh1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->setClickThroughUrl(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastVideoConfig;->setNetworkMediaFileUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljh1;->a()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    invoke-virtual {p0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->k(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$a;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v2

    sget-object v3, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    invoke-virtual {p0, v1, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->k(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$a;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/mopub/mobileads/VastVideoConfig;->setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    invoke-virtual {p1}, Ljh1;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoConfig;->addErrorTrackers(Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->t(Ljh1;Lcom/mopub/mobileads/VastVideoConfig;)V

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->u(Ljh1;Lcom/mopub/mobileads/VastVideoConfig;)V

    iget-object p1, p1, Ljh1;->a:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->q(Lorg/w3c/dom/Node;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 7
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    const-string v0, "vastXml cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorTrackers cannot be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lqh1;

    invoke-direct {v0}, Lqh1;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Lqh1;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lqh1;->a()Ljava/util/List;

    move-result-object p1

    iget-object v4, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    invoke-virtual {p0, p1, v0, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->i(Ljava/util/List;Lqh1;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lih1;

    invoke-virtual {v4}, Lih1;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->o(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lih1;->a()Llh1;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v5, p2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->f(Llh1;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v0, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->s(Lqh1;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-object v5

    :cond_3
    invoke-virtual {v4}, Lih1;->c()Lph1;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljh1;->b()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v4, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->h(Lph1;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v6, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->g(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljh1;->c()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    invoke-virtual {v4}, Ljh1;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmh1;

    invoke-virtual {p0, p2, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->r(Lmh1;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v4, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->t(Ljh1;Lcom/mopub/mobileads/VastVideoConfig;)V

    invoke-virtual {p0, v4, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->u(Ljh1;Lcom/mopub/mobileads/VastVideoConfig;)V

    iget-object p1, v4, Ljh1;->a:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->q(Lorg/w3c/dom/Node;Lcom/mopub/mobileads/VastVideoConfig;)V

    invoke-virtual {v4}, Ljh1;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoConfig;->hasCompanionAd()Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->k(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$a;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p2

    sget-object v1, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    invoke-virtual {p0, p1, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->k(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$a;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p1

    invoke-virtual {v5, p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v5, v2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p2

    invoke-virtual {v5, v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v1

    if-eqz p2, :cond_9

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkh1;

    invoke-virtual {v2}, Lkh1;->g()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Lkh1;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lkh1;->c()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lkh1;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lkh1;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/Collection;)V

    goto :goto_2

    :cond_9
    :goto_3
    invoke-virtual {p0, v0, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->s(Lqh1;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-object v5

    :cond_a
    return-object v3

    :catch_0
    move-exception p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Failed to parse VAST XML"

    aput-object v5, v2, v4

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    sget-object p1, Lcom/mopub/mobileads/VastErrorCode;->XML_PARSING_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    invoke-static {p2, p1, v3, v3, v0}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-object v3
.end method

.method public final h(Lph1;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lph1;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Lph1;->f()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Failed to follow VAST redirect"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/mopub/mobileads/VastErrorCode;->WRAPPER_TIMEOUT:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    invoke-static {p2, p1, v0, v0, v1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final i(Ljava/util/List;Lqh1;Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lih1;",
            ">;",
            "Lqh1;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lqh1;->e()Lcom/mopub/mobileads/VastTracker;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lqh1;->e()Lcom/mopub/mobileads/VastTracker;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:I

    if-lez p2, :cond_0

    sget-object p2, Lcom/mopub/mobileads/VastErrorCode;->NO_ADS_VAST_RESPONSE:Lcom/mopub/mobileads/VastErrorCode;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/mopub/mobileads/VastErrorCode;->UNDEFINED_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0, p3}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:I

    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/MoPubHttpUrlConnection;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0}, Lcom/mopub/common/util/Strings;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v0, v1

    move-object v1, p1

    move-object p1, v0

    :goto_0
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v1

    :cond_2
    return-object v1
.end method

.method public k(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$a;)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .locals 23
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkh1;",
            ">;",
            "Lcom/mopub/mobileads/VastXmlManagerAggregator$a;",
            ")",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "managers cannot be null"

    invoke-static {v1, v3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "orientation cannot be null"

    invoke-static {v2, v3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v1

    array-length v4, v1

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v8, v4, :cond_a

    aget-object v12, v1, v8

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkh1;

    invoke-virtual {v14}, Lkh1;->f()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14}, Lkh1;->d()Ljava/lang/Integer;

    move-result-object v16

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v17, v1

    const/16 v1, 0x12c

    if-lt v5, v1, :cond_6

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v5, 0xfa

    if-ge v1, v5, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v1, v5, v12, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->n(IILcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastXmlManagerAggregator$a;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v14}, Lkh1;->e()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v5

    move-object/from16 v18, v3

    iget v3, v1, Landroid/graphics/Point;->x:I

    move/from16 v19, v4

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v5, v12, v3, v4}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_4

    :cond_1
    sget-object v4, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    if-ne v4, v2, :cond_2

    iget-wide v4, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b:D

    cmpg-double v22, v4, v20

    if-ltz v22, :cond_3

    :cond_2
    sget-object v4, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    if-ne v4, v2, :cond_4

    iget-wide v4, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b:D

    cmpl-double v22, v4, v20

    if-lez v22, :cond_4

    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v15, 0x0

    invoke-virtual {v0, v4, v5, v15, v15}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b(IILjava/lang/Integer;Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v0, v5, v15, v4, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b(IILjava/lang/Integer;Ljava/lang/String;)D

    move-result-wide v15

    move-wide v4, v15

    :goto_2
    cmpl-double v15, v4, v6

    if-lez v15, :cond_7

    move-object v11, v1

    move-object v10, v3

    move-wide v6, v4

    move-object v9, v14

    goto :goto_4

    :cond_5
    move-object/from16 v17, v1

    :cond_6
    :goto_3
    move-object/from16 v18, v3

    move/from16 v19, v4

    :cond_7
    :goto_4
    move-object/from16 v1, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_1

    :cond_8
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move/from16 v19, v4

    if-eqz v9, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_0

    :cond_a
    :goto_5
    move-object v4, v10

    if-eqz v9, :cond_b

    new-instance v8, Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget v2, v11, Landroid/graphics/Point;->x:I

    iget v3, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v9}, Lkh1;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lkh1;->b()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v9}, Lkh1;->c()Ljava/util/List;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/mopub/mobileads/VastCompanionAdConfig;-><init>(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public l(Ljava/util/List;)Lcom/mopub/mobileads/VastIconConfig;
    .locals 19
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastIconXmlManager;",
            ">;)",
            "Lcom/mopub/mobileads/VastIconConfig;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "managers cannot be null"

    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/VastIconXmlManager;

    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->h()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->d()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x12c

    if-gt v9, v10, :cond_0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->f()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v9, v4, v7, v8}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v15

    if-nez v15, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->e()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->c()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->b()Ljava/util/List;

    move-result-object v16

    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->a()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->g()Ljava/util/List;

    move-result-object v18

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/mopub/mobileads/VastIconConfig;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Loh1;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "managers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh1;

    invoke-virtual {v3}, Loh1;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Loh1;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mopub/mobileads/VastXmlManagerAggregator;->f:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Loh1;->e()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3}, Loh1;->b()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3}, Loh1;->a()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gtz v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v6, v7, v3, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b(IILjava/lang/Integer;Ljava/lang/String;)D

    move-result-wide v3

    cmpl-double v6, v3, v0

    if-lez v6, :cond_0

    move-wide v0, v3

    move-object v2, v5

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public n(IILcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastXmlManagerAggregator$a;)Landroid/graphics/Point;
    .locals 5
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float p1, p1

    iget-object v3, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    int-to-float p2, p2

    iget-object v3, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p2

    sget-object v3, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    if-ne v3, p4, :cond_0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    add-int/lit8 v2, p4, -0x10

    if-gt p1, v2, :cond_1

    add-int/lit8 v2, v1, -0x10

    if-gt p2, v2, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    sget-object v3, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    if-ne v3, p3, :cond_2

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v2, Landroid/graphics/Point;->x:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    iput p1, v2, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_2
    int-to-float p1, p1

    int-to-float p3, p4

    div-float p3, p1, p3

    int-to-float p2, p2

    int-to-float v3, v1

    div-float v3, p2, v3

    cmpl-float v4, p3, v3

    if-ltz v4, :cond_3

    iput p4, v2, Landroid/graphics/Point;->x:I

    div-float/2addr p2, p3

    float-to-int p1, p2

    goto :goto_1

    :cond_3
    div-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, v2, Landroid/graphics/Point;->x:I

    iput v1, v2, Landroid/graphics/Point;->y:I

    :goto_2
    iget p1, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 p1, p1, -0x10

    iput p1, v2, Landroid/graphics/Point;->x:I

    iget p2, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 p2, p2, -0x10

    iput p2, v2, Landroid/graphics/Point;->y:I

    if-ltz p1, :cond_5

    if-gez p2, :cond_4

    goto :goto_3

    :cond_4
    int-to-float p1, p1

    iget-object p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/graphics/Point;->x:I

    iget p1, v2, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/graphics/Point;->y:I

    return-object v2

    :cond_5
    :goto_3
    return-object v0
.end method

.method public onCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$b;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->p(Lcom/mopub/mobileads/VastVideoConfig;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method

.method public p(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$b;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    :cond_0
    return-void
.end method

.method public final q(Lorg/w3c/dom/Node;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    new-instance v0, Lhh1;

    invoke-direct {v0, p1}, Lhh1;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v0}, Lhh1;->a()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->addViewabilityVendors(Ljava/util/Set;)V

    return-void
.end method

.method public final r(Lmh1;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    const-string v0, "linearXmlManager cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastVideoConfig cannot be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lmh1;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addAbsoluteTrackers(Ljava/util/List;)V

    invoke-virtual {p1}, Lmh1;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackers(Ljava/util/List;)V

    invoke-virtual {p1}, Lmh1;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addPauseTrackers(Ljava/util/List;)V

    invoke-virtual {p1}, Lmh1;->i()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addResumeTrackers(Ljava/util/List;)V

    invoke-virtual {p1}, Lmh1;->l()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackers(Ljava/util/List;)V

    invoke-virtual {p1}, Lmh1;->k()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCloseTrackers(Ljava/util/List;)V

    invoke-virtual {p1}, Lmh1;->m()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addSkipTrackers(Ljava/util/List;)V

    invoke-virtual {p1}, Lmh1;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addClickTrackers(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lmh1;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setSkipOffset(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmh1;->f()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->l(Ljava/util/List;)Lcom/mopub/mobileads/VastIconConfig;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->setVastIconConfig(Lcom/mopub/mobileads/VastIconConfig;)V

    :cond_1
    return-void
.end method

.method public final s(Lqh1;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    const-string v0, "xmlManager cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastVideoConfig cannot be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lqh1;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lqh1;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCtaText(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lqh1;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomSkipText(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lqh1;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCloseIconUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final t(Ljh1;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 3

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljh1;->e()Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastExtensionXmlManager;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionXmlManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoPub"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionXmlManager;->b()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->setVideoViewabilityTracker(Lcom/mopub/mobileads/VideoViewabilityTracker;)V

    :cond_2
    return-void
.end method

.method public final u(Ljh1;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    invoke-virtual {p1}, Ljh1;->e()Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastExtensionXmlManager;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mopub/mobileads/VastExtensionXmlManager;->a:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v0, p2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->q(Lorg/w3c/dom/Node;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_0

    :cond_1
    return-void
.end method
