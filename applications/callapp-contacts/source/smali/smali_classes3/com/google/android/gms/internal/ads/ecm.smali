.class public final Lcom/google/android/gms/internal/ads/ecm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/ExecutorService;

.field b:Lcom/google/android/gms/internal/ads/eco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/eco<",
            "+",
            "Lcom/google/android/gms/internal/ads/ecn;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ede;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ecm;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ecn;Lcom/google/android/gms/internal/ads/eck;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/ecn;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/eck<",
            "TT;>;I)J"
        }
    .end annotation

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 7
    new-instance v10, Lcom/google/android/gms/internal/ads/eco;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/eco;-><init>(Lcom/google/android/gms/internal/ads/ecm;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/ecn;Lcom/google/android/gms/internal/ads/eck;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/google/android/gms/internal/ads/eco;->a(J)V

    return-wide v8
.end method

.method public final a()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ecm;->b:Lcom/google/android/gms/internal/ads/eco;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ecm;->b:Lcom/google/android/gms/internal/ads/eco;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/eco;->a(Z)V

    return-void
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ecm;->c:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ecm;->b:Lcom/google/android/gms/internal/ads/eco;

    if-eqz v0, :cond_0

    .line 21
    iget v1, v0, Lcom/google/android/gms/internal/ads/eco;->a:I

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/eco;->a(I)V

    :cond_0
    return-void

    .line 18
    :cond_1
    throw v0
.end method
