.class public final Lcom/google/android/gms/internal/ads/v60;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/g60;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/g60<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/i60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/i60<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/j60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/j60<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/d60;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d60;Ljava/lang/String;Lcom/google/android/gms/internal/ads/j60;Lcom/google/android/gms/internal/ads/i60;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/d60;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/j60<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/i60<",
            "TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v60;->c:Lcom/google/android/gms/internal/ads/d60;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/v60;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/v60;->b:Lcom/google/android/gms/internal/ads/j60;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/v60;->a:Lcom/google/android/gms/internal/ads/i60;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/v60;)Lcom/google/android/gms/internal/ads/i60;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/v60;->a:Lcom/google/android/gms/internal/ads/i60;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/v60;Lcom/google/android/gms/internal/ads/x50;Lcom/google/android/gms/internal/ads/e60;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/vi0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/x50;",
            "Lcom/google/android/gms/internal/ads/e60;",
            "TI;",
            "Lcom/google/android/gms/internal/ads/vi0<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/m20;->o:Lcom/google/android/gms/internal/ads/c30;

    new-instance v2, Lcom/google/android/gms/internal/ads/u60;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/u60;-><init>(Lcom/google/android/gms/internal/ads/v60;Lcom/google/android/gms/internal/ads/x50;Lcom/google/android/gms/internal/ads/vi0;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/c30;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/b30;)V

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 5
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/v60;->b:Lcom/google/android/gms/internal/ads/j60;

    .line 6
    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/j60;->b(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/v60;->d:Ljava/lang/String;

    .line 7
    invoke-interface {p2, p0, v1}, Lcom/google/android/gms/internal/ads/g50;->E0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 8
    :try_start_1
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/vi0;->f(Ljava/lang/Throwable;)Z

    const-string p2, "Unable to invokeJavascript"

    .line 9
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x50;->g()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x50;->g()V

    .line 11
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TO;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/v60;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/vi0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vi0;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v60;->c:Lcom/google/android/gms/internal/ads/d60;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/d60;->g(Lcom/google/android/gms/internal/ads/u;)Lcom/google/android/gms/internal/ads/x50;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/s60;

    .line 3
    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/s60;-><init>(Lcom/google/android/gms/internal/ads/v60;Lcom/google/android/gms/internal/ads/x50;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/vi0;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/t60;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/t60;-><init>(Lcom/google/android/gms/internal/ads/v60;Lcom/google/android/gms/internal/ads/vi0;Lcom/google/android/gms/internal/ads/x50;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/cj0;->b(Lcom/google/android/gms/internal/ads/zi0;Lcom/google/android/gms/internal/ads/xi0;)V

    return-object v0
.end method
