.class public final Lcom/google/android/gms/internal/ads/afh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field public final b:I

.field public final c:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/ads/afh;->a:I

    .line 16
    iput p2, p0, Lcom/google/android/gms/internal/ads/afh;->c:I

    .line 17
    iput p3, p0, Lcom/google/android/gms/internal/ads/afh;->b:I

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/afh;
    .locals 2

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/afh;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/ads/afh;-><init>(III)V

    return-object v0
.end method

.method public static a(II)Lcom/google/android/gms/internal/ads/afh;
    .locals 2

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/afh;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/afh;-><init>(III)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzvt;)Lcom/google/android/gms/internal/ads/afh;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcir:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Lcom/google/android/gms/internal/ads/afh;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/afh;-><init>(III)V

    return-object p0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcit:Z

    if-eqz v0, :cond_1

    .line 5
    new-instance p0, Lcom/google/android/gms/internal/ads/afh;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/afh;-><init>(III)V

    return-object p0

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzbsb:Z

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/afh;->a()Lcom/google/android/gms/internal/ads/afh;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->widthPixels:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzvt;->heightPixels:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/afh;->a(II)Lcom/google/android/gms/internal/ads/afh;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/google/android/gms/internal/ads/afh;
    .locals 3

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/afh;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/afh;-><init>(III)V

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/internal/ads/afh;
    .locals 3

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/afh;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/afh;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final d()Z
    .locals 2

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/afh;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
