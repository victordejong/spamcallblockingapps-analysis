.class public final Lcom/google/android/gms/internal/ads/aei;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:I

.field public final b:I

.field private final c:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/ads/aei;->c:I

    .line 16
    iput p2, p0, Lcom/google/android/gms/internal/ads/aei;->b:I

    .line 17
    iput p3, p0, Lcom/google/android/gms/internal/ads/aei;->a:I

    .line 18
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/aei;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/aei;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/ads/aei;-><init>(III)V

    return-object v0
.end method

.method public static a(II)Lcom/google/android/gms/internal/ads/aei;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/aei;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/aei;-><init>(III)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dyd;)Lcom/google/android/gms/internal/ads/aei;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dyd;->d:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/aei;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/aei;-><init>(III)V

    .line 9
    :goto_0
    return-object v0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dyd;->i:Z

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/aei;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/aei;-><init>(III)V

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dyd;->h:Z

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/aei;->a()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dyd;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dyd;->c:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/aei;->a(II)Lcom/google/android/gms/internal/ads/aei;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()Lcom/google/android/gms/internal/ads/aei;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/aei;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/aei;-><init>(III)V

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/internal/ads/aei;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/aei;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/aei;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final d()Z
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/aei;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/aei;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/ads/aei;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/ads/aei;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/ads/aei;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
