.class public final Lcom/google/android/gms/internal/ads/nd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/yc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/yc<",
        "TI;TO;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ad<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bd<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/vc;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vc;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bd;Lcom/google/android/gms/internal/ads/ad;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vc;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bd<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/ad<",
            "TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nd;->c:Lcom/google/android/gms/internal/ads/vc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nd;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/nd;->b:Lcom/google/android/gms/internal/ads/bd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/nd;->a:Lcom/google/android/gms/internal/ads/ad;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/nd;Lcom/google/android/gms/internal/ads/pc;Lcom/google/android/gms/internal/ads/wc;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/fp;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/g9;->p:Lcom/google/android/gms/internal/ads/v9;

    new-instance v2, Lcom/google/android/gms/internal/ads/md;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/md;-><init>(Lcom/google/android/gms/internal/ads/nd;Lcom/google/android/gms/internal/ads/pc;Lcom/google/android/gms/internal/ads/fp;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/v9;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/u9;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nd;->b:Lcom/google/android/gms/internal/ads/bd;

    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/bd;->b(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/nd;->d:Ljava/lang/String;

    invoke-interface {p2, p0, v1}, Lcom/google/android/gms/internal/ads/yb;->m0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/fp;->d(Ljava/lang/Throwable;)Z

    const-string p2, "Unable to invokeJavascript"

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pc;->f()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pc;->f()V

    throw p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/nd;)Lcom/google/android/gms/internal/ads/ad;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/nd;->a:Lcom/google/android/gms/internal/ads/ad;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TO;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/nd;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/fp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fp;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd;->c:Lcom/google/android/gms/internal/ads/vc;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/vc;->b(Lcom/google/android/gms/internal/ads/zh2;)Lcom/google/android/gms/internal/ads/pc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/kd;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/kd;-><init>(Lcom/google/android/gms/internal/ads/nd;Lcom/google/android/gms/internal/ads/pc;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/fp;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/ld;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/ld;-><init>(Lcom/google/android/gms/internal/ads/nd;Lcom/google/android/gms/internal/ads/fp;Lcom/google/android/gms/internal/ads/pc;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/mp;->a(Lcom/google/android/gms/internal/ads/jp;Lcom/google/android/gms/internal/ads/hp;)V

    return-object v0
.end method
