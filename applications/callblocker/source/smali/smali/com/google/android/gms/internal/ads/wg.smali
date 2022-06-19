.class public final Lcom/google/android/gms/internal/ads/wg;
.super Lcom/google/android/gms/internal/ads/iy;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ga;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/iy;-><init>(Lcom/google/android/gms/internal/ads/ga;)V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wg;->a:Landroid/content/Context;

    .line 10
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/dxq;
    .locals 5

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/wg;

    new-instance v1, Lcom/google/android/gms/internal/ads/ro;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ro;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/wg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ga;)V

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "admob_volley"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/ads/dxq;

    new-instance v3, Lcom/google/android/gms/internal/ads/jy;

    const/high16 v4, 0x1400000

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/internal/ads/jy;-><init>(Ljava/io/File;I)V

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/dxq;-><init>(Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/dqu;)V

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dxq;->a()V

    .line 7
    return-object v2
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dts;)Lcom/google/android/gms/internal/ads/drt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;)",
            "Lcom/google/android/gms/internal/ads/drt;"
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->c()I

    move-result v0

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->e()Ljava/lang/String;

    move-result-object v1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bS:Lcom/google/android/gms/internal/ads/ect;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg;->a:Landroid/content/Context;

    const v1, 0xcc77c0

    .line 20
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xr;->c(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/fu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wg;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/fu;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fu;->a(Lcom/google/android/gms/internal/ads/dts;)Lcom/google/android/gms/internal/ads/drt;

    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    const-string/jumbo v2, "Got gmscore asset response: "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 27
    :goto_1
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_1
    const-string/jumbo v1, "Failed to get gmscore asset response: "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 27
    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/iy;->a(Lcom/google/android/gms/internal/ads/dts;)Lcom/google/android/gms/internal/ads/drt;

    move-result-object v0

    goto :goto_1

    .line 26
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method
