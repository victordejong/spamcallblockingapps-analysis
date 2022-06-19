.class public Lcom/google/android/gms/internal/ads/ji3;
.super Lcom/google/android/gms/internal/ads/mi3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o04;


# instance fields
.field l:Lcom/google/android/gms/internal/ads/p04;

.field protected final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mi3;-><init>()V

    const-string p1, "moov"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ji3;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/p04;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ji3;->l:Lcom/google/android/gms/internal/ads/p04;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ji3;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/ni3;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/l04;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ni3;->c()J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mi3;->g:Lcom/google/android/gms/internal/ads/ni3;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ni3;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/mi3;->i:J

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ni3;->c()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/ni3;->j(J)V

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ni3;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/mi3;->j:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/mi3;->f:Lcom/google/android/gms/internal/ads/l04;

    return-void
.end method
