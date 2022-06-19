.class public final Lcom/google/android/gms/internal/ads/r13;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/d93;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/d93;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r13;->a:Lcom/google/android/gms/internal/ads/d93;

    return-void
.end method

.method public static c(Ljava/lang/String;[BI)Lcom/google/android/gms/internal/ads/r13;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/r13;

    invoke-static {}, Lcom/google/android/gms/internal/ads/d93;->E()Lcom/google/android/gms/internal/ads/c93;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/c93;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/c93;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/c93;->r(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/c93;

    add-int/lit8 p2, p2, -0x1

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    if-eq p2, p0, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    .line 4
    :goto_0
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/c93;->s(I)Lcom/google/android/gms/internal/ads/c93;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/d93;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/r13;-><init>(Lcom/google/android/gms/internal/ads/d93;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r13;->a:Lcom/google/android/gms/internal/ads/d93;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d93;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r13;->a:Lcom/google/android/gms/internal/ads/d93;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d93;->D()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r13;->a:Lcom/google/android/gms/internal/ads/d93;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d93;->J()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown output prefix type"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1
.end method
