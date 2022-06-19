.class public Lscala/concurrent/SyncVar;
.super Ljava/lang/Object;
.source "SyncVar.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u000114A!\u0001\u0002\u0001\u000f\t91+\u001f8d-\u0006\u0014(BA\u0002\u0005\u0003)\u0019wN\\2veJ,g\u000e\u001e\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001QC\u0001\u0005\u0015\'\t\u0001\u0011\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001aDQA\u0004\u0001\u0005\u0002=\ta\u0001P5oSRtD#\u0001\t\u0011\u0007E\u0001!#D\u0001\u0003!\t\u0019B\u0003\u0004\u0001\u0005\u000bU\u0001!\u0019\u0001\u000c\u0003\u0003\u0005\u000b\"a\u0006\u000e\u0011\u0005)A\u0012BA\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"AC\u000e\n\u0005q!!aA!os\"9a\u0004\u0001a\u0001\n\u0013y\u0012!C5t\t\u00164\u0017N\\3e+\u0005\u0001\u0003C\u0001\u0006\"\u0013\t\u0011CAA\u0004C_>dW-\u00198\t\u000f\u0011\u0002\u0001\u0019!C\u0005K\u0005i\u0011n\u001d#fM&tW\rZ0%KF$\"AJ\u0015\u0011\u0005)9\u0013B\u0001\u0015\u0005\u0005\u0011)f.\u001b;\t\u000f)\u001a\u0013\u0011!a\u0001A\u0005\u0019\u0001\u0010J\u0019\t\r1\u0002\u0001\u0015)\u0003!\u0003)I7\u000fR3gS:,G\r\t\u0005\u0008]\u0001\u0001\r\u0011\"\u00030\u0003\u00151\u0018\r\\;f+\u0005\u0001\u0004c\u0001\u00062%%\u0011!\u0007\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\u000fQ\u0002\u0001\u0019!C\u0005k\u0005Ia/\u00197vK~#S-\u001d\u000b\u0003MYBqAK\u001a\u0002\u0002\u0003\u0007\u0001\u0007\u0003\u00049\u0001\u0001\u0006K\u0001M\u0001\u0007m\u0006dW/\u001a\u0011\t\u000bi\u0002A\u0011A\u001e\u0002\u0007\u001d,G/F\u0001\u0013\u0011\u0015i\u0004\u0001\"\u0003?\u0003Q9\u0018-\u001b;NK\u0006\u001cXO]5oO\u0016c\u0017\r]:fIR\u0011qH\u0011\t\u0003\u0015\u0001K!!\u0011\u0003\u0003\t1{gn\u001a\u0005\u0006\u0007r\u0002\raP\u0001\u0008i&lWm\\;u\u0011\u0015Q\u0004\u0001\"\u0001F)\t\u0001d\tC\u0003D\t\u0002\u0007q\u0008C\u0003I\u0001\u0011\u0005\u0011*\u0001\u0003uC.,G#\u0001\n\t\u000b!\u0003A\u0011A&\u0015\u0005Ia\u0005\"B\"K\u0001\u0004y\u0004\"\u0002(\u0001\t\u0003y\u0015aA:fiR\u0011a\u0005\u0015\u0005\u0006#6\u0003\rAE\u0001\u0002q\"\"Qj\u0015,Y!\tQA+\u0003\u0002V\t\tQA-\u001a9sK\u000e\u000cG/\u001a3\"\u0003]\u000ba\'V:fA\u0001\u0004X\u000f\u001e1!S:\u001cH/Z1eY\u0001\n7\u000f\t1tKR\u0004\u0007%[:!a>$XM\u001c;jC2d\u0017\u0010I3se>\u0014X\u0006\u001d:p]\u0016\u000c\u0013!W\u0001\u0007e9\n\u0004G\u000c\u0019\t\u000bm\u0003A\u0011\u0001/\u0002\u0007A,H\u000f\u0006\u0002\';\")\u0011K\u0017a\u0001%!)q\u000c\u0001C\u0001?\u0005)\u0011n]*fi\")\u0011\r\u0001C\u0001E\u0006)QO\\:fiR\ta\u0005\u000b\u0003a\'\u0012D\u0016%A3\u0002sU\u001bX\r\t1uC.,\u0007\rI5ogR,\u0017\r\u001a\u0017!CN\u0004\u0003-\u001e8tKR\u0004\u0007%[:!a>$XM\u001c;jC2d\u0017\u0010I3se>\u0014X\u0006\u001d:p]\u0016DQa\u001a\u0001\u0005\n!\u000caa]3u-\u0006dGC\u0001\u0014j\u0011\u0015\tf\r1\u0001\u0013\u0011\u0015Y\u0007\u0001\"\u0003c\u0003!)hn]3u-\u0006d\u0007"
.end annotation


# instance fields
.field private isDefined:Z

.field private value:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lscala/concurrent/SyncVar;->isDefined:Z

    .line 22
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    iput-object v0, p0, Lscala/concurrent/SyncVar;->value:Lscala/Option;

    return-void
.end method

.method private isDefined()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lscala/concurrent/SyncVar;->isDefined:Z

    return v0
.end method

.method private isDefined_$eq(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lscala/concurrent/SyncVar;->isDefined:Z

    return-void
.end method

.method private declared-synchronized setVal(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 128
    :try_start_0
    invoke-direct {p0, v0}, Lscala/concurrent/SyncVar;->isDefined_$eq(Z)V

    .line 129
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lscala/concurrent/SyncVar;->value_$eq(Lscala/Option;)V

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized unsetVal()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 137
    :try_start_0
    invoke-direct {p0, v0}, Lscala/concurrent/SyncVar;->isDefined_$eq(Z)V

    .line 138
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-direct {p0, v0}, Lscala/concurrent/SyncVar;->value_$eq(Lscala/Option;)V

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private value()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lscala/concurrent/SyncVar;->value:Lscala/Option;

    return-object v0
.end method

.method private value_$eq(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TA;>;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lscala/concurrent/SyncVar;->value:Lscala/Option;

    return-void
.end method

.method private waitMeasuringElapsed(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 40
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long/2addr p1, v2

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    monitor-enter p0

    .line 31
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lscala/concurrent/SyncVar;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0}, Lscala/concurrent/SyncVar;->value()Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 31
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(J)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    monitor-enter p0

    .line 60
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lscala/concurrent/SyncVar;->isDefined()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 61
    invoke-direct {p0, p1, p2}, Lscala/concurrent/SyncVar;->waitMeasuringElapsed(J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0}, Lscala/concurrent/SyncVar;->value()Lscala/Option;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isSet()Z
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-direct {p0}, Lscala/concurrent/SyncVar;->isDefined()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    monitor-enter p0

    .line 103
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lscala/concurrent/SyncVar;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lscala/concurrent/SyncVar;->setVal(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lscala/concurrent/SyncVar;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lscala/concurrent/SyncVar;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    invoke-direct {p0}, Lscala/concurrent/SyncVar;->unsetVal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lscala/concurrent/SyncVar;->unsetVal()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized take(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TA;"
        }
    .end annotation

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lscala/concurrent/SyncVar;->get(J)Lscala/Option;

    move-result-object p1

    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    invoke-direct {p0}, Lscala/concurrent/SyncVar;->unsetVal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-direct {p0}, Lscala/concurrent/SyncVar;->unsetVal()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 119
    :try_start_0
    invoke-direct {p0, v0}, Lscala/concurrent/SyncVar;->isDefined_$eq(Z)V

    .line 120
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-direct {p0, v0}, Lscala/concurrent/SyncVar;->value_$eq(Lscala/Option;)V

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
