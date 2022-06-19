.class public final Lnet/pubnative/lite/sdk/audience/EventAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/audience/EventAnalytics$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J2\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011J2\u0010\u0014\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011JA\u0010\u0015\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0018JA\u0010\u0019\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0018J2\u0010\u001a\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011J2\u0010\u001b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011J2\u0010\u001c\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011J\u0010\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/audience/EventAnalytics;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "databaseHelper",
        "Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;",
        "buildHybidDb",
        "",
        "fireClickEvent",
        "ad",
        "Lnet/pubnative/lite/sdk/models/Ad;",
        "showTime",
        "",
        "creative_type",
        "",
        "adFormat",
        "adSize",
        "fireImpressionEvent",
        "fireMuteEvent",
        "videoPosition",
        "",
        "(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "fireUnMuteEvent",
        "fireVideoDismissedEvent",
        "fireVideoFinishedEvent",
        "fireVideoStartedEvent",
        "getTimeDifference",
        "Companion",
        "hybid.sdk.core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lnet/pubnative/lite/sdk/audience/EventAnalytics$Companion;

.field private static instance:Lnet/pubnative/lite/sdk/audience/EventAnalytics;


# instance fields
.field private final context:Landroid/content/Context;

.field private databaseHelper:Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/pubnative/lite/sdk/audience/EventAnalytics$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/pubnative/lite/sdk/audience/EventAnalytics$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->Companion:Lnet/pubnative/lite/sdk/audience/EventAnalytics$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->context:Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->buildHybidDb(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lnet/pubnative/lite/sdk/audience/EventAnalytics;
    .locals 1

    .line 10
    sget-object v0, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->instance:Lnet/pubnative/lite/sdk/audience/EventAnalytics;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lnet/pubnative/lite/sdk/audience/EventAnalytics;)V
    .locals 0

    .line 10
    sput-object p0, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->instance:Lnet/pubnative/lite/sdk/audience/EventAnalytics;

    return-void
.end method

.method private final buildHybidDb(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 20
    new-instance v0, Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;

    invoke-direct {v0, p1}, Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->databaseHelper:Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;

    if-eqz v0, :cond_0

    .line 22
    const-class p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;

    invoke-static {p1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;->createTable(Lkotlin/reflect/c;)V

    .line 23
    const-class p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;

    invoke-static {p1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;->createTable(Lkotlin/reflect/c;)V

    .line 24
    const-class p1, Lnet/pubnative/lite/sdk/consent/model/Location;

    invoke-static {p1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;->createTable(Lkotlin/reflect/c;)V

    :cond_0
    return-void
.end method

.method private final getTimeDifference(J)J
    .locals 2

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public final fireClickEvent(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    const-string v1, "adFormat"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSize"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lnet/pubnative/lite/sdk/models/Ad;->getZoneId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v2, 0x0

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-wide/from16 v2, p2

    .line 76
    invoke-direct {p0, v2, v3}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->getTimeDifference(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v2, 0x0

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v3, 0x0

    const-string v5, "click"

    move-object v2, v1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 70
    invoke-direct/range {v2 .. v14}, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    iget-object v2, v0, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->databaseHelper:Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;->insert(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method

.method public final fireImpressionEvent(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    const-string v1, "adFormat"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSize"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lnet/pubnative/lite/sdk/models/Ad;->getZoneId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v2, 0x0

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-wide/from16 v2, p2

    .line 89
    invoke-direct {p0, v2, v3}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->getTimeDifference(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v2, 0x0

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v3, 0x0

    const-string v5, "impression"

    move-object v2, v1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 83
    invoke-direct/range {v2 .. v14}, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    iget-object v2, v0, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->databaseHelper:Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;->insert(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method

.method public final fireMuteEvent(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    const-string v1, "adFormat"

    move-object/from16 v7, p6

    invoke-static {v7, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSize"

    move-object/from16 v8, p7

    invoke-static {v8, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lnet/pubnative/lite/sdk/models/Ad;->getZoneId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v2, 0x0

    .line 105
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-wide/from16 v2, p2

    .line 106
    invoke-direct {p0, v2, v3}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->getTimeDifference(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v3, 0x0

    const-string v5, "video_mute"

    move-object v2, v1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v12, p4

    .line 100
    invoke-direct/range {v2 .. v14}, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    iget-object v2, v0, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->databaseHelper:Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;->insert(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method

.method public final fireUnMuteEvent(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    const-string v1, "adFormat"

    move-object/from16 v7, p6

    invoke-static {v7, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSize"

    move-object/from16 v8, p7

    invoke-static {v8, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance v1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lnet/pubnative/lite/sdk/models/Ad;->getZoneId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v2, 0x0

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-wide/from16 v2, p2

    .line 119
    invoke-direct {p0, v2, v3}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->getTimeDifference(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v3, 0x0

    const-string v5, "video_unmute"

    move-object v2, v1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v12, p4

    .line 113
    invoke-direct/range {v2 .. v14}, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 122
    iget-object v2, v0, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->databaseHelper:Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;->insert(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method

.method public final fireVideoDismissedEvent(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    const-string v1, "adFormat"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSize"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lnet/pubnative/lite/sdk/models/Ad;->getZoneId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v2, 0x0

    .line 48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-wide/from16 v2, p2

    .line 49
    invoke-direct {p0, v2, v3}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->getTimeDifference(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v2, 0x0

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v3, 0x0

    const-string v5, "video_dismissed"

    move-object v2, v1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 43
    invoke-direct/range {v2 .. v14}, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    iget-object v2, v0, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->databaseHelper:Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;->insert(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method

.method public final fireVideoFinishedEvent(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    const-string v1, "adFormat"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSize"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lnet/pubnative/lite/sdk/models/Ad;->getZoneId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v2, 0x0

    .line 62
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-wide/from16 v2, p2

    .line 63
    invoke-direct {p0, v2, v3}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->getTimeDifference(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v2, 0x0

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v3, 0x0

    const-string v5, "video_finished"

    move-object v2, v1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 57
    invoke-direct/range {v2 .. v14}, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    iget-object v2, v0, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->databaseHelper:Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;->insert(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method

.method public final fireVideoStartedEvent(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    const-string v1, "adFormat"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSize"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lnet/pubnative/lite/sdk/models/Ad;->getZoneId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v2, 0x0

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-wide/from16 v2, p2

    .line 36
    invoke-direct {p0, v2, v3}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->getTimeDifference(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v2, 0x0

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v3, 0x0

    const-string v5, "video_started"

    move-object v2, v1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 30
    invoke-direct/range {v2 .. v14}, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    iget-object v2, v0, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->databaseHelper:Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;->insert(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 10
    iget-object v0, p0, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->context:Landroid/content/Context;

    return-object v0
.end method
