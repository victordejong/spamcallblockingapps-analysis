.class public final Lcom/google/android/gms/internal/ads/jo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/jf",
        "<TI;TO;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
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

.field private final c:Lcom/google/android/gms/internal/ads/id;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/id;Ljava/lang/String;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/jh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/id;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jo;->c:Lcom/google/android/gms/internal/ads/id;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jo;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jo;->b:Lcom/google/android/gms/internal/ads/jg;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/jo;->a:Lcom/google/android/gms/internal/ads/jh;

    .line 6
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/jo;)Lcom/google/android/gms/internal/ads/jh;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jo;->a:Lcom/google/android/gms/internal/ads/jh;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/iq;Lcom/google/android/gms/internal/ads/jc;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/iq;",
            "Lcom/google/android/gms/internal/ads/jc;",
            "TI;",
            "Lcom/google/android/gms/internal/ads/yo",
            "<TO;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ve;->a()Ljava/lang/String;

    move-result-object v0

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/em;->o:Lcom/google/android/gms/internal/ads/fg;

    new-instance v2, Lcom/google/android/gms/internal/ads/jt;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/jt;-><init>(Lcom/google/android/gms/internal/ads/jo;Lcom/google/android/gms/internal/ads/iq;Lcom/google/android/gms/internal/ads/yo;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/fg;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fi;)V

    .line 16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 17
    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string/jumbo v0, "args"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jo;->b:Lcom/google/android/gms/internal/ads/jg;

    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/jg;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jo;->d:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/jc;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    :try_start_1
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    .line 23
    const-string/jumbo v1, "Unable to invokeJavascript"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/iq;->a()V

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/iq;->a()V

    .line 27
    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/jo;Lcom/google/android/gms/internal/ads/iq;Lcom/google/android/gms/internal/ads/jc;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/jo;->a(Lcom/google/android/gms/internal/ads/iq;Lcom/google/android/gms/internal/ads/jc;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/yo;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/jo;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jo;->c:Lcom/google/android/gms/internal/ads/id;

    .line 10
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/id;->b(Lcom/google/android/gms/internal/ads/ctl;)Lcom/google/android/gms/internal/ads/iq;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/jr;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>(Lcom/google/android/gms/internal/ads/jo;Lcom/google/android/gms/internal/ads/iq;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/yo;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/jq;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/ads/jq;-><init>(Lcom/google/android/gms/internal/ads/jo;Lcom/google/android/gms/internal/ads/yo;Lcom/google/android/gms/internal/ads/iq;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/yv;->a(Lcom/google/android/gms/internal/ads/ys;Lcom/google/android/gms/internal/ads/yq;)V

    .line 13
    return-object v0
.end method
