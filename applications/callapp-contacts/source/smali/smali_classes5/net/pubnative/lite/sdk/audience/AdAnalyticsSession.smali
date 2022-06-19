.class public final Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B1\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0014J\u000e\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u0014J\u0006\u0010\u001c\u001a\u00020\u0014J\u000e\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u001aR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;",
        "",
        "context",
        "Landroid/content/Context;",
        "ad",
        "Lnet/pubnative/lite/sdk/models/Ad;",
        "mCreativeType",
        "",
        "mAdFormat",
        "mAdSize",
        "(Landroid/content/Context;Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAd",
        "()Lnet/pubnative/lite/sdk/models/Ad;",
        "getContext",
        "()Landroid/content/Context;",
        "eventAnalytics",
        "Lnet/pubnative/lite/sdk/audience/EventAnalytics;",
        "showTime",
        "",
        "onAdClicked",
        "",
        "onAdDismissed",
        "onAdFinished",
        "onAdImpression",
        "onAdMuted",
        "videoPosition",
        "",
        "onAdShowed",
        "onAdStarted",
        "onAdUnmuted",
        "hybid.sdk.core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final ad:Lnet/pubnative/lite/sdk/models/Ad;

.field private final context:Landroid/content/Context;

.field private final eventAnalytics:Lnet/pubnative/lite/sdk/audience/EventAnalytics;

.field private final mAdFormat:Ljava/lang/String;

.field private final mAdSize:Ljava/lang/String;

.field private final mCreativeType:Ljava/lang/String;

.field private showTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mCreativeType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mAdFormat"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mAdSize"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->context:Landroid/content/Context;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->ad:Lnet/pubnative/lite/sdk/models/Ad;

    iput-object p3, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mCreativeType:Ljava/lang/String;

    iput-object p4, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdFormat:Ljava/lang/String;

    iput-object p5, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdSize:Ljava/lang/String;

    .line 10
    sget-object p2, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->Companion:Lnet/pubnative/lite/sdk/audience/EventAnalytics$Companion;

    invoke-virtual {p2, p1}, Lnet/pubnative/lite/sdk/audience/EventAnalytics$Companion;->getInstance(Landroid/content/Context;)Lnet/pubnative/lite/sdk/audience/EventAnalytics;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->eventAnalytics:Lnet/pubnative/lite/sdk/audience/EventAnalytics;

    return-void
.end method


# virtual methods
.method public final getAd()Lnet/pubnative/lite/sdk/models/Ad;
    .locals 1

    .line 6
    iget-object v0, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->ad:Lnet/pubnative/lite/sdk/models/Ad;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 6
    iget-object v0, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final onAdClicked()V
    .locals 7

    .line 21
    iget-object v0, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->eventAnalytics:Lnet/pubnative/lite/sdk/audience/EventAnalytics;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->ad:Lnet/pubnative/lite/sdk/models/Ad;

    iget-wide v2, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->showTime:J

    iget-object v4, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mCreativeType:Ljava/lang/String;

    iget-object v5, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdFormat:Ljava/lang/String;

    iget-object v6, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdSize:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->fireClickEvent(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onAdDismissed()V
    .locals 7

    .line 29
    iget-object v0, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->eventAnalytics:Lnet/pubnative/lite/sdk/audience/EventAnalytics;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->ad:Lnet/pubnative/lite/sdk/models/Ad;

    iget-wide v2, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->showTime:J

    iget-object v4, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mCreativeType:Ljava/lang/String;

    iget-object v5, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdFormat:Ljava/lang/String;

    iget-object v6, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdSize:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->fireVideoDismissedEvent(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onAdFinished()V
    .locals 7

    .line 25
    iget-object v0, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->eventAnalytics:Lnet/pubnative/lite/sdk/audience/EventAnalytics;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->ad:Lnet/pubnative/lite/sdk/models/Ad;

    iget-wide v2, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->showTime:J

    iget-object v4, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mCreativeType:Ljava/lang/String;

    iget-object v5, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdFormat:Ljava/lang/String;

    iget-object v6, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdSize:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->fireVideoFinishedEvent(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onAdImpression()V
    .locals 7

    .line 17
    iget-object v0, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->eventAnalytics:Lnet/pubnative/lite/sdk/audience/EventAnalytics;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->ad:Lnet/pubnative/lite/sdk/models/Ad;

    iget-wide v2, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->showTime:J

    iget-object v4, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mCreativeType:Ljava/lang/String;

    iget-object v5, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdFormat:Ljava/lang/String;

    iget-object v6, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdSize:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->fireImpressionEvent(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onAdMuted(I)V
    .locals 8

    .line 37
    iget-object v0, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->eventAnalytics:Lnet/pubnative/lite/sdk/audience/EventAnalytics;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->ad:Lnet/pubnative/lite/sdk/models/Ad;

    iget-wide v2, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->showTime:J

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mCreativeType:Ljava/lang/String;

    iget-object v6, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdFormat:Ljava/lang/String;

    iget-object v7, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdSize:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->fireMuteEvent(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onAdShowed()V
    .locals 2

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->showTime:J

    return-void
.end method

.method public final onAdStarted()V
    .locals 7

    .line 33
    iget-object v0, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->eventAnalytics:Lnet/pubnative/lite/sdk/audience/EventAnalytics;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->ad:Lnet/pubnative/lite/sdk/models/Ad;

    iget-wide v2, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->showTime:J

    iget-object v4, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mCreativeType:Ljava/lang/String;

    iget-object v5, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdFormat:Ljava/lang/String;

    iget-object v6, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdSize:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->fireVideoStartedEvent(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onAdUnmuted(I)V
    .locals 8

    .line 41
    iget-object v0, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->eventAnalytics:Lnet/pubnative/lite/sdk/audience/EventAnalytics;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->ad:Lnet/pubnative/lite/sdk/models/Ad;

    iget-wide v2, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->showTime:J

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mCreativeType:Ljava/lang/String;

    iget-object v6, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdFormat:Ljava/lang/String;

    iget-object v7, p0, Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;->mAdSize:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->fireUnMuteEvent(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
