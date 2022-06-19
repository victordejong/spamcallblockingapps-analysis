.class public Lnet/pubnative/lite/sdk/analytics/ReportingController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportingController"


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/analytics/ReportingEventCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/analytics/ReportingController;->mListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCallback(Lnet/pubnative/lite/sdk/analytics/ReportingEventCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 16
    iget-object v0, p0, Lnet/pubnative/lite/sdk/analytics/ReportingController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lnet/pubnative/lite/sdk/analytics/ReportingController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCallback(Lnet/pubnative/lite/sdk/analytics/ReportingEventCallback;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 26
    :cond_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/analytics/ReportingController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return v0

    .line 30
    :cond_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/analytics/ReportingController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lnet/pubnative/lite/sdk/analytics/ReportingController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/analytics/ReportingEventCallback;

    if-eqz v1, :cond_0

    .line 38
    invoke-interface {v1, p1}, Lnet/pubnative/lite/sdk/analytics/ReportingEventCallback;->onEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V

    goto :goto_0

    :cond_1
    return-void
.end method
