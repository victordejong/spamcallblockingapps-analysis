.class final Lcom/google/android/gms/internal/ads/doj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/doh;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/gms/internal/ads/dsk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dog;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dog;->a:Lcom/google/android/gms/internal/ads/dsk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doj;->c:Lcom/google/android/gms/internal/ads/dsk;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doj;->c:Lcom/google/android/gms/internal/ads/dsk;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doj;->c:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/doj;->a:I

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doj;->c:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/doj;->b:I

    .line 6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/doj;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/doj;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doj;->c:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/doj;->a:I

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/doj;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
