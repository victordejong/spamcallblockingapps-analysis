.class public final Lcom/google/android/gms/ads/internal/util/zzan;
.super Lcom/google/android/gms/internal/ads/sn;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/pq;)V
    .locals 0

    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/sn;-><init>(Lcom/google/android/gms/internal/ads/pq;)V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzan;->context:Landroid/content/Context;

    return-void
.end method

.method public static zzbl(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/dz;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzan;

    new-instance v1, Lcom/google/android/gms/internal/ads/abi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/abi;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/util/zzan;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/pq;)V

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "admob_volley"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/google/android/gms/internal/ads/dz;

    new-instance v2, Lcom/google/android/gms/internal/ads/tl;

    const/high16 v3, 0x1400000

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/tl;-><init>(Ljava/io/File;I)V

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/dz;-><init>(Lcom/google/android/gms/internal/ads/dxu;Lcom/google/android/gms/internal/ads/ehl;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dz;->a()V

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/z;)Lcom/google/android/gms/internal/ads/emg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/emg;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzap;
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z;->zzh()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z;->getMethod()I

    move-result v0

    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->cu:Lcom/google/android/gms/internal/ads/af;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzan;->context:Landroid/content/Context;

    const v1, 0xcc77c0

    .line 20
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yq;->c(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/ih;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzan;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ih;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ih;->zza(Lcom/google/android/gms/internal/ads/z;)Lcom/google/android/gms/internal/ads/emg;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Got gmscore asset response: "

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "Failed to get gmscore asset response: "

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 27
    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/sn;->zza(Lcom/google/android/gms/internal/ads/z;)Lcom/google/android/gms/internal/ads/emg;

    move-result-object p1

    return-object p1
.end method
