.class public final Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/NativeAdParamGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\u0003H\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0003H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2",
        "Lcom/callapp/contacts/util/ads/NativeAdParamGetter;",
        "getAdSettings",
        "Lcom/callapp/contacts/util/ads/AdSettings;",
        "adUnitId",
        "",
        "getDesiredAssets",
        "Ljava/util/EnumSet;",
        "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
        "adSettings",
        "getViewBinder",
        "Lcom/mopub/nativeads/ViewBinder;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;
    .locals 2

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2$getAdSettings$1;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2$getAdSettings$1;

    check-cast v0, Lcom/callapp/contacts/util/ads/AdUtils$NativeAdLayoutGetter;

    const-string v1, "NotAnsweredSummaryExperiments"

    invoke-static {p1, v1, v0}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$NativeAdLayoutGetter;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    const-string v0, "AdUtils.getAdSettingsFor\u2026dLayoutResourceId(type) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;
    .locals 1

    const-string v0, "adSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object p1

    const-string v0, "AdUtils.getSmallCardViewBinder(adSettings)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/util/ads/AdSettings;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;"
        }
    .end annotation

    const-string v0, "adSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;

    move-result-object p1

    const-string v0, "AdUtils.getSmallCardDesiredAssets(adSettings)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
