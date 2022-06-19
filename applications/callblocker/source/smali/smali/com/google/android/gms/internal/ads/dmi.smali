.class final Lcom/google/android/gms/internal/ads/dmi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dls;


# instance fields
.field private b:I

.field private c:I

.field private d:[I

.field private e:Z

.field private f:[I

.field private g:Ljava/nio/ByteBuffer;

.field private h:Ljava/nio/ByteBuffer;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/dmi;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmi;->g:Ljava/nio/ByteBuffer;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dmi;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmi;->h:Ljava/nio/ByteBuffer;

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmi;->b:I

    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmi;->c:I

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 7

    .prologue
    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 33
    sub-int v1, v2, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/dmi;->b:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v1, v3

    .line 34
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmi;->f:[I

    array-length v3, v3

    mul-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x1

    .line 35
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmi;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 36
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dmi;->g:Ljava/nio/ByteBuffer;

    move v1, v0

    .line 38
    :goto_0
    if-ge v1, v2, :cond_2

    .line 39
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmi;->f:[I

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    aget v5, v3, v0

    .line 40
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dmi;->g:Ljava/nio/ByteBuffer;

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmi;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move v1, v0

    goto :goto_0

    .line 42
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmi;->b:I

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmi;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmi;->g:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmi;->h:Ljava/nio/ByteBuffer;

    .line 46
    return-void
.end method

.method public final a([I)V
    .locals 0

    .prologue
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dmi;->d:[I

    .line 8
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmi;->e:Z

    return v0
.end method

.method public final a(III)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmi;->d:[I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmi;->f:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmi;->d:[I

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dmi;->f:[I

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmi;->f:[I

    if-nez v3, :cond_1

    .line 12
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/dmi;->e:Z

    .line 27
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 9
    goto :goto_0

    .line 14
    :cond_1
    const/4 v3, 0x2

    if-eq p3, v3, :cond_2

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhu;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhu;-><init>(III)V

    throw v0

    .line 16
    :cond_2
    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/dmi;->c:I

    if-ne v0, p1, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/dmi;->b:I

    if-ne v0, p2, :cond_3

    move v0, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/dmi;->c:I

    .line 19
    iput p2, p0, Lcom/google/android/gms/internal/ads/dmi;->b:I

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmi;->f:[I

    array-length v0, v0

    if-eq p2, v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmi;->e:Z

    move v0, v2

    .line 21
    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmi;->f:[I

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmi;->f:[I

    aget v3, v3, v0

    .line 23
    if-lt v3, p2, :cond_5

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhu;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhu;-><init>(III)V

    throw v0

    :cond_4
    move v0, v2

    .line 20
    goto :goto_2

    .line 25
    :cond_5
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/dmi;->e:Z

    if-eq v3, v0, :cond_6

    move v3, v1

    :goto_4
    or-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/dmi;->e:Z

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v3, v2

    .line 25
    goto :goto_4

    :cond_7
    move v0, v1

    .line 27
    goto :goto_1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmi;->f:[I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dmi;->b:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmi;->f:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x2

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmi;->i:Z

    .line 48
    return-void
.end method

.method public final e()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmi;->h:Ljava/nio/ByteBuffer;

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/ads/dmi;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dmi;->h:Ljava/nio/ByteBuffer;

    .line 51
    return-object v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmi;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmi;->h:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/dmi;->a:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/gms/internal/ads/dmi;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmi;->h:Ljava/nio/ByteBuffer;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmi;->i:Z

    .line 55
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dmi;->g()V

    .line 57
    sget-object v0, Lcom/google/android/gms/internal/ads/dmi;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmi;->g:Ljava/nio/ByteBuffer;

    .line 58
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmi;->b:I

    .line 59
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmi;->c:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmi;->f:[I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmi;->e:Z

    .line 62
    return-void
.end method
