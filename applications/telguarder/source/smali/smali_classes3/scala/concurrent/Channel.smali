.class public Lscala/concurrent/Channel;
.super Ljava/lang/Object;
.source "Channel.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/Channel$LinkedList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\r4A!\u0001\u0002\u0001\u000f\t91\t[1o]\u0016d\'BA\u0002\u0005\u0003)\u0019wN\\2veJ,g\u000e\u001e\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001QC\u0001\u0005\u0015\'\t\u0001\u0011\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001aDQA\u0004\u0001\u0005\u0002=\ta\u0001P5oSRtD#\u0001\t\u0011\u0007E\u0001!#D\u0001\u0003!\t\u0019B\u0003\u0004\u0001\u0005\u000bU\u0001!\u0019\u0001\u000c\u0003\u0003\u0005\u000b\"a\u0006\u000e\u0011\u0005)A\u0012BA\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"AC\u000e\n\u0005q!!aA!os\u001a!a\u0004\u0001\u0001 \u0005)a\u0015N\\6fI2K7\u000f^\u000b\u0003A\u0019\u001a\"!H\u0005\t\u000b9iB\u0011\u0001\u0012\u0015\u0003\r\u00022\u0001J\u000f&\u001b\u0005\u0001\u0001CA\n\'\t\u0015)RD1\u0001\u0017\u0011%AS\u00041AA\u0002\u0013\u0005\u0011&\u0001\u0003fY\u0016lW#A\u0013\t\u0013-j\u0002\u0019!a\u0001\n\u0003a\u0013\u0001C3mK6|F%Z9\u0015\u00055\u0002\u0004C\u0001\u0006/\u0013\tyCA\u0001\u0003V]&$\u0008bB\u0019+\u0003\u0003\u0005\r!J\u0001\u0004q\u0012\n\u0004BB\u001a\u001eA\u0003&Q%A\u0003fY\u0016l\u0007\u0005C\u00046;\u0001\u0007I\u0011\u0001\u001c\u0002\t9,\u0007\u0010^\u000b\u0002G!9\u0001(\u0008a\u0001\n\u0003I\u0014\u0001\u00038fqR|F%Z9\u0015\u00055R\u0004bB\u00198\u0003\u0003\u0005\ra\t\u0005\u0007yu\u0001\u000b\u0015B\u0012\u0002\u000b9,\u0007\u0010\u001e\u0011\t\u000fy\u0002\u0001\u0019!C\u0005\u007f\u00059qO]5ui\u0016tW#\u0001!\u0011\u0007\u0011j\"\u0003C\u0004C\u0001\u0001\u0007I\u0011B\"\u0002\u0017]\u0014\u0018\u000e\u001e;f]~#S-\u001d\u000b\u0003[\u0011Cq!M!\u0002\u0002\u0003\u0007\u0001\t\u0003\u0004G\u0001\u0001\u0006K\u0001Q\u0001\toJLG\u000f^3oA!9\u0001\n\u0001a\u0001\n\u0013y\u0014a\u00037bgR<&/\u001b;uK:DqA\u0013\u0001A\u0002\u0013%1*A\u0008mCN$xK]5ui\u0016tw\u000cJ3r)\tiC\nC\u00042\u0013\u0006\u0005\t\u0019\u0001!\t\r9\u0003\u0001\u0015)\u0003A\u00031a\u0017m\u001d;Xe&$H/\u001a8!\u0011\u001d\u0001\u0006\u00011A\u0005\nE\u000b\u0001B\u001c:fC\u0012,\'o]\u000b\u0002%B\u0011!bU\u0005\u0003)\u0012\u00111!\u00138u\u0011\u001d1\u0006\u00011A\u0005\n]\u000bAB\u001c:fC\u0012,\'o]0%KF$\"!\u000c-\t\u000fE*\u0016\u0011!a\u0001%\"1!\u000c\u0001Q!\nI\u000b\u0011B\u001c:fC\u0012,\'o\u001d\u0011\t\u000bq\u0003A\u0011A/\u0002\u000b]\u0014\u0018\u000e^3\u0015\u00055r\u0006\"B0\\\u0001\u0004\u0011\u0012!\u0001=\t\u000b\u0005\u0004A\u0011\u00012\u0002\tI,\u0017\rZ\u000b\u0002%\u0001"
.end annotation


# instance fields
.field private lastWritten:Lscala/concurrent/Channel$LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/concurrent/Channel<",
            "TA;>.",
            "LinkedList<",
            "TA;>;"
        }
    .end annotation
.end field

.field private nreaders:I

.field private written:Lscala/concurrent/Channel$LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/concurrent/Channel<",
            "TA;>.",
            "LinkedList<",
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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lscala/concurrent/Channel$LinkedList;

    invoke-direct {v0, p0}, Lscala/concurrent/Channel$LinkedList;-><init>(Lscala/concurrent/Channel;)V

    iput-object v0, p0, Lscala/concurrent/Channel;->written:Lscala/concurrent/Channel$LinkedList;

    .line 26
    invoke-direct {p0}, Lscala/concurrent/Channel;->written()Lscala/concurrent/Channel$LinkedList;

    move-result-object v0

    iput-object v0, p0, Lscala/concurrent/Channel;->lastWritten:Lscala/concurrent/Channel$LinkedList;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lscala/concurrent/Channel;->nreaders:I

    return-void
.end method

.method private lastWritten()Lscala/concurrent/Channel$LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/Channel<",
            "TA;>.",
            "LinkedList<",
            "TA;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lscala/concurrent/Channel;->lastWritten:Lscala/concurrent/Channel$LinkedList;

    return-object v0
.end method

.method private lastWritten_$eq(Lscala/concurrent/Channel$LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Channel<",
            "TA;>.",
            "LinkedList<",
            "TA;>;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lscala/concurrent/Channel;->lastWritten:Lscala/concurrent/Channel$LinkedList;

    return-void
.end method

.method private nreaders()I
    .locals 1

    .line 27
    iget v0, p0, Lscala/concurrent/Channel;->nreaders:I

    return v0
.end method

.method private nreaders_$eq(I)V
    .locals 0

    .line 27
    iput p1, p0, Lscala/concurrent/Channel;->nreaders:I

    return-void
.end method

.method private written()Lscala/concurrent/Channel$LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/Channel<",
            "TA;>.",
            "LinkedList<",
            "TA;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lscala/concurrent/Channel;->written:Lscala/concurrent/Channel$LinkedList;

    return-object v0
.end method

.method private written_$eq(Lscala/concurrent/Channel$LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Channel<",
            "TA;>.",
            "LinkedList<",
            "TA;>;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lscala/concurrent/Channel;->written:Lscala/concurrent/Channel$LinkedList;

    return-void
.end method


# virtual methods
.method public declared-synchronized read()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    monitor-enter p0

    .line 47
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lscala/concurrent/Channel;->written()Lscala/concurrent/Channel$LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Lscala/concurrent/Channel$LinkedList;->next()Lscala/concurrent/Channel$LinkedList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 49
    :try_start_1
    invoke-direct {p0}, Lscala/concurrent/Channel;->nreaders()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/concurrent/Channel;->nreaders_$eq(I)V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    invoke-direct {p0}, Lscala/concurrent/Channel;->nreaders()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lscala/concurrent/Channel;->nreaders_$eq(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lscala/concurrent/Channel;->nreaders()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lscala/concurrent/Channel;->nreaders_$eq(I)V

    throw v0

    .line 54
    :cond_0
    invoke-direct {p0}, Lscala/concurrent/Channel;->written()Lscala/concurrent/Channel$LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Lscala/concurrent/Channel$LinkedList;->elem()Ljava/lang/Object;

    move-result-object v0

    .line 55
    invoke-direct {p0}, Lscala/concurrent/Channel;->written()Lscala/concurrent/Channel$LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Lscala/concurrent/Channel$LinkedList;->next()Lscala/concurrent/Channel$LinkedList;

    move-result-object v1

    invoke-direct {p0, v1}, Lscala/concurrent/Channel;->written_$eq(Lscala/concurrent/Channel$LinkedList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    monitor-enter p0

    .line 35
    :try_start_0
    invoke-direct {p0}, Lscala/concurrent/Channel;->lastWritten()Lscala/concurrent/Channel$LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/concurrent/Channel$LinkedList;->elem_$eq(Ljava/lang/Object;)V

    .line 36
    invoke-direct {p0}, Lscala/concurrent/Channel;->lastWritten()Lscala/concurrent/Channel$LinkedList;

    move-result-object p1

    new-instance v0, Lscala/concurrent/Channel$LinkedList;

    invoke-direct {v0, p0}, Lscala/concurrent/Channel$LinkedList;-><init>(Lscala/concurrent/Channel;)V

    invoke-virtual {p1, v0}, Lscala/concurrent/Channel$LinkedList;->next_$eq(Lscala/concurrent/Channel$LinkedList;)V

    .line 37
    invoke-direct {p0}, Lscala/concurrent/Channel;->lastWritten()Lscala/concurrent/Channel$LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Lscala/concurrent/Channel$LinkedList;->next()Lscala/concurrent/Channel$LinkedList;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/concurrent/Channel;->lastWritten_$eq(Lscala/concurrent/Channel$LinkedList;)V

    .line 38
    invoke-direct {p0}, Lscala/concurrent/Channel;->nreaders()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
