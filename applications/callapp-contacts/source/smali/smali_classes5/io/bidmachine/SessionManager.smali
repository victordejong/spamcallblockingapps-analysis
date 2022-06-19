.class public Lio/bidmachine/SessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile instance:Lio/bidmachine/SessionManager;


# instance fields
.field private pauseTime:J

.field private resumeTime:J

.field private final sessionAdParamsMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/AdsType;",
            "Lio/bidmachine/SessionAdParams;",
            ">;"
        }
    .end annotation
.end field

.field private sessionDuration:J

.field private sessionId:Ljava/lang/String;

.field private sessionResetAfterSec:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/AdsType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/bidmachine/SessionManager;->sessionAdParamsMap:Ljava/util/EnumMap;

    .line 37
    invoke-virtual {p0}, Lio/bidmachine/SessionManager;->startNewSession()V

    return-void
.end method

.method public static get()Lio/bidmachine/SessionManager;
    .locals 2

    .line 15
    sget-object v0, Lio/bidmachine/SessionManager;->instance:Lio/bidmachine/SessionManager;

    if-nez v0, :cond_1

    .line 17
    const-class v1, Lio/bidmachine/SessionManager;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lio/bidmachine/SessionManager;->instance:Lio/bidmachine/SessionManager;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lio/bidmachine/SessionManager;

    invoke-direct {v0}, Lio/bidmachine/SessionManager;-><init>()V

    .line 21
    sput-object v0, Lio/bidmachine/SessionManager;->instance:Lio/bidmachine/SessionManager;

    .line 23
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method declared-synchronized getSessionAdParams(Lio/bidmachine/AdsType;)Lio/bidmachine/SessionAdParams;
    .locals 2

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/SessionManager;->sessionAdParamsMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/SessionAdParams;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lio/bidmachine/SessionAdParams;

    invoke-direct {v0}, Lio/bidmachine/SessionAdParams;-><init>()V

    .line 90
    iget-object v1, p0, Lio/bidmachine/SessionManager;->sessionAdParamsMap:Ljava/util/EnumMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getSessionDuration()I
    .locals 5

    .line 78
    iget-wide v0, p0, Lio/bidmachine/SessionManager;->resumeTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 81
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/SessionManager;->resumeTime:J

    sub-long/2addr v0, v2

    .line 82
    iget-wide v2, p0, Lio/bidmachine/SessionManager;->sessionDuration:J

    add-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method getSessionId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/bidmachine/SessionManager;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public pause()V
    .locals 6

    .line 70
    iget-wide v0, p0, Lio/bidmachine/SessionManager;->resumeTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/SessionManager;->pauseTime:J

    .line 74
    iget-wide v2, p0, Lio/bidmachine/SessionManager;->sessionDuration:J

    iget-wide v4, p0, Lio/bidmachine/SessionManager;->resumeTime:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/bidmachine/SessionManager;->sessionDuration:J

    return-void
.end method

.method public resume()V
    .locals 9

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/SessionManager;->resumeTime:J

    .line 62
    iget-wide v2, p0, Lio/bidmachine/SessionManager;->sessionResetAfterSec:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    iget-wide v6, p0, Lio/bidmachine/SessionManager;->pauseTime:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_0

    sub-long/2addr v0, v6

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 65
    invoke-virtual {p0}, Lio/bidmachine/SessionManager;->startNewSession()V

    :cond_0
    return-void
.end method

.method public setSessionResetAfter(J)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lio/bidmachine/SessionManager;->sessionResetAfterSec:J

    return-void
.end method

.method startNewSession()V
    .locals 4

    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/SessionManager;->sessionId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lio/bidmachine/SessionManager;->sessionDuration:J

    .line 44
    iput-wide v0, p0, Lio/bidmachine/SessionManager;->pauseTime:J

    .line 45
    iput-wide v0, p0, Lio/bidmachine/SessionManager;->resumeTime:J

    .line 47
    invoke-static {}, Lio/bidmachine/AdsType;->values()[Lio/bidmachine/AdsType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 48
    invoke-virtual {p0, v3}, Lio/bidmachine/SessionManager;->getSessionAdParams(Lio/bidmachine/AdsType;)Lio/bidmachine/SessionAdParams;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/SessionAdParams;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
