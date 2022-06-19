.class public final Lcom/google/android/gms/internal/ads/a70;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/d60;

.field private b:Lcom/google/android/gms/internal/ads/r03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/e60;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a70;->a:Lcom/google/android/gms/internal/ads/d60;

    return-void
.end method

.method private final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a70;->b:Lcom/google/android/gms/internal/ads/r03;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/vi0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vi0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/a70;->b:Lcom/google/android/gms/internal/ads/r03;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/a70;->a:Lcom/google/android/gms/internal/ads/d60;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/d60;->g(Lcom/google/android/gms/internal/ads/u;)Lcom/google/android/gms/internal/ads/x50;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/w60;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/w60;-><init>(Lcom/google/android/gms/internal/ads/vi0;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/x60;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/x60;-><init>(Lcom/google/android/gms/internal/ads/vi0;)V

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/cj0;->b(Lcom/google/android/gms/internal/ads/zi0;Lcom/google/android/gms/internal/ads/xi0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/j60;Lcom/google/android/gms/internal/ads/i60;)Lcom/google/android/gms/internal/ads/d70;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/j60<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/i60<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/d70<",
            "TI;TO;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/a70;->d()V

    new-instance p1, Lcom/google/android/gms/internal/ads/d70;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a70;->b:Lcom/google/android/gms/internal/ads/r03;

    const-string v1, "google.afma.activeView.handleUpdate"

    .line 2
    invoke-direct {p1, v0, v1, p2, p3}, Lcom/google/android/gms/internal/ads/d70;-><init>(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/String;Lcom/google/android/gms/internal/ads/j60;Lcom/google/android/gms/internal/ads/i60;)V

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/n20<",
            "-",
            "Lcom/google/android/gms/internal/ads/e60;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/a70;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a70;->b:Lcom/google/android/gms/internal/ads/r03;

    new-instance v1, Lcom/google/android/gms/internal/ads/y60;

    .line 2
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/y60;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    .line 4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a70;->b:Lcom/google/android/gms/internal/ads/r03;

    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/n20<",
            "-",
            "Lcom/google/android/gms/internal/ads/e60;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a70;->b:Lcom/google/android/gms/internal/ads/r03;

    new-instance v1, Lcom/google/android/gms/internal/ads/z60;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/z60;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a70;->b:Lcom/google/android/gms/internal/ads/r03;

    return-void
.end method
