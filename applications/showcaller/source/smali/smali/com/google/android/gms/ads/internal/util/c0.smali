.class public final Lcom/google/android/gms/ads/internal/util/c0;
.super Lcom/google/android/gms/internal/ads/pz3;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/oz3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/pz3;-><init>(Lcom/google/android/gms/internal/ads/oz3;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/c0;->d:Landroid/content/Context;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/gz3;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/util/c0;

    new-instance v1, Lcom/google/android/gms/internal/ads/c04;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/google/android/gms/internal/ads/c04;-><init>(Lcom/google/android/gms/internal/ads/b04;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/util/c0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/oz3;)V

    new-instance v1, Ljava/io/File;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "admob_volley"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/gz3;

    new-instance v2, Lcom/google/android/gms/internal/ads/wz3;

    const/high16 v3, 0x1400000

    .line 3
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/wz3;-><init>(Ljava/io/File;I)V

    const/4 v1, 0x4

    .line 4
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/gz3;-><init>(Lcom/google/android/gms/internal/ads/py3;Lcom/google/android/gms/internal/ads/xy3;I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/gz3;->a()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dz3;)Lcom/google/android/gms/internal/ads/zy3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dz3<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zy3;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dz3;->d()I

    move-result v0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dz3;->k()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->R2:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/c0;->d:Landroid/content/Context;

    const v1, 0xcc77c0

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xh0;->l(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/w30;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/c0;->d:Landroid/content/Context;

    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/w30;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/w30;->a(Lcom/google/android/gms/internal/ads/dz3;)Lcom/google/android/gms/internal/ads/zy3;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dz3;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Got gmscore asset response: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dz3;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to get gmscore asset response: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 14
    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/pz3;->a(Lcom/google/android/gms/internal/ads/dz3;)Lcom/google/android/gms/internal/ads/zy3;

    move-result-object p1

    return-object p1
.end method
