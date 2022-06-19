.class public Lcom/google/android/gms/internal/ads/dmp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmp;->a:I

    .line 3
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/dmp;->a:I

    .line 8
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmp;->a:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmp;->a:I

    .line 10
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 4
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dmp;->c(I)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dmp;->c(I)Z

    move-result v0

    return v0
.end method

.method protected final c(I)Z
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmp;->a:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dmp;->c(I)Z

    move-result v0

    return v0
.end method
