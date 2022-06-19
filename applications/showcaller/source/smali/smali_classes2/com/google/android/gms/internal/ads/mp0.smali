.class public final Lcom/google/android/gms/internal/ads/mp0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:I

.field public final b:I

.field public final c:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/mp0;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/mp0;->c:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/mp0;->b:I

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/mp0;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdl;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/mp0;

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/mp0;-><init>(III)V

    return-object p0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdl;->l:Z

    if-eqz v0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/ads/mp0;

    const/4 v0, 0x2

    .line 4
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/mp0;-><init>(III)V

    return-object p0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdl;->k:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/mp0;->b()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdl;->i:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbdl;->f:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/mp0;->c(II)Lcom/google/android/gms/internal/ads/mp0;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/google/android/gms/internal/ads/mp0;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/mp0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/ads/mp0;-><init>(III)V

    return-object v0
.end method

.method public static c(II)Lcom/google/android/gms/internal/ads/mp0;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/mp0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/mp0;-><init>(III)V

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/internal/ads/mp0;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/mp0;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/mp0;-><init>(III)V

    return-object v0
.end method

.method public static e()Lcom/google/android/gms/internal/ads/mp0;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/mp0;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/mp0;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/mp0;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/mp0;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/mp0;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/mp0;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/mp0;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
