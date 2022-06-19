.class public Lcom/google/android/gms/internal/ads/lg2;
.super Lcom/google/android/gms/internal/ads/og2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/i20;


# instance fields
.field protected final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/og2;-><init>()V

    const-string p1, "moov"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lg2;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lg2;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final p(Lcom/google/android/gms/internal/ads/pg2;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/fz;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/pg2;->c()J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/og2;->c:Lcom/google/android/gms/internal/ads/pg2;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/pg2;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/og2;->e:J

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/pg2;->c()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/pg2;->d(J)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/pg2;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/og2;->f:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/og2;->b:Lcom/google/android/gms/internal/ads/fz;

    return-void
.end method

.method public final x(Lcom/google/android/gms/internal/ads/j30;)V
    .locals 0

    return-void
.end method
