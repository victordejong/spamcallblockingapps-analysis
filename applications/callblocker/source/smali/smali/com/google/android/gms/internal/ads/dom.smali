.class final Lcom/google/android/gms/internal/ads/dom;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/doh;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dsk;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dog;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dog;->a:Lcom/google/android/gms/internal/ads/dsk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dom;->a:Lcom/google/android/gms/internal/ads/dsk;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dom;->a:Lcom/google/android/gms/internal/ads/dsk;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dom;->a:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/android/gms/internal/ads/dom;->c:I

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dom;->a:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dom;->b:I

    .line 6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/dom;->b:I

    return v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dom;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dom;->a:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v0

    .line 15
    :goto_0
    return v0

    .line 10
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dom;->c:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dom;->a:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->g()I

    move-result v0

    goto :goto_0

    .line 12
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dom;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dom;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dom;->a:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dom;->e:I

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/ads/dom;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 15
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dom;->e:I

    and-int/lit8 v0, v0, 0xf

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method
