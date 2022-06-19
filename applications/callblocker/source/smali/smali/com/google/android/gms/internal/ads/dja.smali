.class public final Lcom/google/android/gms/internal/ads/dja;
.super Lcom/google/android/gms/internal/ads/djz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final d:Landroid/app/Activity;

.field private final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;IILandroid/view/View;Landroid/app/Activity;)V
    .locals 7

    .prologue
    .line 1
    const/16 v6, 0x3e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/djz;-><init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V

    .line 2
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/dja;->e:Landroid/view/View;

    .line 3
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/dja;->d:Landroid/app/Activity;

    .line 4
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dja;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 17
    :goto_0
    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aY:Lcom/google/android/gms/internal/ads/ect;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dja;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dja;->e:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dja;->d:Landroid/app/Activity;

    aput-object v4, v3, v6

    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 12
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dja;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dja;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/ads/atw$a$a;->E(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 14
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dja;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/ads/atw$a$a;->F(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 15
    if-eqz v2, :cond_1

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dja;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/atw$a$a;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 17
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
