.class public final Lcom/google/android/gms/internal/ads/dxm;
.super Lcom/google/android/gms/internal/ads/dxg;
.source "SourceFile"


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/dxj;

.field public c:Ljava/nio/ByteBuffer;

.field public d:J

.field private final e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dxg;-><init>()V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/dxj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dxj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dxm;->b:Lcom/google/android/gms/internal/ads/dxj;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/dxm;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 21
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dxg;->a()V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxm;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method final b(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxm;->c:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 26
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Buffer too small ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final e()Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dxg;->a(I)Z

    move-result v0

    return v0
.end method
