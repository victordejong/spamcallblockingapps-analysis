.class public final Lcom/google/android/gms/internal/ads/ka;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cqt",
        "<TI;TO;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/jh",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/jg",
            "<TI;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/crt;
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
.method constructor <init>(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/jh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/jc;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/jg",
            "<TI;>;",
            "Lcom/google/android/gms/internal/ads/jh",
            "<TO;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ka;->d:Lcom/google/android/gms/internal/ads/crt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ka;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ka;->b:Lcom/google/android/gms/internal/ads/jg;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ka;->a:Lcom/google/android/gms/internal/ads/jh;

    .line 6
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ka;)Lcom/google/android/gms/internal/ads/jh;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ka;->a:Lcom/google/android/gms/internal/ads/jh;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ka;->d:Lcom/google/android/gms/internal/ads/crt;

    new-instance v1, Lcom/google/android/gms/internal/ads/jz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/jz;-><init>(Lcom/google/android/gms/internal/ads/ka;Ljava/lang/Object;)V

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 11
    return-object v0
.end method

.method final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/jc;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4

    .prologue
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ve;->a()Ljava/lang/String;

    move-result-object v1

    .line 15
    sget-object v2, Lcom/google/android/gms/internal/ads/em;->o:Lcom/google/android/gms/internal/ads/fg;

    new-instance v3, Lcom/google/android/gms/internal/ads/kc;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/kc;-><init>(Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/yo;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/fg;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fi;)V

    .line 16
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 17
    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string/jumbo v1, "args"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ka;->b:Lcom/google/android/gms/internal/ads/jg;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/jg;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ka;->c:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Lcom/google/android/gms/internal/ads/jc;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 20
    return-object v0
.end method
