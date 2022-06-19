.class final Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2$getAdSettings$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$NativeAdLayoutGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "type",
        "getAdLayoutResourceId"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2$getAdSettings$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2$getAdSettings$1;

    invoke-direct {v0}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2$getAdSettings$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2$getAdSettings$1;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2$getAdSettings$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdLayoutResourceId(I)I
    .locals 0

    .line 115
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->getSmallCardAdLayoutResourceId(I)I

    move-result p1

    return p1
.end method
