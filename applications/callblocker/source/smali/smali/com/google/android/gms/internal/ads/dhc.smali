.class public abstract Lcom/google/android/gms/internal/ads/dhc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/adi;


# static fields
.field private static b:Lcom/google/android/gms/internal/ads/dhl;


# instance fields
.field a:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/internal/ads/agj;

.field private e:Z

.field private f:Ljava/nio/ByteBuffer;

.field private g:J

.field private h:J

.field private i:J

.field private j:Lcom/google/android/gms/internal/ads/dhf;

.field private k:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/android/gms/internal/ads/dhc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dhl;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/dhl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dhc;->b:Lcom/google/android/gms/internal/ads/dhl;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dhc;->i:J

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhc;->k:Ljava/nio/ByteBuffer;

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dhc;->c:Ljava/lang/String;

    .line 15
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/dhc;->e:Z

    .line 16
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/dhc;->a:Z

    .line 17
    return-void
.end method

.method private final declared-synchronized b()V
    .locals 6

    .prologue
    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dhc;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/ads/dhc;->b:Lcom/google/android/gms/internal/ads/dhl;

    const-string/jumbo v2, "mem mapping "

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhc;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dhl;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhc;->j:Lcom/google/android/gms/internal/ads/dhf;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dhc;->g:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dhc;->i:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dhf;->a(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhc;->f:Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dhc;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :cond_0
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/agj;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dhc;->d:Lcom/google/android/gms/internal/ads/agj;

    .line 42
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dhf;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/aci;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dhf;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dhc;->g:J

    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dhc;->g:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dhc;->h:J

    .line 20
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/dhc;->i:J

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dhc;->j:Lcom/google/android/gms/internal/ads/dhf;

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dhf;->b()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dhf;->a(J)V

    .line 23
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/dhc;->e:Z

    .line 24
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/dhc;->a:Z

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dhc;->d()V

    .line 26
    return-void
.end method

.method protected abstract a(Ljava/nio/ByteBuffer;)V
.end method

.method public final declared-synchronized d()V
    .locals 4

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dhc;->b()V

    .line 28
    sget-object v1, Lcom/google/android/gms/internal/ads/dhc;->b:Lcom/google/android/gms/internal/ads/dhl;

    const-string/jumbo v2, "parsing details of "

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhc;->c:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dhl;->a(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhc;->f:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhc;->f:Ljava/nio/ByteBuffer;

    .line 33
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dhc;->a:Z

    .line 34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dhc;->a(Ljava/nio/ByteBuffer;)V

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhc;->k:Ljava/nio/ByteBuffer;

    .line 38
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhc;->f:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    monitor-exit p0

    return-void

    .line 30
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
