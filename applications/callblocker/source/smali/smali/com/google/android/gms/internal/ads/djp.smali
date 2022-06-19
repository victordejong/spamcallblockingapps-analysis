.class public final Lcom/google/android/gms/internal/ads/djp;
.super Lcom/google/android/gms/internal/ads/djz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V
    .locals 7

    .prologue
    .line 1
    const/16 v6, 0x1f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/djz;-><init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/djp;->d:Ljava/util/List;

    .line 3
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djp;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/atw$a$a;->m(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djp;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/atw$a$a;->n(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djp;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djp;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/djp;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/din;->a()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/djp;->d:Ljava/util/List;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djp;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djp;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/djp;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djp;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djp;->d:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/atw$a$a;->m(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djp;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djp;->d:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/atw$a$a;->n(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 12
    monitor-exit v1

    .line 13
    :cond_1
    return-void

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
