.class public final Lcom/google/android/gms/internal/ads/js;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/id;

.field private b:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/jc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/id;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/js;->a:Lcom/google/android/gms/internal/ads/id;

    .line 3
    return-void
.end method

.method private final a()V
    .locals 4

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/js;->b:Lcom/google/android/gms/internal/ads/crt;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/js;->b:Lcom/google/android/gms/internal/ads/crt;

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/js;->a:Lcom/google/android/gms/internal/ads/id;

    .line 10
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/id;->b(Lcom/google/android/gms/internal/ads/ctl;)Lcom/google/android/gms/internal/ads/iq;

    move-result-object v1

    .line 11
    new-instance v2, Lcom/google/android/gms/internal/ads/jv;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/jv;-><init>(Lcom/google/android/gms/internal/ads/yo;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/ju;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/ju;-><init>(Lcom/google/android/gms/internal/ads/yo;)V

    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/yv;->a(Lcom/google/android/gms/internal/ads/ys;Lcom/google/android/gms/internal/ads/yq;)V

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/jh;)Lcom/google/android/gms/internal/ads/ka;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/jg",
            "<TI;>;",
            "Lcom/google/android/gms/internal/ads/jh",
            "<TO;>;)",
            "Lcom/google/android/gms/internal/ads/ka",
            "<TI;TO;>;"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/js;->a()V

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/ka;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/js;->b:Lcom/google/android/gms/internal/ads/crt;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ka;-><init>(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/jh;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/jc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/js;->a()V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/js;->b:Lcom/google/android/gms/internal/ads/crt;

    new-instance v1, Lcom/google/android/gms/internal/ads/jx;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/jx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 18
    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 19
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/js;->b:Lcom/google/android/gms/internal/ads/crt;

    .line 20
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/jc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/js;->b:Lcom/google/android/gms/internal/ads/crt;

    new-instance v1, Lcom/google/android/gms/internal/ads/jw;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/jw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 22
    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 23
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/js;->b:Lcom/google/android/gms/internal/ads/crt;

    .line 24
    return-void
.end method
