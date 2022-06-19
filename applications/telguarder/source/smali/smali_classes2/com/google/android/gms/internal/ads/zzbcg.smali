.class public final Lcom/google/android/gms/internal/ads/zzbcg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzon;


# instance fields
.field private final context:Landroid/content/Context;

.field private isOpen:Z

.field private uri:Landroid/net/Uri;

.field private zzbvh:Z

.field private zzbvj:J

.field private zzbvk:Z

.field private final zzbvs:Ljava/lang/String;

.field private final zzbvt:I

.field private final zzenv:Lcom/google/android/gms/internal/ads/zzpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzpd<",
            "Lcom/google/android/gms/internal/ads/zzon;",
            ">;"
        }
    .end annotation
.end field

.field private final zzenw:Lcom/google/android/gms/internal/ads/zzon;

.field private final zzenx:Lcom/google/android/gms/internal/ads/zzbci;

.field private final zzeny:Z

.field private zzenz:Ljava/io/InputStream;

.field private volatile zzeoa:Lcom/google/android/gms/internal/ads/zzth;

.field private zzeob:Z

.field private zzeoc:Z

.field private zzeod:Lcom/google/android/gms/internal/ads/zzdzw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzeoe:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzon;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzpd;Lcom/google/android/gms/internal/ads/zzbci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzon;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/ads/zzpd<",
            "Lcom/google/android/gms/internal/ads/zzon;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzbci;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenw:Lcom/google/android/gms/internal/ads/zzon;

    .line 4
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenv:Lcom/google/android/gms/internal/ads/zzpd;

    .line 5
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenx:Lcom/google/android/gms/internal/ads/zzbci;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvs:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvt:I

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvh:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeob:Z

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvk:Z

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoc:Z

    const-wide/16 p1, 0x0

    .line 12
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvj:J

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoe:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeod:Lcom/google/android/gms/internal/ads/zzdzw;

    .line 15
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcrm:Lcom/google/android/gms/internal/ads/zzaba;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeny:Z

    return-void
.end method

.method private final zzacg()Z
    .locals 4

    .line 161
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeny:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 163
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcuk:Lcom/google/android/gms/internal/ads/zzaba;

    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvk:Z

    if-nez v0, :cond_1

    return v2

    .line 167
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcul:Lcom/google/android/gms/internal/ads/zzaba;

    .line 168
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoc:Z

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzos;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenv:Lcom/google/android/gms/internal/ads/zzpd;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzpd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzos;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->isOpen:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->isOpen:Z

    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->uri:Landroid/net/Uri;

    .line 23
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeny:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenz:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 24
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenz:Ljava/io/InputStream;

    if-eqz v2, :cond_2

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 26
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenz:Ljava/io/InputStream;

    goto :goto_0

    .line 27
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenw:Lcom/google/android/gms/internal/ads/zzon;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzon;->close()V

    :goto_0
    if-eqz v0, :cond_3

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenv:Lcom/google/android/gms/internal/ads/zzpd;

    if-eqz v0, :cond_3

    .line 31
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzpd;->zze(Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 20
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getContentLength()J
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoe:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoe:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    .line 146
    :cond_1
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeod:Lcom/google/android/gms/internal/ads/zzdzw;

    if-nez v0, :cond_2

    .line 148
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbcf;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzbcf;-><init>(Lcom/google/android/gms/internal/ads/zzbcg;)V

    .line 149
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeod:Lcom/google/android/gms/internal/ads/zzdzw;

    .line 150
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeod:Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdzw;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    return-wide v1

    .line 153
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoe:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeod:Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdzw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoe:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :catch_0
    return-wide v1

    :catchall_0
    move-exception v0

    .line 150
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->isOpen:Z

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenz:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenw:Lcom/google/android/gms/internal/ads/zzon;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzon;->read([BII)I

    move-result p1

    .line 131
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeny:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenz:Ljava/io/InputStream;

    if-eqz p2, :cond_2

    .line 133
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenv:Lcom/google/android/gms/internal/ads/zzpd;

    if-eqz p2, :cond_2

    .line 134
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzpd;->zzc(Ljava/lang/Object;I)V

    :cond_2
    return p1

    .line 127
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed CacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzos;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Cache connection took "

    .line 33
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbcg;->isOpen:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    .line 35
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbcg;->isOpen:Z

    .line 36
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzos;->uri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcg;->uri:Landroid/net/Uri;

    .line 37
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeny:Z

    if-nez v3, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzos;)V

    .line 39
    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzos;->uri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzth;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    .line 40
    sget-object v3, Lcom/google/android/gms/internal/ads/zzabp;->zzcuh:Lcom/google/android/gms/internal/ads/zzaba;

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 43
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    if-eqz v3, :cond_7

    .line 44
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzos;->position:J

    iput-wide v7, v3, Lcom/google/android/gms/internal/ads/zzth;->zzbvr:J

    .line 45
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvs:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzdwt;->zzhm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/google/android/gms/internal/ads/zzth;->zzbvs:Ljava/lang/String;

    .line 46
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvt:I

    iput v7, v3, Lcom/google/android/gms/internal/ads/zzth;->zzbvt:I

    .line 47
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzth;->zzbvq:Z

    if-eqz v3, :cond_1

    .line 48
    sget-object v3, Lcom/google/android/gms/internal/ads/zzabp;->zzcuj:Lcom/google/android/gms/internal/ads/zzaba;

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/Long;

    goto :goto_0

    .line 51
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzabp;->zzcui:Lcom/google/android/gms/internal/ads/zzaba;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/Long;

    .line 54
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 55
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v9

    .line 56
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzll()Lcom/google/android/gms/internal/ads/zzts;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcg;->context:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzts;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzth;)Ljava/util/concurrent/Future;

    move-result-object v3

    const/16 v11, 0x2c

    .line 58
    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v7, v8, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zztv;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zztv;->zzmz()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvh:Z

    .line 61
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zztv;->zznc()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvk:Z

    .line 62
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zztv;->zzna()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoc:Z

    .line 63
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zztv;->zznb()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvj:J

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzacg()Z

    move-result v8

    if-nez v8, :cond_3

    .line 65
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zztv;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenz:Ljava/io/InputStream;

    .line 66
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeny:Z

    if-eqz v7, :cond_2

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzos;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v9

    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenx:Lcom/google/android/gms/internal/ads/zzbci;

    invoke-interface {p1, v2, v6, v7}, Lcom/google/android/gms/internal/ads/zzbci;->zzb(ZJ)V

    .line 72
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeob:Z

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    return-wide v4

    .line 75
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v9

    .line 77
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenx:Lcom/google/android/gms/internal/ads/zzbci;

    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbci;->zzb(ZJ)V

    .line 78
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeob:Z

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    const/4 v4, 0x1

    goto :goto_1

    :catch_1
    const/4 v4, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    const/4 v2, 0x0

    goto :goto_3

    :catch_2
    const/4 v4, 0x0

    .line 90
    :goto_1
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 92
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v9

    .line 94
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenx:Lcom/google/android/gms/internal/ads/zzbci;

    invoke-interface {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzbci;->zzb(ZJ)V

    .line 95
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeob:Z

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_3
    const/4 v4, 0x0

    .line 82
    :goto_2
    :try_start_3
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 83
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v9

    .line 85
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenx:Lcom/google/android/gms/internal/ads/zzbci;

    invoke-interface {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzbci;->zzb(ZJ)V

    .line 86
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeob:Z

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_2
    move-exception p1

    move v2, v4

    .line 98
    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v9

    .line 100
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenx:Lcom/google/android/gms/internal/ads/zzbci;

    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbci;->zzb(ZJ)V

    .line 101
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeob:Z

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 103
    throw p1

    :cond_4
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    if-eqz v1, :cond_5

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzos;->position:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzth;->zzbvr:J

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvs:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdwt;->zzhm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzth;->zzbvs:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvt:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzth;->zzbvt:I

    .line 109
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsz;->zza(Lcom/google/android/gms/internal/ads/zzth;)Lcom/google/android/gms/internal/ads/zztc;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_7

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztc;->zzmw()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztc;->zzmz()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvh:Z

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztc;->zznc()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvk:Z

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztc;->zzna()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoc:Z

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztc;->zznb()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvj:J

    .line 115
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeob:Z

    .line 116
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzacg()Z

    move-result v1

    if-nez v1, :cond_7

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztc;->zzmx()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenz:Ljava/io/InputStream;

    .line 118
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeny:Z

    if-eqz v0, :cond_6

    .line 119
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzos;)V

    :cond_6
    return-wide v4

    .line 121
    :cond_7
    :goto_4
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeob:Z

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    if-eqz v0, :cond_8

    .line 123
    new-instance v0, Lcom/google/android/gms/internal/ads/zzos;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzth;->url:Ljava/lang/String;

    .line 124
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzos;->zzbil:[B

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzos;->zzbim:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzos;->position:J

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzos;->zzco:J

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/zzos;->zzcm:Ljava/lang/String;

    iget v11, p1, Lcom/google/android/gms/internal/ads/zzos;->flags:I

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzos;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    move-object p1, v0

    .line 125
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzenw:Lcom/google/android/gms/internal/ads/zzon;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzon;->zza(Lcom/google/android/gms/internal/ads/zzos;)J

    move-result-wide v0

    return-wide v0

    .line 34
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempt to open an already open CacheDataSource."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzace()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeob:Z

    return v0
.end method

.method public final zzacf()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoc:Z

    return v0
.end method

.method final synthetic zzach()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzeoa:Lcom/google/android/gms/internal/ads/zzth;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsz;->zzb(Lcom/google/android/gms/internal/ads/zzth;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final zzmz()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvh:Z

    return v0
.end method

.method public final zznb()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvj:J

    return-wide v0
.end method

.method public final zznc()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcg;->zzbvk:Z

    return v0
.end method
