.class public final Lcom/google/android/gms/internal/ads/sm2;
.super Lcom/google/android/gms/internal/ads/nm2;
.source ""


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/qm2;

.field public c:Ljava/nio/ByteBuffer;

.field public d:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nm2;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/qm2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/qm2;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sm2;->b:Lcom/google/android/gms/internal/ads/qm2;

    return-void
.end method

.method private final j(I)Ljava/nio/ByteBuffer;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sm2;->c:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Buffer too small ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/nm2;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sm2;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public final h(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sm2;->c:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sm2;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/sm2;->j(I)Ljava/nio/ByteBuffer;

    throw v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/sm2;->j(I)Ljava/nio/ByteBuffer;

    throw v1
.end method

.method public final i()Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/nm2;->g(I)Z

    move-result v0

    return v0
.end method
