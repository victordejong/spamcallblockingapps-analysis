.class public Lcom/google/android/gms/internal/ads/drp;
.super Lcom/google/android/gms/internal/ads/drr;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aqp;


# instance fields
.field private f:Lcom/google/android/gms/internal/ads/apo;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/drr;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drp;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drp;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/apo;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drp;->f:Lcom/google/android/gms/internal/ads/apo;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/drt;JLcom/google/android/gms/internal/ads/alm;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drp;->b:Lcom/google/android/gms/internal/ads/drt;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/drt;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/drp;->c:J

    .line 13
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/drp;->c:J

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/drp;->h:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x8

    add-long/2addr v2, p2

    const-wide v4, 0x100000000L

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v2, 0x10

    :goto_1
    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/drp;->d:J

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/drt;->b()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/drt;->a(J)V

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/drt;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/drp;->e:J

    .line 16
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/drp;->a:Lcom/google/android/gms/internal/ads/alm;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/drt;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/alm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/drt;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/drp;->i:J

    .line 8
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/drp;->h:Z

    .line 9
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/drr;->a(Lcom/google/android/gms/internal/ads/drt;JLcom/google/android/gms/internal/ads/alm;)V

    return-void
.end method
