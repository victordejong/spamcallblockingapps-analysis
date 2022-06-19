.class public final Lcom/google/android/gms/internal/ads/ais;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/js;

.field private final c:Ljava/util/concurrent/Executor;

.field private d:Lcom/google/android/gms/internal/ads/ajb;

.field private final e:Lcom/google/android/gms/internal/ads/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/fa",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/fa",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/js;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/aiv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aiv;-><init>(Lcom/google/android/gms/internal/ads/ais;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ais;->e:Lcom/google/android/gms/internal/ads/fa;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/aix;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aix;-><init>(Lcom/google/android/gms/internal/ads/ais;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ais;->f:Lcom/google/android/gms/internal/ads/fa;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ais;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ais;->b:Lcom/google/android/gms/internal/ads/js;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ais;->c:Ljava/util/concurrent/Executor;

    .line 7
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ais;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ais;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ais;Ljava/util/Map;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ais;->a(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private final a(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 21
    if-nez p1, :cond_0

    move v0, v1

    .line 24
    :goto_0
    return v0

    .line 23
    :cond_0
    const-string/jumbo v0, "hashCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ais;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ais;)Lcom/google/android/gms/internal/ads/ajb;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ais;->d:Lcom/google/android/gms/internal/ads/ajb;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ais;->b:Lcom/google/android/gms/internal/ads/js;

    const-string/jumbo v1, "/updateActiveView"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ais;->e:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/js;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ais;->b:Lcom/google/android/gms/internal/ads/js;

    const-string/jumbo v1, "/untrackActiveViewUnit"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ais;->f:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/js;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 20
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/act;)V
    .locals 2

    .prologue
    .line 12
    const-string/jumbo v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ais;->e:Lcom/google/android/gms/internal/ads/fa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 13
    const-string/jumbo v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ais;->f:Lcom/google/android/gms/internal/ads/fa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 14
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ajb;)V
    .locals 3

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ais;->b:Lcom/google/android/gms/internal/ads/js;

    const-string/jumbo v1, "/updateActiveView"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ais;->e:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/js;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ais;->b:Lcom/google/android/gms/internal/ads/js;

    const-string/jumbo v1, "/untrackActiveViewUnit"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ais;->f:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/js;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ais;->d:Lcom/google/android/gms/internal/ads/ajb;

    .line 11
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/act;)V
    .locals 2

    .prologue
    .line 15
    const-string/jumbo v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ais;->e:Lcom/google/android/gms/internal/ads/fa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 16
    const-string/jumbo v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ais;->f:Lcom/google/android/gms/internal/ads/fa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 17
    return-void
.end method
