.class public abstract Lcom/google/android/gms/internal/ads/dhe;
.super Lcom/google/android/gms/internal/ads/dhc;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/adi;


# instance fields
.field private b:I

.field private c:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dhc;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final b(Ljava/nio/ByteBuffer;)J
    .locals 2

    .prologue
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aej;->a(B)I

    move-result v0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/dhe;->b:I

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aej;->b(Ljava/nio/ByteBuffer;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x0

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aej;->a(B)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/dhe;->c:I

    .line 13
    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dhe;->a:Z

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dhc;->d()V

    .line 5
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dhe;->b:I

    return v0
.end method
