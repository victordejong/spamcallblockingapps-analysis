.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
    }
.end annotation


# static fields
.field public static a:Z = false


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:J

.field private E:I

.field private F:Z

.field private G:Z

.field private H:J

.field private I:F

.field private J:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private K:[Ljava/nio/ByteBuffer;

.field private L:Ljava/nio/ByteBuffer;

.field private M:I

.field private N:Ljava/nio/ByteBuffer;

.field private O:[B

.field private P:I

.field private Q:I

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:I

.field private W:Lcom/google/android/exoplayer2/audio/i;

.field private X:Z

.field private Y:J

.field private Z:Z

.field private aa:Z

.field private final b:Lcom/google/android/exoplayer2/audio/e;

.field private final c:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

.field private final d:Z

.field private final e:Lcom/google/android/exoplayer2/audio/k;

.field private final f:Lcom/google/android/exoplayer2/audio/u;

.field private final g:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private final h:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private final i:Landroid/os/ConditionVariable;

.field private final j:Lcom/google/android/exoplayer2/audio/h;

.field private final k:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Z

.field private final m:Z

.field private n:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;

.field private final o:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d<",
            "Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d<",
            "Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/google/android/exoplayer2/audio/AudioSink$a;

.field private r:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

.field private s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

.field private t:Landroid/media/AudioTrack;

.field private u:Lcom/google/android/exoplayer2/audio/d;

.field private v:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

.field private w:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

.field private x:Lcom/google/android/exoplayer2/aa;

.field private y:Ljava/nio/ByteBuffer;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/audio/e;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;ZZZ)V
    .locals 10

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b:Lcom/google/android/exoplayer2/audio/e;

    .line 399
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->c:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

    .line 400
    sget p1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt p1, v2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->d:Z

    .line 401
    sget p1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_1

    if-eqz p4, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Z

    .line 402
    sget p1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 p3, 0x1d

    if-lt p1, p3, :cond_2

    if-eqz p5, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m:Z

    .line 403
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->i:Landroid/os/ConditionVariable;

    .line 404
    new-instance p1, Lcom/google/android/exoplayer2/audio/h;

    new-instance p3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/audio/h;-><init>(Lcom/google/android/exoplayer2/audio/h$a;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    .line 405
    new-instance p1, Lcom/google/android/exoplayer2/audio/k;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/k;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->e:Lcom/google/android/exoplayer2/audio/k;

    .line 406
    new-instance p3, Lcom/google/android/exoplayer2/audio/u;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/audio/u;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->f:Lcom/google/android/exoplayer2/audio/u;

    .line 407
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const/4 p5, 0x3

    new-array p5, p5, [Lcom/google/android/exoplayer2/audio/j;

    .line 408
    new-instance v2, Lcom/google/android/exoplayer2/audio/q;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/audio/q;-><init>()V

    aput-object v2, p5, v1

    aput-object p1, p5, v0

    const/4 p1, 0x2

    aput-object p3, p5, p1

    invoke-static {p4, p5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 413
    invoke-interface {p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;->a()[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-result-object p1

    invoke-static {p4, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p1, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 414
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->g:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    new-array p1, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 415
    new-instance p2, Lcom/google/android/exoplayer2/audio/m;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/audio/m;-><init>()V

    aput-object p2, p1, v1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->h:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 416
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->I:F

    .line 417
    sget-object p1, Lcom/google/android/exoplayer2/audio/d;->a:Lcom/google/android/exoplayer2/audio/d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->u:Lcom/google/android/exoplayer2/audio/d;

    .line 418
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->V:I

    .line 419
    new-instance p1, Lcom/google/android/exoplayer2/audio/i;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2}, Lcom/google/android/exoplayer2/audio/i;-><init>(IF)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->W:Lcom/google/android/exoplayer2/audio/i;

    .line 420
    new-instance p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    sget-object v3, Lcom/google/android/exoplayer2/aa;->a:Lcom/google/android/exoplayer2/aa;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;-><init>(Lcom/google/android/exoplayer2/aa;ZJJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    .line 426
    sget-object p1, Lcom/google/android/exoplayer2/aa;->a:Lcom/google/android/exoplayer2/aa;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x:Lcom/google/android/exoplayer2/aa;

    const/4 p1, -0x1

    .line 427
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:I

    new-array p1, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 428
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->J:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    new-array p1, v1, [Ljava/nio/ByteBuffer;

    .line 429
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->K:[Ljava/nio/ByteBuffer;

    .line 430
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Ljava/util/ArrayDeque;

    .line 431
    new-instance p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    const-wide/16 p2, 0x64

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->o:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    .line 433
    new-instance p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/audio/e;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/e;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/audio/e;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Z)V
    .locals 6

    .line 362
    new-instance v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    invoke-direct {v2, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/e;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;ZZZ)V

    return-void
.end method

.method private a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 10

    .line 1707
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const-wide/16 v1, 0x3e8

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    const/4 v7, 0x1

    mul-long v8, p4, v1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 1709
    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p1

    return p1

    .line 1712
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->y:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/16 v0, 0x10

    .line 1713
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->y:Ljava/nio/ByteBuffer;

    .line 1714
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1715
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->y:Ljava/nio/ByteBuffer;

    const v3, 0x55550001

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1717
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->z:I

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1718
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->y:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1719
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->y:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    mul-long p4, p4, v1

    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1720
    iget-object p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->y:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1721
    iput p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->z:I

    .line 1723
    :cond_2
    iget-object p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->y:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    const/4 p5, 0x1

    if-lez p4, :cond_4

    .line 1725
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->y:Ljava/nio/ByteBuffer;

    .line 1726
    invoke-virtual {p1, v0, p4, p5}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_3

    .line 1728
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->z:I

    return v0

    :cond_3
    if-ge v0, p4, :cond_4

    return v3

    .line 17701
    :cond_4
    invoke-virtual {p1, p2, p3, p5}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    if-gez p1, :cond_5

    .line 1737
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->z:I

    return p1

    .line 1740
    :cond_5
    iget p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->z:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->z:I

    return p1
.end method

.method static synthetic a(III)Landroid/media/AudioFormat;
    .locals 0

    .line 60
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(III)Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/os/ConditionVariable;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->i:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->J:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_6

    if-lez v1, :cond_0

    .line 845
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->K:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    .line 846
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 848
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 850
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->J:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v3, v3, v1

    .line 851
    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:I

    if-le v1, v4, :cond_3

    .line 852
    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a(Ljava/nio/ByteBuffer;)V

    .line 854
    :cond_3
    invoke-interface {v3}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 855
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->K:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 856
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 863
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/aa;Z)V
    .locals 9

    .line 1299
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t()Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    move-result-object v0

    .line 1300
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->a:Lcom/google/android/exoplayer2/aa;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/aa;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->b:Z

    if-eq p2, v0, :cond_2

    .line 1302
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;-><init>(Lcom/google/android/exoplayer2/aa;ZJJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    .line 1308
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1311
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    return-void

    .line 1315
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    :cond_2
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 875
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->N:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 879
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    goto :goto_1

    .line 881
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->N:Ljava/nio/ByteBuffer;

    .line 882
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    if-ge v0, v1, :cond_5

    .line 883
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 884
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->O:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 885
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->O:[B

    .line 887
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 888
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->O:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 889
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 890
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->P:I

    .line 893
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 895
    sget v4, Lcom/google/android/exoplayer2/util/af;->a:I

    if-ge v4, v1, :cond_7

    .line 897
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->C:J

    invoke-virtual {p2, v4, v5}, Lcom/google/android/exoplayer2/audio/h;->a(J)I

    move-result p2

    if-lez p2, :cond_6

    .line 899
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 900
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->O:[B

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->P:I

    .line 901
    invoke-virtual {p3, v1, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_a

    .line 903
    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->P:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->P:I

    .line 904
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    goto :goto_3

    .line 907
    :cond_7
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->X:Z

    if-eqz v1, :cond_9

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v4

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    .line 908
    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 909
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    .line 910
    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result p2

    goto :goto_3

    .line 913
    :cond_9
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    .line 6701
    invoke-virtual {p2, p1, v0, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    .line 916
    :cond_a
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Y:J

    if-gez p2, :cond_e

    .line 920
    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->c(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 922
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p()V

    .line 924
    :cond_b
    new-instance p3, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;-><init>(ILcom/google/android/exoplayer2/Format;Z)V

    .line 925
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Lcom/google/android/exoplayer2/audio/AudioSink$a;

    if-eqz p1, :cond_c

    .line 926
    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/audio/AudioSink$a;->a(Ljava/lang/Exception;)V

    .line 928
    :cond_c
    iget-boolean p1, p3, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->b:Z

    if-nez p1, :cond_d

    .line 931
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a(Ljava/lang/Exception;)V

    return-void

    .line 929
    :cond_d
    throw p3

    .line 934
    :cond_e
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    const/4 v1, 0x0

    .line 7167
    iput-object v1, p3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Ljava/lang/Exception;

    .line 938
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-static {p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Landroid/media/AudioTrack;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 943
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:J

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v6

    if-lez p3, :cond_f

    .line 944
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->aa:Z

    .line 950
    :cond_f
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->T:Z

    if-eqz p3, :cond_10

    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Lcom/google/android/exoplayer2/audio/AudioSink$a;

    if-eqz p3, :cond_10

    if-ge p2, v0, :cond_10

    iget-boolean p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->aa:Z

    if-nez p3, :cond_10

    .line 954
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    .line 955
    invoke-virtual {p3, v4, v5}, Lcom/google/android/exoplayer2/audio/h;->b(J)J

    move-result-wide v4

    .line 956
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Lcom/google/android/exoplayer2/audio/AudioSink$a;

    invoke-interface {p3, v4, v5}, Lcom/google/android/exoplayer2/audio/AudioSink$a;->b(J)V

    .line 960
    :cond_10
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget p3, p3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez p3, :cond_11

    .line 961
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->C:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->C:J

    :cond_11
    if-ne p2, v0, :cond_14

    .line 964
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget p2, p2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-eqz p2, :cond_13

    .line 967
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_12

    goto :goto_4

    :cond_12
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 968
    iget-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:J

    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->E:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->M:I

    mul-int p3, p3, v0

    int-to-long v2, p3

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:J

    .line 970
    :cond_13
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->N:Ljava/nio/ByteBuffer;

    :cond_14
    return-void
.end method

.method private static a(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1597
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/d;)Z
    .locals 4

    .line 1574
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    return v1

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1579
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/q;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1583
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->e(I)I

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 1587
    :cond_2
    iget v3, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(III)Landroid/media/AudioFormat;

    move-result-object v0

    .line 1589
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/d;->a()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 1588
    invoke-static {v0, p1}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 1592
    :cond_3
    iget p1, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_6

    .line 1593
    invoke-static {}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->y()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v0
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/e;)Z
    .locals 0

    .line 1444
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/e;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 18648
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_1
    const p0, 0x52080

    return p0

    :pswitch_2
    const p0, 0x3e800

    return p0

    :pswitch_3
    const/16 p0, 0x1f40

    return p0

    :pswitch_4
    const p0, 0x2ebae4

    return p0

    :pswitch_5
    const/16 p0, 0x1b58

    return p0

    :pswitch_6
    const/16 p0, 0x3e80

    return p0

    :pswitch_7
    const p0, 0x186a0

    return p0

    :pswitch_8
    const p0, 0x9c40

    return p0

    :pswitch_9
    const p0, 0x225510

    return p0

    :pswitch_a
    const p0, 0x2ee00

    return p0

    :pswitch_b
    const p0, 0xbb800

    return p0

    :pswitch_c
    const p0, 0x13880

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method

.method private static b(III)Landroid/media/AudioFormat;
    .locals 1

    .line 1834
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1835
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 1836
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 1837
    invoke-virtual {p0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 1838
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/media/AudioTrack;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    return-object p0
.end method

.method private static b(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/e;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/audio/e;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1465
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1466
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/q;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/16 v4, 0x8

    const/4 v5, 0x6

    const/16 v6, 0x12

    if-eq v1, v2, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v1, v6, :cond_2

    const/16 v2, 0x11

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_2

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    return-object v0

    :cond_3
    if-ne v1, v6, :cond_4

    .line 1482
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/audio/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x6

    goto :goto_2

    :cond_4
    if-ne v1, v4, :cond_5

    .line 1486
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/audio/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v1, 0x7

    .line 1490
    :cond_5
    :goto_2
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/audio/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_6

    return-object v0

    :cond_6
    if-ne v1, v6, :cond_7

    .line 1499
    sget p1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v2, 0x1d

    if-lt p1, v2, :cond_8

    .line 1500
    iget p0, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 1501
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->e(I)I

    move-result v5

    if-nez v5, :cond_8

    const-string p0, "DefaultAudioSink"

    const-string p1, "E-AC3 JOC encoding supported but no channel count supported"

    .line 1503
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1510
    :cond_7
    iget v5, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 17130
    iget p0, p1, Lcom/google/android/exoplayer2/audio/e;->b:I

    if-le v5, p0, :cond_8

    return-object v0

    .line 1515
    :cond_8
    invoke-static {v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->f(I)I

    move-result p0

    if-nez p0, :cond_9

    return-object v0

    .line 1520
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private b(J)V
    .locals 11

    .line 1335
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->c:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

    .line 16321
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t()Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->a:Lcom/google/android/exoplayer2/aa;

    .line 1336
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;->a(Lcom/google/android/exoplayer2/aa;)Lcom/google/android/exoplayer2/aa;

    move-result-object v0

    goto :goto_0

    .line 1337
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/aa;->a:Lcom/google/android/exoplayer2/aa;

    :goto_0
    move-object v2, v0

    .line 1339
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1340
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->c:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

    .line 17067
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t()Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->b:Z

    .line 1340
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;->a(Z)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1342
    :goto_1
    iget-object v9, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Ljava/util/ArrayDeque;

    new-instance v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    const-wide/16 v3, 0x0

    .line 1346
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 1347
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v1, v10

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;-><init>(Lcom/google/android/exoplayer2/aa;ZJJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    .line 1342
    invoke-virtual {v9, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1348
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m()V

    .line 1349
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Lcom/google/android/exoplayer2/audio/AudioSink$a;

    if-eqz p1, :cond_2

    .line 1350
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/audio/AudioSink$a;->a(Z)V

    :cond_2
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/aa;)V
    .locals 2

    .line 1276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 1279
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    iget v1, p1, Lcom/google/android/exoplayer2/aa;->b:F

    .line 1280
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    iget p1, p1, Lcom/google/android/exoplayer2/aa;->c:F

    .line 1281
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object p1

    const/4 v0, 0x2

    .line 1282
    invoke-virtual {p1, v0}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object p1

    .line 1284
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DefaultAudioSink"

    const-string v1, "Failed to set playback params"

    .line 1286
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1289
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/aa;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    .line 1291
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/aa;-><init>(FF)V

    .line 1292
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    iget v1, p1, Lcom/google/android/exoplayer2/aa;->b:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/h;->a(F)V

    .line 1294
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x:Lcom/google/android/exoplayer2/aa;

    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$a;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Lcom/google/android/exoplayer2/audio/AudioSink$a;

    return-object p0
.end method

.method private static c(I)Z
    .locals 2

    .line 993
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, -0x6

    if-eq p0, v0, :cond_1

    :cond_0
    const/16 v0, -0x20

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private d(I)Z
    .locals 1

    .line 1376
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->T:Z

    return p0
.end method

.method private static e(I)I
    .locals 4

    .line 1530
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 1532
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 1533
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1534
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/16 v1, 0x8

    :goto_0
    if-lez v1, :cond_1

    .line 1537
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/16 v3, 0x12

    .line 1539
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 1540
    invoke-virtual {v2, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 1541
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->e(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 1542
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 1543
    invoke-static {v2, v0}, Landroid/media/AudioTrack;->isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method private static f(I)I
    .locals 2

    .line 1551
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_2

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x6

    .line 1565
    :cond_2
    :goto_0
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_3

    sget-object v0, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v1, "fugu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    const/4 p0, 0x2

    .line 1569
    :cond_3
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/af;->e(I)I

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Y:J

    return-wide v0
.end method

.method private m()V
    .locals 6

    .line 595
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 596
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 597
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 598
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 599
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 601
    :cond_0
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->e()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 604
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 605
    new-array v2, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->J:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 606
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->K:[Ljava/nio/ByteBuffer;

    .line 607
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n()V

    return-void
.end method

.method private n()V
    .locals 3

    const/4 v0, 0x0

    .line 611
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->J:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 612
    aget-object v1, v1, v0

    .line 613
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->e()V

    .line 614
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->K:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o()Landroid/media/AudioTrack;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 820
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->X:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->u:Lcom/google/android/exoplayer2/audio/d;

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->V:I

    .line 821
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->buildAudioTrack(ZLcom/google/android/exoplayer2/audio/d;I)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 823
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p()V

    .line 824
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Lcom/google/android/exoplayer2/audio/AudioSink$a;

    if-eqz v1, :cond_0

    .line 825
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioSink$a;->a(Ljava/lang/Exception;)V

    .line 827
    :cond_0
    throw v0
.end method

.method private p()V
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputModeIsOffload()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 989
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Z:Z

    return-void
.end method

.method private q()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 999
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 1000
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:I

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1003
    :goto_1
    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->J:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_3

    .line 1004
    aget-object v4, v5, v4

    if-eqz v0, :cond_1

    .line 1006
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->b()V

    .line 1008
    :cond_1
    invoke-direct {p0, v7, v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(J)V

    .line 1009
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->d()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    .line 1013
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:I

    goto :goto_0

    .line 1017
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->N:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 1018
    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Ljava/nio/ByteBuffer;J)V

    .line 1019
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->N:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    return v3

    .line 1023
    :cond_4
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:I

    return v2
.end method

.method private r()V
    .locals 2

    .line 1137
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->I:F

    .line 9746
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->I:F

    .line 9750
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_1
    return-void
.end method

.method private s()V
    .locals 12

    const-wide/16 v0, 0x0

    .line 1247
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->A:J

    .line 1248
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->B:J

    .line 1249
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->C:J

    .line 1250
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:J

    const/4 v2, 0x0

    .line 1251
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->aa:Z

    .line 1252
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->E:I

    .line 1253
    new-instance v11, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    .line 14321
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t()Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->a:Lcom/google/android/exoplayer2/aa;

    .line 15067
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t()Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    move-result-object v3

    iget-boolean v5, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->b:Z

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    .line 1256
    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;-><init>(Lcom/google/android/exoplayer2/aa;ZJJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    iput-object v11, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    .line 1259
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->H:J

    const/4 v3, 0x0

    .line 1260
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    .line 1261
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 1262
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 1263
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->M:I

    .line 1264
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->N:Ljava/nio/ByteBuffer;

    .line 1265
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->S:Z

    .line 1266
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->R:Z

    const/4 v4, -0x1

    .line 1267
    iput v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:I

    .line 1268
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->y:Ljava/nio/ByteBuffer;

    .line 1269
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->z:I

    .line 1270
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->f:Lcom/google/android/exoplayer2/audio/u;

    .line 16059
    iput-wide v0, v2, Lcom/google/android/exoplayer2/audio/u;->f:J

    .line 1271
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n()V

    return-void
.end method

.method private t()Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    if-eqz v0, :cond_0

    return-object v0

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1329
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    return-object v0

    .line 1330
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    return-object v0
.end method

.method private u()Z
    .locals 2

    .line 1366
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->X:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/raw"

    .line 1367
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .line 1368
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private v()Z
    .locals 1

    .line 1427
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private w()J
    .locals 4

    .line 1431
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v0, :cond_0

    .line 1432
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->A:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    .line 1433
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->B:J

    return-wide v0
.end method

.method private x()J
    .locals 4

    .line 1437
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v0, :cond_0

    .line 1438
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->C:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    .line 1439
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:J

    return-wide v0
.end method

.method private static y()Z
    .locals 2

    .line 1608
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v1, "Pixel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private z()V
    .locals 3

    .line 1754
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->S:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1755
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->S:Z

    .line 1756
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/h;->c(J)V

    .line 1757
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 1758
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->z:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Z)J
    .locals 5

    .line 478
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->G:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/h;->a(Z)J

    move-result-wide v0

    .line 482
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2386
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Ljava/util/ArrayDeque;

    .line 2387
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->d:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 2389
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    goto :goto_0

    .line 2392
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->d:J

    sub-long v2, v0, v2

    .line 2394
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->a:Lcom/google/android/exoplayer2/aa;

    sget-object v4, Lcom/google/android/exoplayer2/aa;->a:Lcom/google/android/exoplayer2/aa;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/aa;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2395
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->c:J

    add-long/2addr v0, v2

    goto :goto_1

    .line 2396
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2397
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->c:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

    .line 2398
    invoke-interface {p1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;->a(J)J

    move-result-wide v0

    .line 2399
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->c:J

    add-long/2addr v0, v2

    goto :goto_1

    .line 2409
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Ljava/util/ArrayDeque;

    .line 2410
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    .line 2411
    iget-wide v2, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->d:J

    sub-long/2addr v2, v0

    .line 2413
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->a:Lcom/google/android/exoplayer2/aa;

    iget v0, v0, Lcom/google/android/exoplayer2/aa;->b:F

    .line 2414
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/af;->a(JF)J

    move-result-wide v0

    .line 2417
    iget-wide v2, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->c:J

    sub-long v0, v2, v0

    .line 2422
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->c:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

    .line 2423
    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;->b()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_4
    :goto_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 651
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->T:Z

    .line 652
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    .line 4323
    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/h;->d:Lcom/google/android/exoplayer2/audio/g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/g;->a()V

    .line 654
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1

    .line 1130
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->I:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1131
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->I:F

    .line 1132
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 1085
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->V:I

    if-eq v0, p1, :cond_1

    .line 1086
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->V:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1087
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->U:Z

    .line 1088
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;[I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    move-object v1, p0

    move-object v3, p1

    .line 498
    iget-object v0, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 499
    iget v0, v3, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->c(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 501
    iget v0, v3, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget v2, v3, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/af;->c(II)I

    move-result v0

    .line 503
    iget v2, v3, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->h:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    goto :goto_0

    .line 505
    :cond_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->g:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 507
    :goto_0
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->f:Lcom/google/android/exoplayer2/audio/u;

    iget v6, v3, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget v7, v3, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 3053
    iput v6, v5, Lcom/google/android/exoplayer2/audio/u;->d:I

    .line 3054
    iput v7, v5, Lcom/google/android/exoplayer2/audio/u;->e:I

    .line 510
    sget v5, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_1

    iget v5, v3, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    if-nez p2, :cond_1

    const/4 v5, 0x6

    new-array v6, v5, [I

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_2

    .line 515
    aput v7, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p2

    .line 518
    :cond_2
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->e:Lcom/google/android/exoplayer2/audio/k;

    .line 4041
    iput-object v6, v5, Lcom/google/android/exoplayer2/audio/k;->d:[I

    .line 520
    new-instance v5, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v6, v3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v7, v3, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v8, v3, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;-><init>(III)V

    .line 523
    array-length v6, v2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v2, v7

    .line 525
    :try_start_0
    invoke-interface {v8, v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a(Lcom/google/android/exoplayer2/audio/AudioProcessor$a;)Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    move-result-object v9

    .line 526
    invoke-interface {v8}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a()Z

    move-result v8
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_3

    move-object v5, v9

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 530
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)V

    throw v2

    .line 535
    :cond_4
    iget v6, v5, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->d:I

    .line 536
    iget v7, v5, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    .line 537
    iget v8, v5, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->c:I

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/af;->e(I)I

    move-result v8

    .line 538
    iget v5, v5, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->c:I

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/util/af;->c(II)I

    move-result v5

    move-object v12, v2

    move v9, v6

    move v6, v5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    new-array v0, v4, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 542
    iget v5, v3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 544
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m:Z

    if-eqz v6, :cond_6

    iget-object v6, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->u:Lcom/google/android/exoplayer2/audio/d;

    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/d;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 546
    iget-object v6, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 548
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v3, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 547
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/q;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 549
    iget v7, v3, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/af;->e(I)I

    move-result v7

    const/4 v8, 0x1

    move-object v12, v0

    move v9, v6

    move v8, v7

    const/4 v0, -0x1

    const/4 v6, -0x1

    move v7, v5

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x2

    .line 553
    iget-object v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b:Lcom/google/android/exoplayer2/audio/e;

    .line 554
    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/e;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 559
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 560
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v12, v0

    move v9, v8

    const/4 v0, -0x1

    const/4 v6, -0x1

    move v8, v7

    move v7, v5

    const/4 v5, 0x2

    :goto_3
    const-string v2, ") for: "

    if-eqz v9, :cond_9

    if-eqz v8, :cond_8

    .line 574
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Z:Z

    .line 575
    new-instance v13, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    const/4 v10, 0x0

    iget-boolean v11, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Z

    move-object v2, v13

    move-object v3, p1

    move v4, v0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;-><init>(Lcom/google/android/exoplayer2/Format;IIIIIIIZ[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 587
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 588
    iput-object v13, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    return-void

    .line 590
    :cond_7
    iput-object v13, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    return-void

    .line 569
    :cond_8
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Invalid output channel config (mode="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    throw v0

    .line 565
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Invalid output encoding (mode="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    throw v0

    .line 556
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unable to configure passthrough for: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    throw v0
.end method

.method public final a(Lcom/google/android/exoplayer2/aa;)V
    .locals 4

    .line 1040
    new-instance v0, Lcom/google/android/exoplayer2/aa;

    iget v1, p1, Lcom/google/android/exoplayer2/aa;->b:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    .line 1042
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(FFF)F

    move-result v1

    iget p1, p1, Lcom/google/android/exoplayer2/aa;->c:F

    .line 1043
    invoke-static {p1, v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(FFF)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/aa;-><init>(FF)V

    .line 1044
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    .line 1045
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(Lcom/google/android/exoplayer2/aa;)V

    return-void

    .line 8067
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t()Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->b:Z

    .line 1047
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Lcom/google/android/exoplayer2/aa;Z)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Lcom/google/android/exoplayer2/audio/AudioSink$a;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/audio/d;)V
    .locals 1

    .line 1072
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->u:Lcom/google/android/exoplayer2/audio/d;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1075
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->u:Lcom/google/android/exoplayer2/audio/d;

    .line 1076
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->X:Z

    if-eqz p1, :cond_1

    return-void

    .line 1080
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/audio/i;)V
    .locals 3

    .line 1094
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->W:Lcom/google/android/exoplayer2/audio/i;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1097
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/audio/i;->a:I

    .line 1098
    iget v1, p1, Lcom/google/android/exoplayer2/audio/i;->b:F

    .line 1099
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    .line 1100
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->W:Lcom/google/android/exoplayer2/audio/i;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/i;->a:I

    if-eq v2, v0, :cond_1

    .line 1101
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1
    if-eqz v0, :cond_2

    .line 1104
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 1107
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->W:Lcom/google/android/exoplayer2/audio/i;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;)Z
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/nio/ByteBuffer;JI)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    .line 669
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 671
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    const/4 v8, 0x0

    if-eqz v5, :cond_6

    .line 672
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q()Z

    move-result v5

    if-nez v5, :cond_2

    return v7

    .line 675
    :cond_2
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v9, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->canReuseAudioTrack(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 676
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->z()V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    return v7

    .line 681
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j()V

    goto :goto_2

    .line 684
    :cond_4
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iput-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 685
    iput-object v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 686
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-static {v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 687
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    .line 688
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    iget-object v9, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v9, v9, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v9, v9, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget-object v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v10, v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v10, v10, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {v5, v9, v10}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 690
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->aa:Z

    .line 694
    :cond_5
    :goto_2
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(J)V

    .line 697
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v()Z

    move-result v5

    const/4 v9, 0x2

    if-nez v5, :cond_c

    .line 4624
    :try_start_0
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->i:Landroid/os/ConditionVariable;

    invoke-virtual {v5}, Landroid/os/ConditionVariable;->block()V

    .line 4626
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->o()Landroid/media/AudioTrack;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    .line 4627
    invoke-static {v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4628
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    .line 4833
    iget-object v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;

    if-nez v10, :cond_7

    .line 4836
    new-instance v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;

    invoke-direct {v10, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V

    iput-object v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;

    .line 4838
    :cond_7
    iget-object v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;

    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->a(Landroid/media/AudioTrack;)V

    .line 4629
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    iget-object v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v10, v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v10, v10, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget-object v11, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v11, v11, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v11, v11, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {v5, v10, v11}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 4632
    :cond_8
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v5

    iput v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->V:I

    .line 4633
    iget-object v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    iget-object v11, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v5, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-ne v5, v9, :cond_9

    const/4 v12, 0x1

    goto :goto_3

    :cond_9
    const/4 v12, 0x0

    :goto_3
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v13, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v14, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v15, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/exoplayer2/audio/h;->a(Landroid/media/AudioTrack;ZIII)V

    .line 4639
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r()V

    .line 4641
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->W:Lcom/google/android/exoplayer2/audio/i;

    iget v5, v5, Lcom/google/android/exoplayer2/audio/i;->a:I

    if-eqz v5, :cond_a

    .line 4642
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    iget-object v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->W:Lcom/google/android/exoplayer2/audio/i;

    iget v10, v10, Lcom/google/android/exoplayer2/audio/i;->a:I

    invoke-virtual {v5, v10}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 4643
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    iget-object v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->W:Lcom/google/android/exoplayer2/audio/i;

    iget v10, v10, Lcom/google/android/exoplayer2/audio/i;->b:F

    invoke-virtual {v5, v10}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 4646
    :cond_a
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->G:Z
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 701
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->b:Z

    if-nez v2, :cond_b

    .line 704
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->o:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a(Ljava/lang/Exception;)V

    return v7

    .line 702
    :cond_b
    throw v0

    .line 708
    :cond_c
    :goto_4
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->o:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    .line 5167
    iput-object v8, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Ljava/lang/Exception;

    .line 710
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->G:Z

    const-wide/16 v10, 0x0

    if-eqz v5, :cond_e

    .line 711
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->H:J

    .line 712
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->F:Z

    .line 713
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->G:Z

    .line 715
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Z

    if-eqz v5, :cond_d

    sget v5, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v12, 0x17

    if-lt v5, v12, :cond_d

    .line 716
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x:Lcom/google/android/exoplayer2/aa;

    invoke-direct {v1, v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(Lcom/google/android/exoplayer2/aa;)V

    .line 718
    :cond_d
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(J)V

    .line 720
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->T:Z

    if-eqz v5, :cond_e

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a()V

    .line 725
    :cond_e
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x()J

    move-result-wide v12

    .line 5339
    iget-object v14, v5, Lcom/google/android/exoplayer2/audio/h;->b:Landroid/media/AudioTrack;

    invoke-static {v14}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/AudioTrack;

    invoke-virtual {v14}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v14

    .line 5340
    iget-boolean v15, v5, Lcom/google/android/exoplayer2/audio/h;->e:Z

    if-eqz v15, :cond_10

    if-ne v14, v9, :cond_f

    .line 5345
    iput-boolean v7, v5, Lcom/google/android/exoplayer2/audio/h;->g:Z

    :goto_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_f
    if-ne v14, v6, :cond_10

    .line 5352
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/h;->d()J

    move-result-wide v15

    cmp-long v9, v15, v10

    if-nez v9, :cond_10

    goto :goto_5

    .line 5357
    :cond_10
    iget-boolean v9, v5, Lcom/google/android/exoplayer2/audio/h;->g:Z

    .line 5358
    invoke-virtual {v5, v12, v13}, Lcom/google/android/exoplayer2/audio/h;->d(J)Z

    move-result v12

    iput-boolean v12, v5, Lcom/google/android/exoplayer2/audio/h;->g:Z

    if-eqz v9, :cond_11

    .line 5359
    iget-boolean v9, v5, Lcom/google/android/exoplayer2/audio/h;->g:Z

    if-nez v9, :cond_11

    if-eq v14, v6, :cond_11

    .line 5360
    iget-object v9, v5, Lcom/google/android/exoplayer2/audio/h;->a:Lcom/google/android/exoplayer2/audio/h$a;

    iget v12, v5, Lcom/google/android/exoplayer2/audio/h;->c:I

    iget-wide v13, v5, Lcom/google/android/exoplayer2/audio/h;->f:J

    invoke-static {v13, v14}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v13

    invoke-interface {v9, v12, v13, v14}, Lcom/google/android/exoplayer2/audio/h$a;->a(IJ)V

    :cond_11
    const/4 v5, 0x1

    :goto_6
    if-nez v5, :cond_12

    return v7

    .line 729
    :cond_12
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    const-string v9, "DefaultAudioSink"

    if-nez v5, :cond_1e

    .line 731
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v12, :cond_13

    const/4 v5, 0x1

    goto :goto_7

    :cond_13
    const/4 v5, 0x0

    :goto_7
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 732
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_14

    return v6

    .line 737
    :cond_14
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v5, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-eqz v5, :cond_17

    iget v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->E:I

    if-nez v5, :cond_17

    .line 739
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v5, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    const/16 v12, 0x400

    const/4 v13, -0x1

    packed-switch v5, :pswitch_data_0

    .line 5695
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unexpected audio encoding: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5678
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/audio/c;->a(Ljava/nio/ByteBuffer;)I

    move-result v12

    goto :goto_8

    :pswitch_2
    const/16 v12, 0x200

    goto :goto_8

    .line 5680
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/audio/b;->b(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-ne v5, v13, :cond_15

    const/4 v12, 0x0

    goto :goto_8

    .line 5683
    :cond_15
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/audio/b;->a(Ljava/nio/ByteBuffer;I)I

    move-result v5

    mul-int/lit8 v12, v5, 0x10

    goto :goto_8

    :pswitch_4
    const/16 v12, 0x800

    goto :goto_8

    .line 5655
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 5656
    invoke-static {v5}, Lcom/google/android/exoplayer2/audio/o;->b(I)I

    move-result v12

    if-eq v12, v13, :cond_16

    goto :goto_8

    .line 5658
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5672
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/audio/l;->a(Ljava/nio/ByteBuffer;)I

    move-result v12

    goto :goto_8

    .line 5676
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/audio/b;->a(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 739
    :goto_8
    :pswitch_8
    iput v12, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->E:I

    if-nez v12, :cond_17

    return v6

    .line 749
    :cond_17
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    if-eqz v5, :cond_19

    .line 750
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q()Z

    move-result v5

    if-nez v5, :cond_18

    return v7

    .line 754
    :cond_18
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(J)V

    .line 755
    iput-object v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    .line 759
    :cond_19
    iget-wide v12, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->H:J

    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w()J

    move-result-wide v14

    iget-object v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->f:Lcom/google/android/exoplayer2/audio/u;

    .line 6067
    iget-wide v10, v8, Lcom/google/android/exoplayer2/audio/u;->f:J

    sub-long/2addr v14, v10

    .line 761
    invoke-virtual {v5, v14, v15}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFramesToDurationUs(J)J

    move-result-wide v10

    add-long/2addr v12, v10

    .line 763
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->F:Z

    if-nez v5, :cond_1a

    sub-long v10, v12, v2

    .line 764
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v14, 0x30d40

    cmp-long v5, v10, v14

    if-lez v5, :cond_1a

    .line 765
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Discontinuity detected [expected "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", got "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->F:Z

    .line 774
    :cond_1a
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->F:Z

    if-eqz v5, :cond_1c

    .line 775
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q()Z

    move-result v5

    if-nez v5, :cond_1b

    return v7

    :cond_1b
    sub-long v10, v2, v12

    .line 782
    iget-wide v12, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->H:J

    add-long/2addr v12, v10

    iput-wide v12, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->H:J

    .line 783
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->F:Z

    .line 785
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(J)V

    .line 786
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Lcom/google/android/exoplayer2/audio/AudioSink$a;

    if-eqz v5, :cond_1c

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-eqz v8, :cond_1c

    .line 787
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioSink$a;->a()V

    .line 791
    :cond_1c
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v5, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v5, :cond_1d

    .line 792
    iget-wide v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->A:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v12, v5

    add-long/2addr v10, v12

    iput-wide v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->A:J

    goto :goto_9

    .line 794
    :cond_1d
    iget-wide v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->B:J

    iget v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->E:I

    mul-int v5, v5, v4

    int-to-long v12, v5

    add-long/2addr v10, v12

    iput-wide v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->B:J

    .line 797
    :goto_9
    iput-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 798
    iput v4, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->M:I

    .line 801
    :cond_1e
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(J)V

    .line 803
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    .line 804
    iput-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 805
    iput v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->M:I

    return v6

    .line 809
    :cond_1f
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x()J

    move-result-wide v2

    .line 6387
    iget-wide v4, v0, Lcom/google/android/exoplayer2/audio/h;->i:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v10

    if-eqz v8, :cond_20

    const-wide/16 v4, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_20

    .line 6389
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/exoplayer2/audio/h;->i:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_a

    :cond_20
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_21

    const-string v0, "Resetting stalled audio track"

    .line 810
    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j()V

    return v6

    :cond_21
    return v7

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public final b(Lcom/google/android/exoplayer2/Format;)I
    .locals 3

    .line 452
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 453
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid PCM encoding: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 457
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->d:Z

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2

    .line 465
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Z:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->u:Lcom/google/android/exoplayer2/audio/d;

    .line 467
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 470
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b:Lcom/google/android/exoplayer2/audio/e;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/e;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 661
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->F:Z

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 9321
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t()Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->a:Lcom/google/android/exoplayer2/aa;

    .line 1061
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Lcom/google/android/exoplayer2/aa;Z)V

    return-void
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 976
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->R:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->z()V

    const/4 v0, 0x1

    .line 978
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->R:Z

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1029
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->R:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 3

    .line 1034
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    .line 1035
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/h;->d(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/google/android/exoplayer2/aa;
    .locals 1

    .line 1054
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Z

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x:Lcom/google/android/exoplayer2/aa;

    return-object v0

    .line 8321
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t()Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->a:Lcom/google/android/exoplayer2/aa;

    return-object v0
.end method

.method public final g()V
    .locals 3

    .line 1112
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 1113
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->U:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 1114
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->X:Z

    if-nez v0, :cond_1

    .line 1115
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->X:Z

    .line 1116
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j()V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1122
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->X:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1123
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->X:Z

    .line 1124
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 7

    const/4 v0, 0x0

    .line 1148
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->T:Z

    .line 1149
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    .line 10422
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/h;->c()V

    .line 10423
    iget-wide v2, v1, Lcom/google/android/exoplayer2/audio/h;->h:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 10426
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/h;->d:Lcom/google/android/exoplayer2/audio/g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/g;->a()V

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1156
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1157
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s()V

    .line 1159
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->b(Landroid/media/AudioTrack;)V

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    .line 1167
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    .line 1168
    sget v2, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->U:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 1174
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->V:I

    .line 1176
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    if-eqz v2, :cond_3

    .line 1177
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 1178
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 1180
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/h;->b()V

    .line 1181
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->i:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 1182
    new-instance v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;

    const-string v3, "ExoPlayer:AudioTrackReleaseThread"

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Ljava/lang/String;Landroid/media/AudioTrack;)V

    .line 1192
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;->start()V

    .line 1194
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    .line 11167
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Ljava/lang/Exception;

    .line 1195
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->o:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    .line 12167
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Ljava/lang/Exception;

    return-void
.end method

.method public final k()V
    .locals 8

    .line 1202
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 1203
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j()V

    return-void

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    const/4 v1, 0x0

    .line 13167
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Ljava/lang/Exception;

    .line 1208
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->o:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    .line 14167
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Ljava/lang/Exception;

    .line 1210
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1214
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s()V

    .line 1215
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1218
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 1220
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/h;->b()V

    .line 1221
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Lcom/google/android/exoplayer2/audio/h;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v3, 0x2

    const/4 v7, 0x1

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v5, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v6, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/h;->a(Landroid/media/AudioTrack;ZIII)V

    .line 1228
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->G:Z

    return-void
.end method

.method public final l()V
    .locals 5

    .line 1233
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j()V

    .line 1234
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->g:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1235
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->f()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->h:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1238
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->f()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1240
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->T:Z

    .line 1241
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Z:Z

    return-void
.end method
