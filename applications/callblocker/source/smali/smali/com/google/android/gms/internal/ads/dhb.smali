.class public Lcom/google/android/gms/internal/ads/dhb;
.super Lcom/google/android/gms/internal/ads/dhd;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/adi;


# instance fields
.field private f:Lcom/google/android/gms/internal/ads/agj;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dhd;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dhb;->g:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhb;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/agj;)V
    .locals 0

    .prologue
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dhb;->f:Lcom/google/android/gms/internal/ads/agj;

    .line 5
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dhf;JLcom/google/android/gms/internal/ads/aci;)V
    .locals 6

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dhb;->b:Lcom/google/android/gms/internal/ads/dhf;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dhf;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dhb;->c:J

    .line 13
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dhb;->c:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dhb;->h:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    const-wide v4, 0x100000000L

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    :cond_0
    const/16 v0, 0x10

    :goto_0
    int-to-long v0, v0

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dhb;->d:J

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dhf;->b()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dhf;->a(J)V

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dhf;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dhb;->e:J

    .line 16
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dhb;->a:Lcom/google/android/gms/internal/ads/aci;

    .line 17
    return-void

    .line 13
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dhf;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/aci;)V
    .locals 5

    .prologue
    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dhf;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dhb;->i:J

    .line 8
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dhb;->h:Z

    .line 9
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/dhd;->a(Lcom/google/android/gms/internal/ads/dhf;JLcom/google/android/gms/internal/ads/aci;)V

    .line 10
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
