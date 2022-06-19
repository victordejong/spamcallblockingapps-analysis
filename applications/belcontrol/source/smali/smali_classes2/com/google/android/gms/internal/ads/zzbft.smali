.class public final Lcom/google/android/gms/internal/ads/zzbft;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final heightPixels:I

.field private final type:I

.field public final widthPixels:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbft;->type:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbft;->widthPixels:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbft;->heightPixels:I

    return-void
.end method

.method public static zzael()Lcom/google/android/gms/internal/ads/zzbft;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbft;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzbft;-><init>(III)V

    return-object v0
.end method

.method public static zzaem()Lcom/google/android/gms/internal/ads/zzbft;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbft;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbft;-><init>(III)V

    return-object v0
.end method

.method public static zzaen()Lcom/google/android/gms/internal/ads/zzbft;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbft;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbft;-><init>(III)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzbft;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzcig:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbft;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbft;-><init>(III)V

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzcii:Z

    if-eqz v0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbft;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbft;-><init>(III)V

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzbrr:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbft;->zzael()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object p0

    return-object p0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->widthPixels:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzvs;->heightPixels:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbft;->zzq(II)Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object p0

    return-object p0
.end method

.method public static zzq(II)Lcom/google/android/gms/internal/ads/zzbft;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbft;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbft;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final isFluid()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzaeo()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzaep()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzaeq()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzaer()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
