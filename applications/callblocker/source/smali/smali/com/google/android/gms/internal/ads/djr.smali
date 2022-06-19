.class public final Lcom/google/android/gms/internal/ads/djr;
.super Lcom/google/android/gms/internal/ads/djz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final d:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II[Ljava/lang/StackTraceElement;)V
    .locals 7

    .prologue
    .line 1
    const/16 v6, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/djz;-><init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V

    .line 2
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/djr;->d:[Ljava/lang/StackTraceElement;

    .line 3
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djr;->d:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djr;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/djr;->d:[Ljava/lang/StackTraceElement;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/dij;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/dij;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djr;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djr;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dij;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/atw$a$a;->x(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dij;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/djr;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 11
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dij;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/bce;->a:Lcom/google/android/gms/internal/ads/bce;

    .line 14
    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/atw$a$a;->c(Lcom/google/android/gms/internal/ads/bce;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 16
    :goto_1
    monitor-exit v2

    .line 17
    :cond_0
    return-void

    .line 13
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/bce;->b:Lcom/google/android/gms/internal/ads/bce;

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djr;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    sget-object v1, Lcom/google/android/gms/internal/ads/bce;->c:Lcom/google/android/gms/internal/ads/bce;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/atw$a$a;->c(Lcom/google/android/gms/internal/ads/bce;)Lcom/google/android/gms/internal/ads/atw$a$a;

    goto :goto_1

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
