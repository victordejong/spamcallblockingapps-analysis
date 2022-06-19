.class public final Lcom/google/android/gms/internal/ads/bix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crs;

.field private final b:Lcom/google/android/gms/internal/ads/crs;

.field private final c:Lcom/google/android/gms/internal/ads/bkc;

.field private final d:Lcom/google/android/gms/internal/ads/dhn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dhn",
            "<",
            "Lcom/google/android/gms/internal/ads/bkz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/crs;Lcom/google/android/gms/internal/ads/crs;Lcom/google/android/gms/internal/ads/bkc;Lcom/google/android/gms/internal/ads/dhn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crs;",
            "Lcom/google/android/gms/internal/ads/crs;",
            "Lcom/google/android/gms/internal/ads/bkc;",
            "Lcom/google/android/gms/internal/ads/dhn",
            "<",
            "Lcom/google/android/gms/internal/ads/bkz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bix;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bix;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bix;->c:Lcom/google/android/gms/internal/ads/bkc;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bix;->d:Lcom/google/android/gms/internal/ads/dhn;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pw;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pw;->d:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->e(Ljava/lang/String;)Z

    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzclc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzclc;-><init>(I)V

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 16
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 17
    const-class v2, Lcom/google/android/gms/internal/ads/zzclc;

    new-instance v3, Lcom/google/android/gms/internal/ads/biy;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/android/gms/internal/ads/biy;-><init>(Lcom/google/android/gms/internal/ads/bix;Lcom/google/android/gms/internal/ads/pw;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bix;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 18
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 19
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bix;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/biw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/biw;-><init>(Lcom/google/android/gms/internal/ads/bix;Lcom/google/android/gms/internal/ads/pw;)V

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 14
    const-class v1, Ljava/util/concurrent/ExecutionException;

    sget-object v2, Lcom/google/android/gms/internal/ads/biz;->a:Lcom/google/android/gms/internal/ads/cqt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bix;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/pw;ILcom/google/android/gms/internal/ads/zzclc;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bix;->d:Lcom/google/android/gms/internal/ads/dhn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dhn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bkz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bkz;->a(Lcom/google/android/gms/internal/ads/pw;I)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/pw;)Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bix;->c:Lcom/google/android/gms/internal/ads/bkc;

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bkc;->a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cx:Lcom/google/android/gms/internal/ads/ect;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/crt;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method
