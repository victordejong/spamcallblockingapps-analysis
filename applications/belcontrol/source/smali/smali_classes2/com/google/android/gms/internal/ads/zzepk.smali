.class public abstract Lcom/google/android/gms/internal/ads/zzepk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbs;


# static fields
.field private static zzdc:Lcom/google/android/gms/internal/ads/zzept;


# instance fields
.field private type:Ljava/lang/String;

.field private zzawv:J

.field private zzjaw:Lcom/google/android/gms/internal/ads/zzbr;

.field public zzjay:Z

.field private zzjaz:Z

.field private zzjba:Ljava/nio/ByteBuffer;

.field private zzjbb:J

.field private zzjbc:J

.field private zzjbd:Lcom/google/android/gms/internal/ads/zzepn;

.field private zzjbe:Ljava/nio/ByteBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzepk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzept;->zzn(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzept;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzepk;->zzdc:Lcom/google/android/gms/internal/ads/zzept;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjbc:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjbe:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepk;->type:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjaz:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjay:Z

    return-void
.end method

.method private final declared-synchronized zzbmi()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjaz:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzepk;->zzdc:Lcom/google/android/gms/internal/ads/zzept;

    const-string v1, "mem mapping "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepk;->type:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzept;->zzio(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjbd:Lcom/google/android/gms/internal/ads/zzepn;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjbb:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjbc:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzepn;->zzh(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjba:Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjaz:Z

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjaw:Lcom/google/android/gms/internal/ads/zzbr;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzepn;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzbn;)V
    .locals 4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzepn;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjbb:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzawv:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjbc:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjbd:Lcom/google/android/gms/internal/ads/zzepn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzepn;->position()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzepn;->zzfc(J)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjaz:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjay:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzepk;->zzbmj()V

    return-void
.end method

.method public final declared-synchronized zzbmj()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzepk;->zzbmi()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzepk;->zzdc:Lcom/google/android/gms/internal/ads/zzept;

    const-string v1, "parsing details of "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepk;->type:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzept;->zzio(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjba:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjay:Z

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzepk;->zzl(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjbe:Ljava/nio/ByteBuffer;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->zzjba:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract zzl(Ljava/nio/ByteBuffer;)V
.end method
