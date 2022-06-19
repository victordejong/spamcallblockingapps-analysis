.class public final Lcom/google/android/gms/internal/ads/nk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/act;

.field private final b:Z

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/act;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/act;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nk;->a:Lcom/google/android/gms/internal/ads/act;

    .line 3
    const-string/jumbo v0, "forceOrientation"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/nk;->c:Ljava/lang/String;

    .line 4
    const-string/jumbo v0, "allowOrientationChange"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-string/jumbo v0, "allowOrientationChange"

    .line 6
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/nk;->b:Z

    .line 8
    :goto_0
    return-void

    .line 7
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/nk;->b:Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nk;->a:Lcom/google/android/gms/internal/ads/act;

    if-nez v0, :cond_0

    .line 10
    const-string/jumbo v0, "AdWebView is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 20
    :goto_0
    return-void

    .line 12
    :cond_0
    const-string/jumbo v0, "portrait"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    const/4 v0, 0x7

    .line 19
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nk;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/act;->setRequestedOrientation(I)V

    goto :goto_0

    .line 14
    :cond_1
    const-string/jumbo v0, "landscape"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    const/4 v0, 0x6

    goto :goto_1

    .line 16
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/nk;->b:Z

    if-eqz v0, :cond_3

    .line 17
    const/4 v0, -0x1

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vj;->a()I

    move-result v0

    goto :goto_1
.end method
