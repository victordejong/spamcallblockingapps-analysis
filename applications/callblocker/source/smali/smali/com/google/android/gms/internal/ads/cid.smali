.class public final Lcom/google/android/gms/internal/ads/cid;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/cif;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/ug;

.field private final d:Lcom/google/android/gms/internal/ads/yd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/ug;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cid;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cid;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cid;->d:Lcom/google/android/gms/internal/ads/yd;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cid;->c:Lcom/google/android/gms/internal/ads/ug;

    .line 6
    return-void
.end method

.method private final a()Lcom/google/android/gms/internal/ads/cif;
    .locals 5

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/cif;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cid;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cid;->c:Lcom/google/android/gms/internal/ads/ug;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cid;->c:Lcom/google/android/gms/internal/ads/ug;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ug;->k()Lcom/google/android/gms/internal/ads/ur;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/cif;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uw;Lcom/google/android/gms/internal/ads/ur;Lcom/google/android/gms/internal/ads/cib;)V

    .line 16
    return-object v0
.end method

.method private final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cif;
    .locals 5

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cid;->b:Landroid/content/Context;

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qs;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/qs;

    move-result-object v1

    .line 19
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/qs;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/uz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/uz;-><init>()V

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cid;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 25
    new-instance v2, Lcom/google/android/gms/internal/ads/va;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cid;->c:Lcom/google/android/gms/internal/ads/ug;

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/va;-><init>(Lcom/google/android/gms/internal/ads/uw;Lcom/google/android/gms/internal/ads/uw;)V

    .line 27
    new-instance v3, Lcom/google/android/gms/internal/ads/ur;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/xr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/ads/ur;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/uw;)V

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/cif;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/cif;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uw;Lcom/google/android/gms/internal/ads/ur;Lcom/google/android/gms/internal/ads/cib;)V

    :goto_0
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cid;->a()Lcom/google/android/gms/internal/ads/cif;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cif;
    .locals 2

    .prologue
    .line 7
    if-nez p1, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cid;->a()Lcom/google/android/gms/internal/ads/cif;

    move-result-object v0

    .line 13
    :goto_0
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cid;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cid;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cif;

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cid;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cif;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cid;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
