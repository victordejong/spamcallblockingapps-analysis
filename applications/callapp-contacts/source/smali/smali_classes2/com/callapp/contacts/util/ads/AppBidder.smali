.class public Lcom/callapp/contacts/util/ads/AppBidder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/ads/AppBidder$BidListener;
    }
.end annotation


# static fields
.field private static B:Z

.field private static C:Z

.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Z

.field public static i:Z

.field private static final n:Landroid/os/HandlerThread;

.field private static o:Landroid/os/Handler;


# instance fields
.field private A:Z

.field private j:Lcom/callapp/contacts/util/ads/JSONBidding;

.field private final k:Landroid/content/Context;

.field private final l:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

.field private m:Ljava/lang/String;

.field private p:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

.field private q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final s:Ljava/lang/Object;

.field private final t:Ljava/lang/Object;

.field private final u:Ljava/lang/Object;

.field private final v:Ljava/lang/Object;

.field private final w:Ljava/lang/Object;

.field private final x:Ljava/lang/Object;

.field private y:D

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 94
    sput-object v0, Lcom/callapp/contacts/util/ads/AppBidder;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 95
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 96
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/callapp/contacts/util/ads/AppBidder;->o:Landroid/os/Handler;

    .line 98
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "BiddingAnalyticsEvents"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "find_ad_flow_started"

    .line 99
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/callapp/contacts/util/ads/AppBidder;->B:Z

    const-string v1, "find_ad_flow_ended"

    .line 100
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/callapp/contacts/util/ads/AppBidder;->C:Z

    const-string v1, "bid_request_sent"

    .line 101
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/callapp/contacts/util/ads/AppBidder;->a:Z

    const-string v1, "bid_response_received"

    .line 102
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/callapp/contacts/util/ads/AppBidder;->b:Z

    const-string v1, "waterfall_flow_started"

    .line 103
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/callapp/contacts/util/ads/AppBidder;->c:Z

    const-string v1, "waterfall_flow_ended"

    .line 104
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    const-string v1, "post_bid_flow_started"

    .line 105
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/callapp/contacts/util/ads/AppBidder;->e:Z

    const-string v1, "post_bid_flow_ended"

    .line 106
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/callapp/contacts/util/ads/AppBidder;->f:Z

    const-string v1, "load_ad_started"

    .line 107
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/callapp/contacts/util/ads/AppBidder;->g:Z

    const-string v1, "load_ad_ended"

    .line 108
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/callapp/contacts/util/ads/AppBidder;->h:Z

    const-string v1, "refresh_ad"

    .line 109
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/callapp/contacts/util/ads/AppBidder;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;F)V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->s:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->t:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->u:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->v:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->w:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->x:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->y:D

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->z:F

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->A:Z

    .line 119
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder;->k:Landroid/content/Context;

    .line 120
    iput-object p3, p0, Lcom/callapp/contacts/util/ads/AppBidder;->l:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    .line 121
    iput p4, p0, Lcom/callapp/contacts/util/ads/AppBidder;->z:F

    .line 124
    :try_start_0
    new-instance p1, Lcom/callapp/contacts/util/ads/AppBidder$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/ads/AppBidder$1;-><init>(Lcom/callapp/contacts/util/ads/AppBidder;)V

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/util/ads/JSONBidding;

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 127
    const-class p2, Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;
    .locals 3

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getClassname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/util/ads/AppBidder;)V
    .locals 2

    .line 4187
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 4189
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->v:Ljava/lang/Object;

    monitor-enter v0

    .line 4190
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder;->v:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 4191
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 4193
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 4194
    :try_start_1
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->s:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 4195
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method static synthetic a(Lcom/callapp/contacts/util/ads/AppBidder;Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONAdUnit;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;ZLcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 9

    .line 5253
    sget-object v0, Lcom/callapp/contacts/util/ads/AppBidder;->o:Landroid/os/Handler;

    new-instance v8, Lcom/callapp/contacts/util/ads/AppBidder$7;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move v6, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/util/ads/AppBidder$7;-><init>(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLandroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V
    .locals 3

    .line 5183
    const-class v0, Lcom/callapp/contacts/util/ads/AppBidder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", waterfall type: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", adUnitId: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONBidder;Ljava/lang/String;)V
    .locals 3

    .line 4179
    const-class v0, Lcom/callapp/contacts/util/ads/AppBidder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", bidder type: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", adUnitId: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", classname: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getClassname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONPostBidder;Ljava/lang/String;)V
    .locals 3

    .line 6175
    const-class v0, Lcom/callapp/contacts/util/ads/AppBidder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", adUnits: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getAdUnits()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", classname: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getClassname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1241
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    goto :goto_0

    :catch_4
    move-exception p0

    .line 1245
    :goto_0
    invoke-static {p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/util/ads/AppBidder;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->k:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/NativeAdParamGetter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->l:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/util/ads/AppBidder;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->A:Z

    return p0
.end method

.method static synthetic g(Lcom/callapp/contacts/util/ads/AppBidder;)V
    .locals 2

    .line 6199
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 6201
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 6202
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder;->w:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 6203
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6205
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 6206
    :try_start_1
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->t:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 6207
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method static synthetic h(Lcom/callapp/contacts/util/ads/AppBidder;)D
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->y:D

    return-wide v0
.end method

.method static synthetic i(Lcom/callapp/contacts/util/ads/AppBidder;)F
    .locals 0

    .line 57
    iget p0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->z:F

    return p0
.end method

.method static synthetic j(Lcom/callapp/contacts/util/ads/AppBidder;)V
    .locals 1

    .line 6211
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 6212
    :try_start_0
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->u:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 6213
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(ZLcom/callapp/contacts/util/ads/AdUtils$AdEvents;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;
    .locals 29

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 132
    const-class v10, Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    .line 2237
    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/mopub/common/CallAppBidderManager;->stopRequest(Ljava/lang/String;)V

    .line 136
    sget-boolean v1, Lcom/callapp/contacts/util/ads/AppBidder;->i:Z

    if-eqz v1, :cond_0

    .line 137
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Ad"

    const-string v3, "refresh_ad"

    const-wide/16 v5, 0x0

    new-array v7, v11, [Ljava/lang/String;

    const-string v4, "oldRequestId"

    aput-object v4, v7, v13

    iget-object v4, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    aput-object v4, v7, v12

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 141
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 144
    iput-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    .line 145
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    const/16 v17, 0x0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBidders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidding;->getWaterfalls()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " starting managed request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    .line 149
    sget-boolean v0, Lcom/callapp/contacts/util/ads/AppBidder;->B:Z

    if-eqz v0, :cond_2

    .line 150
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Ad"

    const-string v2, "find_ad_flow_started"

    iget-object v3, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/common/CallAppBidderManager;->startRequest(Ljava/lang/String;)V

    .line 159
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBidders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBidders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 163
    :goto_0
    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidding;->getWaterfalls()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 164
    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidding;->getWaterfalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 167
    :goto_1
    iget-object v2, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONBidding;->getPostBidders()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 168
    iget-object v2, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONBidding;->getPostBidders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v7, v2

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    add-int v2, v1, v0

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RequestId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", started - bidders: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", waterfalls: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", postBidders: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", backFill: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    if-gtz v2, :cond_8

    .line 175
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidding;->getPostBidders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 1139
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stopping managed request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1140
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/common/CallAppBidderManager;->stopRequest(Ljava/lang/String;)V

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed - no bidders & waterfalls exists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 176
    :cond_8
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    .line 178
    new-instance v6, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {v6}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    .line 179
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 181
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBidders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 182
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBidders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 183
    new-instance v5, Lcom/callapp/contacts/util/ads/AppBidder$2;

    move-object v1, v5

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-object v11, v5

    move-object v5, v14

    move-object v12, v6

    move-object/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/util/ads/AppBidder$2;-><init>(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONBidder;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v12, v11}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    move-object v6, v12

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto :goto_5

    :cond_9
    move-object v12, v6

    .line 278
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidding;->getWaterfalls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 279
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidding;->getWaterfalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 280
    new-instance v11, Lcom/callapp/contacts/util/ads/AppBidder$3;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object v4, v15

    move/from16 v5, p1

    move-object/from16 v6, v20

    move v13, v7

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/util/ads/AppBidder$3;-><init>(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/util/List;ZLjava/util/List;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v12, v11}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    move v7, v13

    const/4 v13, 0x0

    goto :goto_6

    :cond_a
    move v13, v7

    .line 501
    invoke-virtual {v12}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->c()V

    .line 505
    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_0
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->v:Ljava/lang/Object;

    iget-object v2, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONBidding;->getTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_1c

    .line 510
    :catch_0
    :goto_7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    :goto_8
    iget-boolean v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->A:Z

    if-nez v0, :cond_b

    invoke-static/range {v20 .. v20}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_b

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", waiting for result or tasks to complete - remainingRunningTasks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", results is empty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 516
    :try_start_2
    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->s:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 517
    :try_start_3
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->s:Ljava/lang/Object;

    iget-object v2, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONBidding;->getTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 518
    monitor-exit v1

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    nop

    goto :goto_8

    .line 524
    :cond_b
    invoke-virtual {v12}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->d()V

    .line 526
    iget-boolean v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->A:Z

    if-nez v0, :cond_2b

    invoke-static/range {v20 .. v20}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_c

    if-gtz v13, :cond_c

    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 529
    :cond_c
    invoke-static/range {v20 .. v20}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 530
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v1, v17

    :cond_d
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    if-eqz v1, :cond_e

    .line 531
    iget-wide v3, v1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    iget-wide v5, v2, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    cmpg-double v7, v3, v5

    if-gez v7, :cond_d

    :cond_e
    move-object v1, v2

    goto :goto_9

    .line 535
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RequestId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", winner: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_a

    .line 537
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", no winner before going to post bidder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    move-object/from16 v7, v17

    :goto_a
    if-lez v13, :cond_1c

    .line 541
    new-instance v0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    .line 542
    new-instance v6, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    if-eqz v7, :cond_11

    .line 545
    iget-wide v1, v7, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    goto :goto_b

    :cond_11
    const-wide/16 v1, 0x0

    :goto_b
    iput-wide v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->y:D

    .line 546
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 548
    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidding;->getPostBidders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/callapp/contacts/util/ads/JSONPostBidder;

    add-int/lit8 v21, v1, 0x1

    .line 549
    invoke-virtual {v3, v1}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->setIndex(I)V

    .line 550
    new-instance v5, Lcom/callapp/contacts/util/ads/AppBidder$4;

    move-object v1, v5

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-object v11, v5

    move-object/from16 v5, v16

    move-object v12, v6

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/util/ads/AppBidder$4;-><init>(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONPostBidder;ZLjava/util/List;Ljava/util/concurrent/ConcurrentSkipListMap;)V

    invoke-virtual {v0, v11}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    move/from16 v1, v21

    goto :goto_c

    :cond_12
    move-object v12, v6

    .line 666
    invoke-virtual {v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->c()V

    .line 668
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "StopOnFirstPostBidderResult"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 671
    iget-object v2, v8, Lcom/callapp/contacts/util/ads/AppBidder;->w:Ljava/lang/Object;

    monitor-enter v2

    .line 673
    :try_start_5
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->w:Ljava/lang/Object;

    iget-object v3, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONBidding;->getPostBidTimeout()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception v0

    goto :goto_e

    .line 676
    :catch_2
    :goto_d
    :try_start_6
    monitor-exit v2

    goto :goto_f

    :goto_e
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 679
    :cond_13
    :goto_f
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidding;->getPostBidTimeout()J

    move-result-wide v2

    .line 681
    :cond_14
    :goto_10
    iget-boolean v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->A:Z

    if-nez v0, :cond_18

    if-nez v1, :cond_15

    invoke-static/range {v20 .. v20}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_15
    invoke-static {v12}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_18

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "RequestId: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", waiting for posr bidders to complete - remainingPostRunningTasks: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/callapp/contacts/util/ads/AppBidder;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", results is empty: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", postBidderResults is empty: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Map;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 684
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 685
    iget-object v6, v8, Lcom/callapp/contacts/util/ads/AppBidder;->t:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    .line 686
    :try_start_8
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->t:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 687
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v1, :cond_14

    .line 691
    :try_start_9
    invoke-static {v12}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_11

    .line 696
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v4

    sub-long v2, v2, v22

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_14

    .line 700
    invoke-static/range {v20 .. v20}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_11

    .line 705
    :cond_17
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidding;->getPostBidTimeout()J

    move-result-wide v2
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_10

    :catch_3
    nop

    goto/16 :goto_10

    :catchall_3
    move-exception v0

    .line 687
    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3

    .line 715
    :cond_18
    :goto_11
    invoke-static {v12}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 716
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "PriceBasedPostBidderResult"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v0

    .line 717
    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    .line 718
    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 719
    invoke-virtual {v12, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    if-eqz v7, :cond_1a

    if-eqz v2, :cond_19

    .line 720
    iget-wide v3, v7, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    iget-wide v5, v2, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    cmpg-double v11, v3, v5

    if-gez v11, :cond_19

    :cond_1a
    move-object v7, v2

    if-eqz v0, :cond_1b

    goto :goto_12

    .line 728
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", after postBidder - winner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1c
    move-object v0, v7

    .line 732
    iget-boolean v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->A:Z

    const/4 v11, 0x3

    const/4 v12, 0x4

    if-nez v1, :cond_21

    if-nez v0, :cond_21

    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 734
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 735
    sget-boolean v1, Lcom/callapp/contacts/util/ads/AppBidder;->c:Z

    if-eqz v1, :cond_1d

    .line 736
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v22

    const-string v23, "Ad"

    const-string v24, "waterfall_flow_started"

    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    const-wide/16 v26, 0x0

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "placement"

    const/4 v6, 0x0

    aput-object v3, v2, v6

    iget-object v3, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    .line 737
    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v2, v6

    const-string v3, "ad_type"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget-object v3, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    .line 738
    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    move-object/from16 v25, v1

    move-object/from16 v28, v2

    .line 736
    invoke-virtual/range {v22 .. v28}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 740
    :cond_1d
    new-instance v13, Lcom/callapp/contacts/util/ads/AppBidder$5;

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v6, v20

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/util/ads/AppBidder$5;-><init>(Lcom/callapp/contacts/util/ads/AppBidder;ZJLjava/util/List;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    .line 948
    invoke-virtual {v13}, Lcom/callapp/contacts/util/ads/AppBidder$5;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 950
    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 952
    :try_start_c
    iget-object v2, v8, Lcom/callapp/contacts/util/ads/AppBidder;->x:Ljava/lang/Object;

    iget-object v3, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONBidding;->getTimeout()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_13

    :catchall_4
    move-exception v0

    goto :goto_15

    .line 955
    :catch_4
    :goto_13
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 957
    invoke-static/range {v20 .. v20}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 958
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    if-eqz v0, :cond_1f

    .line 959
    iget-wide v3, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    iget-wide v5, v2, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    cmpg-double v7, v3, v5

    if-gez v7, :cond_1e

    :cond_1f
    move-object v0, v2

    goto :goto_14

    .line 964
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", after backfill - winner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_16

    .line 955
    :goto_15
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0

    .line 968
    :cond_21
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stopping managed request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 969
    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/mopub/common/CallAppBidderManager;->stopRequest(Ljava/lang/String;)V

    .line 971
    iget-boolean v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->A:Z

    if-nez v1, :cond_22

    if-eqz v0, :cond_22

    iget-object v1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->bidder:Lcom/callapp/contacts/util/ads/bidder/Bidder;

    if-eqz v1, :cond_22

    .line 973
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 975
    new-instance v2, Lcom/callapp/contacts/util/ads/AppBidder$6;

    invoke-direct {v2, v8, v0, v1, v9}, Lcom/callapp/contacts/util/ads/AppBidder$6;-><init>(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;Ljava/util/concurrent/CountDownLatch;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    .line 1101
    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/AppBidder$6;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1103
    :try_start_f
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_17

    :catch_5
    nop

    goto :goto_17

    :cond_22
    if-nez v0, :cond_23

    .line 1108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", no results"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1111
    :cond_23
    :goto_17
    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->p:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    if-eqz v1, :cond_25

    .line 1112
    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->bidder:Lcom/callapp/contacts/util/ads/bidder/Bidder;

    if-eqz v1, :cond_24

    .line 1113
    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->p:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->bidder:Lcom/callapp/contacts/util/ads/bidder/Bidder;

    invoke-interface {v1}, Lcom/callapp/contacts/util/ads/bidder/Bidder;->destroy()V

    goto :goto_18

    .line 1114
    :cond_24
    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->p:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->waterfall:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    if-eqz v1, :cond_25

    .line 1115
    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->p:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->waterfall:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->destroy()V

    :cond_25
    :goto_18
    if-eqz v0, :cond_26

    .line 1120
    iget-object v1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_26

    .line 1121
    iget-object v1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-interface {v9, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V

    .line 1124
    :cond_26
    sget-boolean v1, Lcom/callapp/contacts/util/ads/AppBidder;->C:Z

    if-eqz v1, :cond_2a

    .line 1125
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    if-eqz v0, :cond_27

    const/4 v6, 0x1

    goto :goto_19

    :cond_27
    const/4 v6, 0x0

    .line 1127
    :goto_19
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v22

    const-string v23, "Ad"

    const-string v24, "find_ad_flow_ended"

    iget-object v3, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    const-wide/16 v26, 0x0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "duration"

    const/4 v7, 0x0

    aput-object v5, v4, v7

    sub-long v1, v1, v18

    .line 1128
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v1, "fill"

    const/4 v2, 0x2

    aput-object v1, v4, v2

    if-eqz v6, :cond_28

    const-string v1, "true"

    goto :goto_1a

    :cond_28
    const-string v1, "false"

    :goto_1a
    aput-object v1, v4, v11

    const-string v1, "price"

    aput-object v1, v4, v12

    const/4 v1, 0x5

    if-eqz v0, :cond_29

    iget-wide v11, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    goto :goto_1b

    :cond_29
    const-wide/16 v11, 0x0

    .line 1130
    :goto_1b
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    move-object/from16 v25, v3

    move-object/from16 v28, v4

    .line 1127
    invoke-virtual/range {v22 .. v28}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 1133
    :cond_2a
    iput-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->p:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    goto :goto_1d

    .line 1136
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", no results and no post bidders defined"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1d

    .line 510
    :goto_1c
    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw v0

    .line 1145
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed - jsonBidding is null or no bidders & waterfalls exists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/callapp/contacts/util/ads/AppBidder;->j:Lcom/callapp/contacts/util/ads/JSONBidding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1149
    :goto_1d
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->p:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    if-eqz v0, :cond_2d

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->bidder:Lcom/callapp/contacts/util/ads/bidder/Bidder;

    goto :goto_1e

    :cond_2d
    move-object/from16 v0, v17

    .line 1150
    :goto_1e
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/util/ads/bidder/Bidder;

    .line 1151
    iget-boolean v3, v8, Lcom/callapp/contacts/util/ads/AppBidder;->A:Z

    if-nez v3, :cond_2f

    if-eq v2, v0, :cond_2e

    .line 1152
    :cond_2f
    invoke-interface {v2}, Lcom/callapp/contacts/util/ads/bidder/Bidder;->notifyLoss()V

    .line 1153
    invoke-interface {v2}, Lcom/callapp/contacts/util/ads/bidder/Bidder;->destroy()V

    goto :goto_1f

    .line 1157
    :cond_30
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/util/ads/bidder/Bidder;

    .line 1158
    iget-boolean v3, v8, Lcom/callapp/contacts/util/ads/AppBidder;->A:Z

    if-nez v3, :cond_32

    if-eq v2, v0, :cond_31

    .line 1159
    :cond_32
    invoke-interface {v2}, Lcom/callapp/contacts/util/ads/bidder/Bidder;->notifyLoss()V

    .line 1160
    invoke-interface {v2}, Lcom/callapp/contacts/util/ads/bidder/Bidder;->destroy()V

    goto :goto_20

    .line 1164
    :cond_33
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->p:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    if-eqz v0, :cond_34

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->waterfall:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    goto :goto_21

    :cond_34
    move-object/from16 v0, v17

    .line 1165
    :goto_21
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_35
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    .line 1166
    iget-boolean v3, v8, Lcom/callapp/contacts/util/ads/AppBidder;->A:Z

    if-nez v3, :cond_36

    if-eq v2, v0, :cond_35

    .line 1167
    :cond_36
    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->destroy()V

    goto :goto_22

    .line 1171
    :cond_37
    iget-object v0, v8, Lcom/callapp/contacts/util/ads/AppBidder;->p:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    return-object v0
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 1217
    iput-boolean v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->A:Z

    .line 1219
    sget-object v0, Lcom/callapp/contacts/util/ads/AppBidder;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1220
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->p:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    if-eqz v0, :cond_3

    .line 1224
    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->bidder:Lcom/callapp/contacts/util/ads/bidder/Bidder;

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->p:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->bidder:Lcom/callapp/contacts/util/ads/bidder/Bidder;

    invoke-interface {v0}, Lcom/callapp/contacts/util/ads/bidder/Bidder;->destroy()V

    goto :goto_0

    .line 1226
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->p:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->waterfall:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    if-eqz v0, :cond_2

    .line 1227
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->p:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->waterfall:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->destroy()V

    .line 1230
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder;->p:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    .line 3237
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/common/CallAppBidderManager;->stopRequest(Ljava/lang/String;)V

    return-void
.end method
