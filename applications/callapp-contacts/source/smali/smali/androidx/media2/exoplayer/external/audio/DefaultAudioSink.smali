.class public final Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$d;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$b;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$a;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Z = false


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:I

.field private E:I

.field private F:J

.field private G:F

.field private H:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

.field private I:[Ljava/nio/ByteBuffer;

.field private J:Ljava/nio/ByteBuffer;

.field private K:Ljava/nio/ByteBuffer;

.field private L:[B

.field private M:I

.field private N:I

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Landroidx/media2/exoplayer/external/audio/p;

.field private S:Z

.field private T:J

.field public c:I

.field private final d:Landroidx/media2/exoplayer/external/audio/d;

.field private final e:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$a;

.field private final f:Z

.field private final g:Landroidx/media2/exoplayer/external/audio/r;

.field private final h:Landroidx/media2/exoplayer/external/audio/z;

.field private final i:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

.field private final j:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

.field private final k:Landroid/os/ConditionVariable;

.field private final l:Landroidx/media2/exoplayer/external/audio/o;

.field private final m:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroidx/media2/exoplayer/external/audio/AudioSink$a;

.field private o:Landroid/media/AudioTrack;

.field private p:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

.field private q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

.field private r:Landroid/media/AudioTrack;

.field private s:Landroidx/media2/exoplayer/external/audio/c;

.field private t:Landroidx/media2/exoplayer/external/ad;

.field private u:Landroidx/media2/exoplayer/external/ad;

.field private v:J

.field private w:J

.field private x:Ljava/nio/ByteBuffer;

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/audio/d;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$a;Z)V
    .locals 5

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->d:Landroidx/media2/exoplayer/external/audio/d;

    .line 349
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$a;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->e:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$a;

    .line 350
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->f:Z

    .line 351
    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->k:Landroid/os/ConditionVariable;

    .line 352
    new-instance p1, Landroidx/media2/exoplayer/external/audio/o;

    new-instance v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$d;-><init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/audio/o;-><init>(Landroidx/media2/exoplayer/external/audio/o$a;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->l:Landroidx/media2/exoplayer/external/audio/o;

    .line 353
    new-instance p1, Landroidx/media2/exoplayer/external/audio/r;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/audio/r;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->g:Landroidx/media2/exoplayer/external/audio/r;

    .line 354
    new-instance v0, Landroidx/media2/exoplayer/external/audio/z;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/audio/z;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->h:Landroidx/media2/exoplayer/external/audio/z;

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Landroidx/media2/exoplayer/external/audio/q;

    .line 356
    new-instance v3, Landroidx/media2/exoplayer/external/audio/v;

    invoke-direct {v3}, Landroidx/media2/exoplayer/external/audio/v;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object p1, v2, p3

    const/4 p1, 0x2

    aput-object v0, v2, p1

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 361
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$a;->a()[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p1, v4, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 362
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->i:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    new-array p1, p3, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 363
    new-instance p2, Landroidx/media2/exoplayer/external/audio/t;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/audio/t;-><init>()V

    aput-object p2, p1, v4

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->j:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 364
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->G:F

    .line 365
    iput v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->E:I

    .line 366
    sget-object p1, Landroidx/media2/exoplayer/external/audio/c;->a:Landroidx/media2/exoplayer/external/audio/c;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->s:Landroidx/media2/exoplayer/external/audio/c;

    .line 367
    iput v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->c:I

    .line 368
    new-instance p1, Landroidx/media2/exoplayer/external/audio/p;

    const/4 p2, 0x0

    invoke-direct {p1, v4, p2}, Landroidx/media2/exoplayer/external/audio/p;-><init>(IF)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->R:Landroidx/media2/exoplayer/external/audio/p;

    .line 369
    sget-object p1, Landroidx/media2/exoplayer/external/ad;->a:Landroidx/media2/exoplayer/external/ad;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->u:Landroidx/media2/exoplayer/external/ad;

    const/4 p1, -0x1

    .line 370
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->N:I

    new-array p1, v4, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 371
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->H:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    new-array p1, v4, [Ljava/nio/ByteBuffer;

    .line 372
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->I:[Ljava/nio/ByteBuffer;

    .line 373
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->m:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/audio/d;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;-><init>(Landroidx/media2/exoplayer/external/audio/d;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/audio/d;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;Z)V
    .locals 1

    .line 325
    new-instance v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$b;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$b;-><init>([Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    invoke-direct {p0, p1, v0, p3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;-><init>(Landroidx/media2/exoplayer/external/audio/d;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$a;Z)V

    return-void
.end method

.method private a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 10

    .line 1194
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const-wide/16 v1, 0x3e8

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    const/4 v7, 0x1

    mul-long v8, p4, v1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 1196
    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p1

    return p1

    .line 1198
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->x:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/16 v0, 0x10

    .line 1199
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->x:Ljava/nio/ByteBuffer;

    .line 1200
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1201
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->x:Ljava/nio/ByteBuffer;

    const v3, 0x55550001

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1203
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->y:I

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1204
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->x:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1205
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->x:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    mul-long p4, p4, v1

    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1206
    iget-object p4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1207
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->y:I

    .line 1209
    :cond_2
    iget-object p4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    const/4 p5, 0x1

    if-lez p4, :cond_4

    .line 1211
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, p4, p5}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_3

    .line 1213
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->y:I

    return v0

    :cond_3
    if-ge v0, p4, :cond_4

    return v3

    .line 17188
    :cond_4
    invoke-virtual {p1, p2, p3, p5}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    if-gez p1, :cond_5

    .line 1222
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->y:I

    return p1

    .line 1225
    :cond_5
    iget p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->y:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->y:I

    return p1
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)Landroid/os/ConditionVariable;
    .locals 0

    .line 57
    iget-object p0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->k:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 704
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->H:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    .line 707
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->I:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    .line 708
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 710
    invoke-direct {p0, v2, p1, p2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 712
    :cond_2
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->H:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    aget-object v3, v3, v1

    .line 713
    invoke-interface {v3, v2}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->a(Ljava/nio/ByteBuffer;)V

    .line 714
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->f()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 715
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->I:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 716
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/ad;J)V
    .locals 8

    .line 1044
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canApplyPlaybackParameters:Z

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->e:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$a;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$a;->a(Landroidx/media2/exoplayer/external/ad;)Landroidx/media2/exoplayer/external/ad;

    move-result-object p1

    goto :goto_0

    .line 1046
    :cond_0
    sget-object p1, Landroidx/media2/exoplayer/external/ad;->a:Landroidx/media2/exoplayer/external/ad;

    :goto_0
    move-object v1, p1

    .line 1048
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->m:Ljava/util/ArrayDeque;

    new-instance v7, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;

    const-wide/16 v2, 0x0

    .line 1051
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 1052
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;-><init>(Landroidx/media2/exoplayer/external/ad;JJLandroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V

    .line 1048
    invoke-virtual {p1, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1053
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->k()V

    return-void
.end method

.method static synthetic b(I)I
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_6

    const/4 v0, 0x6

    if-eq p0, v0, :cond_5

    const/4 v0, 0x7

    if-eq p0, v0, :cond_4

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0xe

    if-eq p0, v0, :cond_2

    const/16 v0, 0x11

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 18162
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const p0, 0x52080

    return p0

    :cond_2
    const p0, 0x2ebae4

    return p0

    :cond_3
    const p0, 0x225510

    return p0

    :cond_4
    const p0, 0x2ee00

    return p0

    :cond_5
    :goto_0
    const p0, 0xbb800

    return p0

    :cond_6
    const p0, 0x13880

    return p0
.end method

.method static synthetic b(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J
    .locals 2

    .line 57
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Ljava/nio/ByteBuffer;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 735
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 739
    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    goto :goto_1

    .line 741
    :cond_2
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    .line 742
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-ge v0, v1, :cond_5

    .line 743
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 744
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->L:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 745
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->L:[B

    .line 747
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 748
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->L:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 749
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 750
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->M:I

    .line 753
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 755
    sget v4, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-ge v4, v1, :cond_6

    .line 757
    iget-object p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->l:Landroidx/media2/exoplayer/external/audio/o;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->B:J

    invoke-virtual {p2, v1, v2}, Landroidx/media2/exoplayer/external/audio/o;->a(J)I

    move-result p2

    if-lez p2, :cond_9

    .line 759
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 760
    iget-object p3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->L:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->M:I

    invoke-virtual {p3, v1, v2, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    if-lez v3, :cond_9

    .line 762
    iget p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->M:I

    add-int/2addr p2, v3

    iput p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->M:I

    .line 763
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    .line 766
    :cond_6
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->S:Z

    if-eqz v1, :cond_8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v4

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    .line 767
    :goto_2
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 768
    iget-object v7, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    invoke-direct/range {v6 .. v11}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v3

    goto :goto_3

    .line 771
    :cond_8
    iget-object p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    .line 14188
    invoke-virtual {p2, p1, v0, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 774
    :cond_9
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->T:J

    if-ltz v3, :cond_d

    .line 780
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-eqz p1, :cond_a

    .line 781
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->B:J

    int-to-long v1, v3

    add-long/2addr p1, v1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->B:J

    :cond_a
    if-ne v3, v0, :cond_c

    .line 784
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-nez p1, :cond_b

    .line 785
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->C:J

    iget p3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->D:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->C:J

    :cond_b
    const/4 p1, 0x0

    .line 787
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    :cond_c
    return-void

    .line 777
    :cond_d
    new-instance p1, Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;

    invoke-direct {p1, v3}, Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;-><init>(I)V

    throw p1
.end method

.method static synthetic c(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J
    .locals 2

    .line 57
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic d(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)Landroidx/media2/exoplayer/external/audio/AudioSink$a;
    .locals 0

    .line 57
    iget-object p0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->n:Landroidx/media2/exoplayer/external/audio/AudioSink$a;

    return-object p0
.end method

.method static synthetic e(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->T:J

    return-wide v0
.end method

.method private k()V
    .locals 6

    .line 494
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->availableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 495
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 496
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 497
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 498
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 500
    :cond_0
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->h()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 503
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 504
    new-array v2, v0, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->H:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 505
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->I:[Ljava/nio/ByteBuffer;

    .line 506
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->l()V

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x0

    .line 510
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->H:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 511
    aget-object v1, v1, v0

    .line 512
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->h()V

    .line 513
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->I:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->f()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private m()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 801
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->N:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 803
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->processingEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->H:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v0, v0

    :goto_0
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->N:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 806
    :goto_2
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->N:I

    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->H:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    .line 807
    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    .line 809
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->e()V

    .line 811
    :cond_2
    invoke-direct {p0, v7, v8}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->a(J)V

    .line 812
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->g()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 816
    :cond_3
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->N:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->N:I

    goto :goto_1

    .line 820
    :cond_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 821
    invoke-direct {p0, v0, v7, v8}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->b(Ljava/nio/ByteBuffer;J)V

    .line 822
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    .line 826
    :cond_5
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->N:I

    return v2
.end method

.method private n()V
    .locals 2

    .line 938
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 940
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 941
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->G:F

    .line 15231
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->G:F

    .line 15235
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    .line 1026
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->o:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1032
    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->o:Landroid/media/AudioTrack;

    .line 1033
    new-instance v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$2;

    invoke-direct {v1, p0, v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$2;-><init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V

    .line 1038
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$2;->start()V

    return-void
.end method

.method private p()Z
    .locals 1

    .line 1090
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private q()J
    .locals 4

    .line 1094
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-eqz v0, :cond_0

    .line 1095
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->z:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    .line 1096
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->A:J

    return-wide v0
.end method

.method private r()J
    .locals 4

    .line 1100
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-eqz v0, :cond_0

    .line 1101
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->B:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    .line 1102
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->C:J

    return-wide v0
.end method

.method private s()V
    .locals 3

    .line 1239
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->P:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1240
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->P:Z

    .line 1241
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->l:Landroidx/media2/exoplayer/external/audio/o;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/o;->b(J)V

    .line 1242
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 1243
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->y:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Z)J
    .locals 8

    .line 401
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->E:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 404
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->l:Landroidx/media2/exoplayer/external/audio/o;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/audio/o;->a(Z)J

    move-result-wide v0

    .line 405
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 406
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->F:J

    const/4 p1, 0x0

    .line 3058
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->m:Ljava/util/ArrayDeque;

    .line 3059
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;

    .line 3248
    iget-wide v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;->c:J

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    .line 3060
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 4248
    iget-object v4, p1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;->a:Landroidx/media2/exoplayer/external/ad;

    .line 3064
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->u:Landroidx/media2/exoplayer/external/ad;

    .line 5248
    iget-wide v4, p1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;->c:J

    .line 3065
    iput-wide v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->w:J

    .line 6248
    iget-wide v4, p1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;->b:J

    .line 3066
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->F:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->v:J

    .line 3069
    :cond_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->u:Landroidx/media2/exoplayer/external/ad;

    iget p1, p1, Landroidx/media2/exoplayer/external/ad;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v4

    if-nez p1, :cond_3

    .line 3070
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->v:J

    add-long/2addr v0, v4

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->w:J

    sub-long/2addr v0, v4

    goto :goto_2

    .line 3073
    :cond_3
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3074
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->v:J

    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->e:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$a;

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->w:J

    sub-long/2addr v0, v6

    .line 3075
    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$a;->a(J)J

    move-result-wide v0

    goto :goto_1

    .line 3079
    :cond_4
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->v:J

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->w:J

    sub-long/2addr v0, v6

    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->u:Landroidx/media2/exoplayer/external/ad;

    iget p1, p1, Landroidx/media2/exoplayer/external/ad;->b:F

    .line 3080
    invoke-static {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/ac;->a(JF)J

    move-result-wide v0

    :goto_1
    add-long/2addr v0, v4

    .line 7085
    :goto_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->e:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$a;

    .line 7086
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$a;->b()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-long/2addr v2, v0

    return-wide v2

    :cond_5
    :goto_3
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 566
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->Q:Z

    .line 567
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->l:Landroidx/media2/exoplayer/external/audio/o;

    .line 9256
    iget-object v0, v0, Landroidx/media2/exoplayer/external/audio/o;->e:Landroidx/media2/exoplayer/external/audio/n;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/n;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/n;->a()V

    .line 569
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1

    .line 931
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->G:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 932
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->G:F

    .line 933
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->n()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 912
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 913
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->S:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->c:I

    if-eq v0, p1, :cond_2

    .line 914
    :cond_1
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->S:Z

    .line 915
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->c:I

    .line 916
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->i()V

    :cond_2
    return-void
.end method

.method public final a(III[III)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 419
    sget v2, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v6, 0x15

    if-ge v2, v6, :cond_0

    if-ne v0, v3, :cond_0

    if-nez p4, :cond_0

    new-array v2, v4, [I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    .line 424
    aput v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p4

    .line 428
    :cond_1
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ac;->c(I)Z

    move-result v7

    const/4 v6, 0x4

    const/4 v15, 0x1

    move/from16 v8, p1

    if-eqz v7, :cond_2

    if-eq v8, v6, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    .line 433
    :goto_1
    iget-boolean v9, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->f:Z

    if-eqz v9, :cond_3

    .line 435
    invoke-virtual {v1, v0, v6}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->a(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 436
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ac;->d(I)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_4

    .line 439
    iget-object v10, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->j:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    goto :goto_3

    .line 440
    :cond_4
    iget-object v10, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->i:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    :goto_3
    move-object v14, v10

    if-eqz v16, :cond_7

    .line 443
    iget-object v10, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->h:Landroidx/media2/exoplayer/external/audio/z;

    move/from16 v11, p5

    .line 8061
    iput v11, v10, Landroidx/media2/exoplayer/external/audio/z;->e:I

    move/from16 v11, p6

    .line 8062
    iput v11, v10, Landroidx/media2/exoplayer/external/audio/z;->f:I

    .line 444
    iget-object v10, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->g:Landroidx/media2/exoplayer/external/audio/r;

    .line 9050
    iput-object v2, v10, Landroidx/media2/exoplayer/external/audio/r;->e:[I

    .line 445
    array-length v2, v14

    move/from16 v13, p3

    move v11, v0

    move v3, v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_4
    if-ge v10, v2, :cond_6

    aget-object v4, v14, v10

    .line 447
    :try_start_0
    invoke-interface {v4, v13, v11, v3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->a(III)Z

    move-result v19
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException; {:try_start_0 .. :try_end_0} :catch_0

    or-int v12, v12, v19

    .line 451
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->a()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 452
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->b()I

    move-result v11

    .line 453
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->d()I

    move-result v13

    .line 454
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->c()I

    move-result v3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x6

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 449
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    move v2, v12

    goto :goto_5

    :cond_7
    move/from16 v13, p3

    move v11, v0

    move v3, v8

    const/4 v2, 0x0

    .line 9115
    :goto_5
    sget v4, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v10, 0x1c

    if-gt v4, v10, :cond_a

    if-nez v7, :cond_a

    const/4 v4, 0x7

    if-ne v11, v4, :cond_8

    const/16 v4, 0x8

    goto :goto_6

    :cond_8
    const/4 v4, 0x3

    if-eq v11, v4, :cond_9

    if-eq v11, v6, :cond_9

    const/4 v4, 0x5

    if-ne v11, v4, :cond_a

    :cond_9
    const/4 v4, 0x6

    goto :goto_6

    :cond_a
    move v4, v11

    .line 9129
    :goto_6
    sget v6, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v10, 0x1a

    if-gt v6, v10, :cond_b

    sget-object v6, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v10, "fugu"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez v7, :cond_b

    if-ne v4, v15, :cond_b

    const/4 v4, 0x2

    .line 9133
    :cond_b
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/ac;->e(I)I

    move-result v12

    if-eqz v12, :cond_13

    const/4 v4, -0x1

    if-eqz v7, :cond_c

    .line 465
    invoke-static/range {p1 .. p2}, Landroidx/media2/exoplayer/external/util/ac;->b(II)I

    move-result v0

    move v8, v0

    goto :goto_7

    :cond_c
    const/4 v8, -0x1

    :goto_7
    if-eqz v7, :cond_d

    .line 467
    invoke-static {v3, v11}, Landroidx/media2/exoplayer/external/util/ac;->b(II)I

    move-result v0

    move v10, v0

    goto :goto_8

    :cond_d
    const/4 v10, -0x1

    :goto_8
    if-eqz v16, :cond_e

    if-nez v9, :cond_e

    const/4 v0, 0x1

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    .line 469
    :goto_9
    new-instance v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    const/16 v17, 0x0

    move-object v6, v4

    move/from16 v9, p3

    move v11, v13

    move v13, v3

    move-object v3, v14

    move/from16 v14, v17

    const/16 v18, 0x1

    move/from16 v15, v16

    move/from16 v16, v0

    move-object/from16 v17, v3

    invoke-direct/range {v6 .. v17}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;-><init>(ZIIIIIIIZZ[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    if-nez v2, :cond_f

    .line 484
    iget-object v0, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_10

    :cond_f
    const/4 v5, 0x1

    .line 485
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 486
    invoke-virtual {v4, v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canReuseAudioTrack(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v5, :cond_12

    .line 487
    :cond_11
    iput-object v4, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    return-void

    .line 489
    :cond_12
    iput-object v4, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    return-void

    .line 461
    :cond_13
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported channel count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroidx/media2/exoplayer/external/ad;)V
    .locals 1

    .line 842
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canApplyPlaybackParameters:Z

    if-nez v0, :cond_0

    .line 843
    sget-object p1, Landroidx/media2/exoplayer/external/ad;->a:Landroidx/media2/exoplayer/external/ad;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->u:Landroidx/media2/exoplayer/external/ad;

    return-void

    .line 846
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->f()Landroidx/media2/exoplayer/external/ad;

    move-result-object v0

    .line 847
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/ad;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 848
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->t:Landroidx/media2/exoplayer/external/ad;

    return-void

    .line 855
    :cond_1
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->u:Landroidx/media2/exoplayer/external/ad;

    :cond_2
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/audio/AudioSink$a;)V
    .locals 0

    .line 380
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->n:Landroidx/media2/exoplayer/external/audio/AudioSink$a;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/audio/c;)V
    .locals 1

    .line 872
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->s:Landroidx/media2/exoplayer/external/audio/c;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/audio/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 875
    :cond_0
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->s:Landroidx/media2/exoplayer/external/audio/c;

    .line 876
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->S:Z

    if-eqz p1, :cond_1

    return-void

    .line 880
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->i()V

    const/4 p1, 0x0

    .line 881
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->c:I

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/audio/p;)V
    .locals 3

    .line 894
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->R:Landroidx/media2/exoplayer/external/audio/p;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/audio/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 897
    :cond_0
    iget v0, p1, Landroidx/media2/exoplayer/external/audio/p;->a:I

    .line 898
    iget v1, p1, Landroidx/media2/exoplayer/external/audio/p;->b:F

    .line 899
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    .line 900
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->R:Landroidx/media2/exoplayer/external/audio/p;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/p;->a:I

    if-eq v2, v0, :cond_1

    .line 901
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1
    if-eqz v0, :cond_2

    .line 904
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 907
    :cond_2
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->R:Landroidx/media2/exoplayer/external/audio/p;

    return-void
.end method

.method public final a(II)Z
    .locals 3

    .line 385
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/ac;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 390
    sget p1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    .line 392
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->d:Landroidx/media2/exoplayer/external/audio/d;

    if-eqz v0, :cond_5

    .line 2132
    iget-object v0, v0, Landroidx/media2/exoplayer/external/audio/d;->b:[I

    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p2

    if-ltz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_5

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    .line 393
    iget-object p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->d:Landroidx/media2/exoplayer/external/audio/d;

    .line 2139
    iget p2, p2, Landroidx/media2/exoplayer/external/audio/d;->c:I

    if-gt p1, p2, :cond_5

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public final a(Ljava/nio/ByteBuffer;J)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException;,
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 585
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 587
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    .line 588
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->m()Z

    move-result v4

    if-nez v4, :cond_2

    return v5

    .line 591
    :cond_2
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v4, v8}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canReuseAudioTrack(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 592
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->s()V

    .line 593
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    return v5

    .line 597
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->i()V

    goto :goto_2

    .line 600
    :cond_4
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iput-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 601
    iput-object v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 604
    :goto_2
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->u:Landroidx/media2/exoplayer/external/ad;

    invoke-direct {v0, v4, v2, v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->a(Landroidx/media2/exoplayer/external/ad;J)V

    .line 607
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p()Z

    move-result v4

    const/4 v8, 0x6

    const/4 v9, 0x5

    const-wide/16 v12, 0x0

    if-nez v4, :cond_d

    .line 9523
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->k:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 9525
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 9526
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v14, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->S:Z

    iget-object v15, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->s:Landroidx/media2/exoplayer/external/audio/c;

    iget v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->c:I

    .line 9527
    invoke-virtual {v4, v14, v15, v7}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->buildAudioTrack(ZLandroidx/media2/exoplayer/external/audio/c;I)Landroid/media/AudioTrack;

    move-result-object v4

    iput-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    .line 9528
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    .line 9529
    sget-boolean v7, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->a:Z

    if-eqz v7, :cond_7

    .line 9530
    sget v7, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v14, 0x15

    if-ge v7, v14, :cond_7

    .line 9533
    iget-object v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->o:Landroid/media/AudioTrack;

    if-eqz v7, :cond_6

    .line 9534
    invoke-virtual {v7}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v7

    if-eq v4, v7, :cond_6

    .line 9535
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->o()V

    .line 9537
    :cond_6
    iget-object v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->o:Landroid/media/AudioTrack;

    if-nez v7, :cond_7

    .line 10110
    new-instance v7, Landroid/media/AudioTrack;

    const/16 v17, 0x3

    const/16 v18, 0xfa0

    const/16 v19, 0x4

    const/16 v20, 0x2

    const/16 v21, 0x2

    const/16 v22, 0x0

    move-object/from16 v16, v7

    move/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 9538
    iput-object v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->o:Landroid/media/AudioTrack;

    .line 9542
    :cond_7
    iget v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->c:I

    if-eq v7, v4, :cond_8

    .line 9543
    iput v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->c:I

    .line 9544
    iget-object v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->n:Landroidx/media2/exoplayer/external/audio/AudioSink$a;

    if-eqz v7, :cond_8

    .line 9545
    invoke-interface {v7, v4}, Landroidx/media2/exoplayer/external/audio/AudioSink$a;->a(I)V

    .line 9549
    :cond_8
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->u:Landroidx/media2/exoplayer/external/ad;

    invoke-direct {v0, v4, v2, v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->a(Landroidx/media2/exoplayer/external/ad;J)V

    .line 9551
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->l:Landroidx/media2/exoplayer/external/audio/o;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    iget-object v14, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v14, v14, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget-object v15, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v15, v15, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget-object v6, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v6, v6, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->bufferSize:I

    .line 10201
    iput-object v7, v4, Landroidx/media2/exoplayer/external/audio/o;->b:Landroid/media/AudioTrack;

    .line 10202
    iput v15, v4, Landroidx/media2/exoplayer/external/audio/o;->c:I

    .line 10203
    iput v6, v4, Landroidx/media2/exoplayer/external/audio/o;->d:I

    .line 10204
    new-instance v10, Landroidx/media2/exoplayer/external/audio/n;

    invoke-direct {v10, v7}, Landroidx/media2/exoplayer/external/audio/n;-><init>(Landroid/media/AudioTrack;)V

    iput-object v10, v4, Landroidx/media2/exoplayer/external/audio/o;->e:Landroidx/media2/exoplayer/external/audio/n;

    .line 10205
    invoke-virtual {v7}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v7

    iput v7, v4, Landroidx/media2/exoplayer/external/audio/o;->f:I

    .line 10484
    sget v7, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v10, 0x17

    if-ge v7, v10, :cond_a

    if-eq v14, v9, :cond_9

    if-ne v14, v8, :cond_a

    :cond_9
    const/4 v7, 0x1

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    .line 10206
    :goto_3
    iput-boolean v7, v4, Landroidx/media2/exoplayer/external/audio/o;->g:Z

    .line 10207
    invoke-static {v14}, Landroidx/media2/exoplayer/external/util/ac;->c(I)Z

    move-result v7

    iput-boolean v7, v4, Landroidx/media2/exoplayer/external/audio/o;->k:Z

    .line 10208
    iget-boolean v7, v4, Landroidx/media2/exoplayer/external/audio/o;->k:Z

    if-eqz v7, :cond_b

    div-int/2addr v6, v15

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroidx/media2/exoplayer/external/audio/o;->d(J)J

    move-result-wide v6

    goto :goto_4

    :cond_b
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    iput-wide v6, v4, Landroidx/media2/exoplayer/external/audio/o;->h:J

    .line 10209
    iput-wide v12, v4, Landroidx/media2/exoplayer/external/audio/o;->l:J

    .line 10210
    iput-wide v12, v4, Landroidx/media2/exoplayer/external/audio/o;->m:J

    .line 10211
    iput-wide v12, v4, Landroidx/media2/exoplayer/external/audio/o;->n:J

    .line 10212
    iput-boolean v5, v4, Landroidx/media2/exoplayer/external/audio/o;->j:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 10213
    iput-wide v6, v4, Landroidx/media2/exoplayer/external/audio/o;->o:J

    .line 10214
    iput-wide v6, v4, Landroidx/media2/exoplayer/external/audio/o;->p:J

    .line 10215
    iput-wide v12, v4, Landroidx/media2/exoplayer/external/audio/o;->i:J

    .line 9556
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->n()V

    .line 9558
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->R:Landroidx/media2/exoplayer/external/audio/p;

    iget v4, v4, Landroidx/media2/exoplayer/external/audio/p;->a:I

    if-eqz v4, :cond_c

    .line 9559
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->R:Landroidx/media2/exoplayer/external/audio/p;

    iget v6, v6, Landroidx/media2/exoplayer/external/audio/p;->a:I

    invoke-virtual {v4, v6}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 9560
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->R:Landroidx/media2/exoplayer/external/audio/p;

    iget v6, v6, Landroidx/media2/exoplayer/external/audio/p;->b:F

    invoke-virtual {v4, v6}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 609
    :cond_c
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->Q:Z

    if-eqz v4, :cond_d

    .line 610
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->a()V

    .line 614
    :cond_d
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->l:Landroidx/media2/exoplayer/external/audio/o;

    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r()J

    move-result-wide v6

    .line 11272
    iget-object v10, v4, Landroidx/media2/exoplayer/external/audio/o;->b:Landroid/media/AudioTrack;

    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioTrack;

    invoke-virtual {v10}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v10

    .line 11273
    iget-boolean v11, v4, Landroidx/media2/exoplayer/external/audio/o;->g:Z

    const/4 v14, 0x2

    if-eqz v11, :cond_f

    if-ne v10, v14, :cond_e

    .line 11278
    iput-boolean v5, v4, Landroidx/media2/exoplayer/external/audio/o;->j:Z

    :goto_5
    const/4 v4, 0x0

    goto :goto_6

    :cond_e
    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    .line 11285
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/audio/o;->d()J

    move-result-wide v19

    cmp-long v11, v19, v12

    if-nez v11, :cond_f

    goto :goto_5

    .line 11290
    :cond_f
    iget-boolean v11, v4, Landroidx/media2/exoplayer/external/audio/o;->j:Z

    .line 11291
    invoke-virtual {v4, v6, v7}, Landroidx/media2/exoplayer/external/audio/o;->c(J)Z

    move-result v6

    iput-boolean v6, v4, Landroidx/media2/exoplayer/external/audio/o;->j:Z

    if-eqz v11, :cond_10

    .line 11292
    iget-boolean v6, v4, Landroidx/media2/exoplayer/external/audio/o;->j:Z

    if-nez v6, :cond_10

    const/4 v6, 0x1

    if-eq v10, v6, :cond_10

    iget-object v6, v4, Landroidx/media2/exoplayer/external/audio/o;->a:Landroidx/media2/exoplayer/external/audio/o$a;

    if-eqz v6, :cond_10

    .line 11293
    iget-object v6, v4, Landroidx/media2/exoplayer/external/audio/o;->a:Landroidx/media2/exoplayer/external/audio/o$a;

    iget v7, v4, Landroidx/media2/exoplayer/external/audio/o;->d:I

    iget-wide v10, v4, Landroidx/media2/exoplayer/external/audio/o;->h:J

    invoke-static {v10, v11}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v10

    invoke-interface {v6, v7, v10, v11}, Landroidx/media2/exoplayer/external/audio/o$a;->a(IJ)V

    :cond_10
    const/4 v4, 0x1

    :goto_6
    if-nez v4, :cond_11

    return v5

    .line 618
    :cond_11
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    const-string v6, "AudioTrack"

    if-nez v4, :cond_22

    .line 620
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_12

    const/4 v4, 0x1

    return v4

    .line 625
    :cond_12
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-nez v4, :cond_1b

    iget v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->D:I

    if-nez v4, :cond_1b

    .line 627
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    const/4 v7, 0x7

    if-eq v4, v7, :cond_1a

    const/16 v7, 0x8

    if-ne v4, v7, :cond_13

    goto :goto_8

    :cond_13
    if-ne v4, v9, :cond_14

    .line 12170
    invoke-static {}, Landroidx/media2/exoplayer/external/audio/a;->a()I

    move-result v4

    goto :goto_9

    :cond_14
    if-eq v4, v8, :cond_19

    const/16 v7, 0x12

    if-ne v4, v7, :cond_15

    goto :goto_7

    :cond_15
    const/16 v7, 0x11

    if-ne v4, v7, :cond_16

    .line 12174
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/audio/b;->a(Ljava/nio/ByteBuffer;)I

    move-result v4

    goto :goto_9

    :cond_16
    const/16 v7, 0xe

    if-ne v4, v7, :cond_18

    .line 12176
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/audio/a;->b(Ljava/nio/ByteBuffer;)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_17

    const/4 v4, 0x0

    goto :goto_9

    .line 12179
    :cond_17
    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/audio/a;->a(Ljava/nio/ByteBuffer;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    goto :goto_9

    .line 12182
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12172
    :cond_19
    :goto_7
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/audio/a;->a(Ljava/nio/ByteBuffer;)I

    move-result v4

    goto :goto_9

    .line 12168
    :cond_1a
    :goto_8
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/audio/s;->a(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 627
    :goto_9
    iput v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->D:I

    if-nez v4, :cond_1b

    const/4 v4, 0x1

    return v4

    .line 637
    :cond_1b
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->t:Landroidx/media2/exoplayer/external/ad;

    if-eqz v4, :cond_1d

    .line 638
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->m()Z

    move-result v4

    if-nez v4, :cond_1c

    return v5

    .line 642
    :cond_1c
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->t:Landroidx/media2/exoplayer/external/ad;

    const/4 v7, 0x0

    .line 643
    iput-object v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->t:Landroidx/media2/exoplayer/external/ad;

    .line 644
    invoke-direct {v0, v4, v2, v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->a(Landroidx/media2/exoplayer/external/ad;J)V

    .line 647
    :cond_1d
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->E:I

    if-nez v4, :cond_1e

    .line 648
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->F:J

    const/4 v4, 0x1

    .line 649
    iput v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->E:I

    goto :goto_a

    :cond_1e
    const/4 v4, 0x1

    .line 652
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->F:J

    iget-object v9, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 655
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q()J

    move-result-wide v10

    iget-object v15, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->h:Landroidx/media2/exoplayer/external/audio/z;

    .line 13075
    iget-wide v12, v15, Landroidx/media2/exoplayer/external/audio/z;->g:J

    sub-long/2addr v10, v12

    .line 654
    invoke-virtual {v9, v10, v11}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->inputFramesToDurationUs(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 656
    iget v9, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->E:I

    if-ne v9, v4, :cond_1f

    sub-long v9, v7, v2

    .line 657
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v11, 0x30d40

    cmp-long v4, v9, v11

    if-lez v4, :cond_1f

    const/16 v4, 0x50

    .line 658
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Discontinuity detected [expected "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", got "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iput v14, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->E:I

    .line 662
    :cond_1f
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->E:I

    if-ne v4, v14, :cond_20

    sub-long v7, v2, v7

    .line 666
    iget-wide v9, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->F:J

    add-long/2addr v9, v7

    iput-wide v9, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->F:J

    const/4 v4, 0x1

    .line 667
    iput v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->E:I

    .line 668
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->n:Landroidx/media2/exoplayer/external/audio/AudioSink$a;

    if-eqz v4, :cond_20

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_20

    .line 669
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioSink$a;->a()V

    .line 674
    :cond_20
    :goto_a
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-eqz v4, :cond_21

    .line 675
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->z:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->z:J

    goto :goto_b

    .line 677
    :cond_21
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->A:J

    iget v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->D:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->A:J

    .line 680
    :goto_b
    iput-object v1, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    .line 683
    :cond_22
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->processingEnabled:Z

    if-eqz v1, :cond_23

    .line 684
    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->a(J)V

    goto :goto_c

    .line 686
    :cond_23
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->b(Ljava/nio/ByteBuffer;J)V

    .line 689
    :goto_c
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_24

    const/4 v1, 0x0

    .line 690
    iput-object v1, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    :goto_d
    const/4 v1, 0x1

    return v1

    .line 694
    :cond_24
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->l:Landroidx/media2/exoplayer/external/audio/o;

    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r()J

    move-result-wide v2

    .line 13315
    iget-wide v7, v1, Landroidx/media2/exoplayer/external/audio/o;->p:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v7, v9

    if-eqz v4, :cond_25

    const-wide/16 v7, 0x0

    cmp-long v4, v2, v7

    if-lez v4, :cond_25

    .line 13317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v7, v1, Landroidx/media2/exoplayer/external/audio/o;->p:J

    sub-long/2addr v2, v7

    const-wide/16 v7, 0xc8

    cmp-long v1, v2, v7

    if-ltz v1, :cond_25

    const/4 v11, 0x1

    goto :goto_e

    :cond_25
    const/4 v11, 0x0

    :goto_e
    if-eqz v11, :cond_26

    const-string v1, "Resetting stalled audio track"

    .line 695
    invoke-static {v6, v1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->i()V

    goto :goto_d

    :cond_26
    return v5
.end method

.method public final b()V
    .locals 2

    .line 576
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->E:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 577
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->E:I

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 793
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->O:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->s()V

    const/4 v0, 0x1

    .line 795
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->O:Z

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 832
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->O:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->e()Z

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

    .line 837
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->l:Landroidx/media2/exoplayer/external/audio/o;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/o;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Landroidx/media2/exoplayer/external/ad;
    .locals 1

    .line 863
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->t:Landroidx/media2/exoplayer/external/ad;

    if-eqz v0, :cond_0

    return-object v0

    .line 865
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 866
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;

    .line 14248
    iget-object v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;->a:Landroidx/media2/exoplayer/external/ad;

    return-object v0

    .line 867
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->u:Landroidx/media2/exoplayer/external/ad;

    return-object v0
.end method

.method public final g()V
    .locals 1

    .line 922
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->S:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 923
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->S:Z

    .line 924
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->c:I

    .line 925
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->i()V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 7

    const/4 v0, 0x0

    .line 949
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->Q:Z

    .line 950
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->l:Landroidx/media2/exoplayer/external/audio/o;

    .line 15350
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/o;->c()V

    .line 15351
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/audio/o;->o:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 15354
    iget-object v0, v1, Landroidx/media2/exoplayer/external/audio/o;->e:Landroidx/media2/exoplayer/external/audio/n;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/n;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/n;->a()V

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 5

    .line 957
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    .line 958
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->z:J

    .line 959
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->A:J

    .line 960
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->B:J

    .line 961
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->C:J

    const/4 v2, 0x0

    .line 962
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->D:I

    .line 963
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->t:Landroidx/media2/exoplayer/external/ad;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 964
    iput-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->u:Landroidx/media2/exoplayer/external/ad;

    .line 965
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->t:Landroidx/media2/exoplayer/external/ad;

    goto :goto_0

    .line 966
    :cond_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 967
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;

    .line 16248
    iget-object v3, v3, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$c;->a:Landroidx/media2/exoplayer/external/ad;

    .line 967
    iput-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->u:Landroidx/media2/exoplayer/external/ad;

    .line 969
    :cond_1
    :goto_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 970
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->v:J

    .line 971
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->w:J

    .line 972
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->h:Landroidx/media2/exoplayer/external/audio/z;

    .line 17067
    iput-wide v0, v3, Landroidx/media2/exoplayer/external/audio/z;->g:J

    .line 973
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->l()V

    .line 974
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    .line 975
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->K:Ljava/nio/ByteBuffer;

    .line 976
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->P:Z

    .line 977
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->O:Z

    const/4 v0, -0x1

    .line 978
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->N:I

    .line 979
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->x:Ljava/nio/ByteBuffer;

    .line 980
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->y:I

    .line 981
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->E:I

    .line 982
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->l:Landroidx/media2/exoplayer/external/audio/o;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 986
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    .line 987
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->r:Landroid/media/AudioTrack;

    .line 988
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    if-eqz v1, :cond_3

    .line 989
    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->q:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 990
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->p:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 992
    :cond_3
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->l:Landroidx/media2/exoplayer/external/audio/o;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/o;->b()V

    .line 993
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->k:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 994
    new-instance v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;

    invoke-direct {v1, p0, v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;-><init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V

    .line 1004
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;->start()V

    :cond_4
    return-void
.end method

.method public final j()V
    .locals 5

    .line 1010
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->i()V

    .line 1011
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->o()V

    .line 1012
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->i:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1013
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->i()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1015
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->j:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1016
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->i()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1018
    :cond_1
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->c:I

    .line 1019
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->Q:Z

    return-void
.end method
