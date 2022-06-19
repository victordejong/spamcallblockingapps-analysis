.class public final Lmi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmi$d;,
        Lmi$h;,
        Lmi$g;,
        Lmi$e;,
        Lmi$c;,
        Lmi$f;
    }
.end annotation


# static fields
.field public static S:Z = false

.field public static T:Z = false


# instance fields
.field public A:I

.field public B:I

.field public C:J

.field public D:F

.field public E:[Lyh;

.field public F:[Ljava/nio/ByteBuffer;

.field public G:Ljava/nio/ByteBuffer;

.field public H:Ljava/nio/ByteBuffer;

.field public I:[B

.field public J:I

.field public K:I

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:I

.field public P:Lji;

.field public Q:Z

.field public R:J

.field public final a:Lvh;

.field public final b:Lmi$c;

.field public final c:Z

.field public final d:Lli;

.field public final e:Lui;

.field public final f:[Lyh;

.field public final g:[Lyh;

.field public final h:Landroid/os/ConditionVariable;

.field public final i:Lii;

.field public final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lmi$g;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lgi$c;

.field public l:Landroid/media/AudioTrack;

.field public m:Lmi$d;

.field public n:Lmi$d;

.field public o:Landroid/media/AudioTrack;

.field public p:Luh;

.field public q:Leh;

.field public r:Leh;

.field public s:J

.field public t:J

.field public u:Ljava/nio/ByteBuffer;

.field public v:I

.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lvh;Lmi$c;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmi;->a:Lvh;

    invoke-static {p2}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Lmi$c;

    iput-object p1, p0, Lmi;->b:Lmi$c;

    iput-boolean p3, p0, Lmi;->c:Z

    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lmi;->h:Landroid/os/ConditionVariable;

    new-instance p1, Lii;

    new-instance v0, Lmi$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmi$h;-><init>(Lmi;Lmi$a;)V

    invoke-direct {p1, v0}, Lii;-><init>(Lii$a;)V

    iput-object p1, p0, Lmi;->i:Lii;

    new-instance p1, Lli;

    invoke-direct {p1}, Lli;-><init>()V

    iput-object p1, p0, Lmi;->d:Lli;

    new-instance v0, Lui;

    invoke-direct {v0}, Lui;-><init>()V

    iput-object v0, p0, Lmi;->e:Lui;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Lki;

    new-instance v3, Lqi;

    invoke-direct {v3}, Lqi;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object p1, v2, p3

    const/4 p1, 0x2

    aput-object v0, v2, p1

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {p2}, Lmi$c;->getAudioProcessors()[Lyh;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p1, v4, [Lyh;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lyh;

    iput-object p1, p0, Lmi;->f:[Lyh;

    new-array p1, p3, [Lyh;

    new-instance p2, Loi;

    invoke-direct {p2}, Loi;-><init>()V

    aput-object p2, p1, v4

    iput-object p1, p0, Lmi;->g:[Lyh;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lmi;->D:F

    iput v4, p0, Lmi;->B:I

    sget-object p1, Luh;->e:Luh;

    iput-object p1, p0, Lmi;->p:Luh;

    iput v4, p0, Lmi;->O:I

    new-instance p1, Lji;

    const/4 p2, 0x0

    invoke-direct {p1, v4, p2}, Lji;-><init>(IF)V

    iput-object p1, p0, Lmi;->P:Lji;

    sget-object p1, Leh;->e:Leh;

    iput-object p1, p0, Lmi;->r:Leh;

    const/4 p1, -0x1

    iput p1, p0, Lmi;->K:I

    new-array p1, v4, [Lyh;

    iput-object p1, p0, Lmi;->E:[Lyh;

    new-array p1, v4, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lmi;->F:[Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lmi;->j:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Lvh;[Lyh;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmi;-><init>(Lvh;[Lyh;Z)V

    return-void
.end method

.method public constructor <init>(Lvh;[Lyh;Z)V
    .locals 1

    new-instance v0, Lmi$e;

    invoke-direct {v0, p2}, Lmi$e;-><init>([Lyh;)V

    invoke-direct {p0, p1, v0, p3}, Lmi;-><init>(Lvh;Lmi$c;Z)V

    return-void
.end method

.method public static C(Landroid/media/AudioTrack;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method public static D(Landroid/media/AudioTrack;F)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method public static G(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lmi;)J
    .locals 2

    iget-wide v0, p0, Lmi;->R:J

    return-wide v0
.end method

.method public static synthetic g(I)I
    .locals 0

    invoke-static {p0}, Lmi;->r(I)I

    move-result p0

    return p0
.end method

.method public static synthetic h(Lmi;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lmi;->h:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static synthetic i(Lmi;)J
    .locals 2

    invoke-virtual {p0}, Lmi;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic j(Lmi;)J
    .locals 2

    invoke-virtual {p0}, Lmi;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic k(Lmi;)Lgi$c;
    .locals 0

    iget-object p0, p0, Lmi;->k:Lgi$c;

    return-object p0
.end method

.method public static p(IZ)I
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_2

    if-nez p1, :cond_2

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 p0, 0x6

    :cond_2
    :goto_0
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_3

    sget-object v0, Lnu;->b:Ljava/lang/String;

    const-string v1, "fugu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    const/4 p0, 0x2

    :cond_3
    invoke-static {p0}, Lnu;->u(I)I

    move-result p0

    return p0
.end method

.method public static q(ILjava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_6

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    invoke-static {}, Lsh;->b()I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lsh;->h(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_2
    const/16 v0, 0x11

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lth;->c(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_3
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5

    invoke-static {p1}, Lsh;->a(Ljava/nio/ByteBuffer;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    :cond_4
    invoke-static {p1, p0}, Lsh;->i(Ljava/nio/ByteBuffer;I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    :goto_0
    return p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const/16 v0, 0x26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected audio encoding: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    invoke-static {p1}, Lni;->e(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static r(I)I
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_5

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    const p0, 0x52080

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const p0, 0x2ebae4

    return p0

    :cond_2
    const p0, 0x225510

    return p0

    :cond_3
    const p0, 0x2ee00

    return p0

    :cond_4
    const p0, 0xbb800

    return p0

    :cond_5
    const p0, 0x13880

    return p0
.end method

.method public static v(I)Landroid/media/AudioTrack;
    .locals 9

    new-instance v8, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v8

    move v7, p0

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v8
.end method


# virtual methods
.method public A(I)V
    .locals 1

    iget v0, p0, Lmi;->O:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lmi;->O:I

    invoke-virtual {p0}, Lmi;->flush()V

    :cond_0
    return-void
.end method

.method public final B()V
    .locals 2

    invoke-virtual {p0}, Lmi;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lnu;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lmi;->o:Landroid/media/AudioTrack;

    iget v1, p0, Lmi;->D:F

    invoke-static {v0, v1}, Lmi;->C(Landroid/media/AudioTrack;F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmi;->o:Landroid/media/AudioTrack;

    iget v1, p0, Lmi;->D:F

    invoke-static {v0, v1}, Lmi;->D(Landroid/media/AudioTrack;F)V

    :goto_0
    return-void
.end method

.method public final E()V
    .locals 6

    iget-object v0, p0, Lmi;->n:Lmi$d;

    iget-object v0, v0, Lmi$d;->k:[Lyh;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4}, Lyh;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Lyh;->flush()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Lyh;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lyh;

    iput-object v1, p0, Lmi;->E:[Lyh;

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lmi;->F:[Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lmi;->o()V

    return-void
.end method

.method public final F(Ljava/nio/ByteBuffer;J)V
    .locals 12

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmi;->H:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->a(Z)V

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lmi;->H:Ljava/nio/ByteBuffer;

    sget v0, Lnu;->a:I

    if-ge v0, v2, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v4, p0, Lmi;->I:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lmi;->I:[B

    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lmi;->I:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v3, p0, Lmi;->J:I

    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sget v4, Lnu;->a:I

    if-ge v4, v2, :cond_6

    iget-object p2, p0, Lmi;->i:Lii;

    iget-wide v1, p0, Lmi;->y:J

    invoke-virtual {p2, v1, v2}, Lii;->c(J)I

    move-result p2

    if-lez p2, :cond_9

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p3, p0, Lmi;->o:Landroid/media/AudioTrack;

    iget-object v1, p0, Lmi;->I:[B

    iget v2, p0, Lmi;->J:I

    invoke-virtual {p3, v1, v2, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    if-lez v3, :cond_9

    iget p2, p0, Lmi;->J:I

    add-int/2addr p2, v3

    iput p2, p0, Lmi;->J:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    :cond_6
    iget-boolean v2, p0, Lmi;->Q:Z

    if-eqz v2, :cond_8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v4

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lit;->f(Z)V

    iget-object v7, p0, Lmi;->o:Landroid/media/AudioTrack;

    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    invoke-virtual/range {v6 .. v11}, Lmi;->H(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v3

    goto :goto_3

    :cond_8
    iget-object p2, p0, Lmi;->o:Landroid/media/AudioTrack;

    invoke-static {p2, p1, v0}, Lmi;->G(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v3

    :cond_9
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lmi;->R:J

    if-ltz v3, :cond_d

    iget-object p1, p0, Lmi;->n:Lmi$d;

    iget-boolean p1, p1, Lmi$d;->a:Z

    if-eqz p1, :cond_a

    iget-wide p2, p0, Lmi;->y:J

    int-to-long v1, v3

    add-long/2addr p2, v1

    iput-wide p2, p0, Lmi;->y:J

    :cond_a
    if-ne v3, v0, :cond_c

    if-nez p1, :cond_b

    iget-wide p1, p0, Lmi;->z:J

    iget p3, p0, Lmi;->A:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lmi;->z:J

    :cond_b
    const/4 p1, 0x0

    iput-object p1, p0, Lmi;->H:Ljava/nio/ByteBuffer;

    :cond_c
    return-void

    :cond_d
    new-instance p1, Lgi$d;

    invoke-direct {p1, v3}, Lgi$d;-><init>(I)V

    throw p1
.end method

.method public final H(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lmi;->u:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lmi;->u:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lmi;->u:Ljava/nio/ByteBuffer;

    const v1, 0x55550001

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_0
    iget v0, p0, Lmi;->v:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmi;->u:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lmi;->u:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    const-wide/16 v3, 0x3e8

    mul-long p4, p4, v3

    invoke-virtual {v0, v2, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object p4, p0, Lmi;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput p3, p0, Lmi;->v:I

    :cond_1
    iget-object p4, p0, Lmi;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    if-lez p4, :cond_3

    iget-object p5, p0, Lmi;->u:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, p5, p4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p5

    if-gez p5, :cond_2

    iput v1, p0, Lmi;->v:I

    return p5

    :cond_2
    if-ge p5, p4, :cond_3

    return v1

    :cond_3
    invoke-static {p1, p2, p3}, Lmi;->G(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_4

    iput v1, p0, Lmi;->v:I

    return p1

    :cond_4
    iget p2, p0, Lmi;->v:I

    sub-int/2addr p2, p1

    iput p2, p0, Lmi;->v:I

    return p1
.end method

.method public b(Leh;)Leh;
    .locals 1

    iget-object v0, p0, Lmi;->n:Lmi$d;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lmi$d;->j:Z

    if-nez v0, :cond_0

    sget-object p1, Leh;->e:Leh;

    iput-object p1, p0, Lmi;->r:Leh;

    return-object p1

    :cond_0
    iget-object v0, p0, Lmi;->q:Leh;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmi;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmi;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi$g;

    invoke-static {v0}, Lmi$g;->a(Lmi$g;)Leh;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmi;->r:Leh;

    :goto_0
    invoke-virtual {p1, v0}, Leh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lmi;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lmi;->q:Leh;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmi;->b:Lmi$c;

    invoke-interface {v0, p1}, Lmi$c;->a(Leh;)Leh;

    move-result-object p1

    iput-object p1, p0, Lmi;->r:Leh;

    :cond_4
    :goto_1
    iget-object p1, p0, Lmi;->r:Leh;

    return-object p1
.end method

.method public c(Lji;)V
    .locals 4

    iget-object v0, p0, Lmi;->P:Lji;

    invoke-virtual {v0, p1}, Lji;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lji;->a:I

    iget v1, p1, Lji;->b:F

    iget-object v2, p0, Lmi;->o:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lmi;->P:Lji;

    iget v3, v3, Lji;->a:I

    if-eq v3, v0, :cond_1

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lmi;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    :cond_2
    iput-object p1, p0, Lmi;->P:Lji;

    return-void
.end method

.method public configure(IIII[III)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p2

    sget v2, Lnu;->a:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-ge v2, v4, :cond_0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    if-nez p5, :cond_0

    const/4 v2, 0x6

    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aput v5, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p5

    :cond_1
    invoke-static/range {p1 .. p1}, Lnu;->S(I)Z

    move-result v6

    const/4 v2, 0x4

    const/16 v17, 0x1

    move/from16 v5, p1

    if-eqz v6, :cond_2

    if-eq v5, v2, :cond_2

    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    iget-boolean v7, v1, Lmi;->c:Z

    if-eqz v7, :cond_3

    invoke-virtual {v1, v0, v2}, Lmi;->e(II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static/range {p1 .. p1}, Lnu;->R(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    iget-object v7, v1, Lmi;->g:[Lyh;

    goto :goto_3

    :cond_4
    iget-object v7, v1, Lmi;->f:[Lyh;

    :goto_3
    move-object v15, v7

    if-eqz v14, :cond_7

    iget-object v7, v1, Lmi;->e:Lui;

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual {v7, v8, v9}, Lui;->i(II)V

    iget-object v7, v1, Lmi;->d:Lli;

    invoke-virtual {v7, v4}, Lli;->g([I)V

    array-length v4, v15

    move/from16 v10, p3

    move v8, v0

    move v11, v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_4
    if-ge v7, v4, :cond_6

    aget-object v12, v15, v7

    :try_start_0
    invoke-interface {v12, v10, v8, v11}, Lyh;->configure(III)Z

    move-result v13
    :try_end_0
    .catch Lyh$a; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v9, v13

    invoke-interface {v12}, Lyh;->isActive()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Lyh;->getOutputChannelCount()I

    move-result v8

    invoke-interface {v12}, Lyh;->getOutputSampleRateHz()I

    move-result v10

    invoke-interface {v12}, Lyh;->getOutputEncoding()I

    move-result v11

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgi$a;

    invoke-direct {v0, v2}, Lgi$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    move v4, v9

    move v12, v11

    goto :goto_5

    :cond_7
    move/from16 v10, p3

    move v8, v0

    move v12, v5

    const/4 v4, 0x0

    :goto_5
    invoke-static {v8, v6}, Lmi;->p(IZ)I

    move-result v11

    if-eqz v11, :cond_f

    const/4 v7, -0x1

    if-eqz v6, :cond_8

    invoke-static/range {p1 .. p2}, Lnu;->H(II)I

    move-result v0

    goto :goto_6

    :cond_8
    const/4 v0, -0x1

    :goto_6
    if-eqz v6, :cond_9

    invoke-static {v12, v8}, Lnu;->H(II)I

    move-result v5

    move v9, v5

    goto :goto_7

    :cond_9
    const/4 v9, -0x1

    :goto_7
    if-eqz v14, :cond_a

    if-nez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    :goto_8
    new-instance v13, Lmi$d;

    move-object v5, v13

    move v7, v0

    move/from16 v8, p3

    move-object v0, v13

    move/from16 v13, p4

    move-object/from16 v16, v15

    move v15, v2

    invoke-direct/range {v5 .. v16}, Lmi$d;-><init>(ZIIIIIIIZZ[Lyh;)V

    if-nez v4, :cond_b

    iget-object v2, v1, Lmi;->m:Lmi$d;

    if-eqz v2, :cond_c

    :cond_b
    const/4 v3, 0x1

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lmi;->w()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v1, Lmi;->n:Lmi$d;

    invoke-virtual {v0, v2}, Lmi$d;->b(Lmi$d;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    iput-object v0, v1, Lmi;->m:Lmi$d;

    goto :goto_9

    :cond_e
    iput-object v0, v1, Lmi;->n:Lmi$d;

    :goto_9
    return-void

    :cond_f
    new-instance v0, Lgi$a;

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported channel count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lgi$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Luh;)V
    .locals 1

    iget-object v0, p0, Lmi;->p:Luh;

    invoke-virtual {v0, p1}, Luh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lmi;->p:Luh;

    iget-boolean p1, p0, Lmi;->Q:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lmi;->flush()V

    const/4 p1, 0x0

    iput p1, p0, Lmi;->O:I

    return-void
.end method

.method public disableTunneling()V
    .locals 1

    iget-boolean v0, p0, Lmi;->Q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmi;->Q:Z

    iput v0, p0, Lmi;->O:I

    invoke-virtual {p0}, Lmi;->flush()V

    :cond_0
    return-void
.end method

.method public e(II)Z
    .locals 3

    invoke-static {p2}, Lnu;->S(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    sget p1, Lnu;->a:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lmi;->a:Lvh;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lvh;->e(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    iget-object p2, p0, Lmi;->a:Lvh;

    invoke-virtual {p2}, Lvh;->d()I

    move-result p2

    if-gt p1, p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public enableTunnelingV21(I)V
    .locals 3

    sget v0, Lnu;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->f(Z)V

    iget-boolean v0, p0, Lmi;->Q:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmi;->O:I

    if-eq v0, p1, :cond_2

    :cond_1
    iput-boolean v1, p0, Lmi;->Q:Z

    iput p1, p0, Lmi;->O:I

    invoke-virtual {p0}, Lmi;->flush()V

    :cond_2
    return-void
.end method

.method public f(Lgi$c;)V
    .locals 0

    iput-object p1, p0, Lmi;->k:Lgi$c;

    return-void
.end method

.method public flush()V
    .locals 5

    invoke-virtual {p0}, Lmi;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmi;->w:J

    iput-wide v0, p0, Lmi;->x:J

    iput-wide v0, p0, Lmi;->y:J

    iput-wide v0, p0, Lmi;->z:J

    const/4 v2, 0x0

    iput v2, p0, Lmi;->A:I

    iget-object v3, p0, Lmi;->q:Leh;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iput-object v3, p0, Lmi;->r:Leh;

    iput-object v4, p0, Lmi;->q:Leh;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lmi;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lmi;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmi$g;

    invoke-static {v3}, Lmi$g;->a(Lmi$g;)Leh;

    move-result-object v3

    iput-object v3, p0, Lmi;->r:Leh;

    :cond_1
    :goto_0
    iget-object v3, p0, Lmi;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    iput-wide v0, p0, Lmi;->s:J

    iput-wide v0, p0, Lmi;->t:J

    iget-object v0, p0, Lmi;->e:Lui;

    invoke-virtual {v0}, Lui;->h()V

    invoke-virtual {p0}, Lmi;->o()V

    iput-object v4, p0, Lmi;->G:Ljava/nio/ByteBuffer;

    iput-object v4, p0, Lmi;->H:Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lmi;->M:Z

    iput-boolean v2, p0, Lmi;->L:Z

    const/4 v0, -0x1

    iput v0, p0, Lmi;->K:I

    iput-object v4, p0, Lmi;->u:Ljava/nio/ByteBuffer;

    iput v2, p0, Lmi;->v:I

    iput v2, p0, Lmi;->B:I

    iget-object v0, p0, Lmi;->i:Lii;

    invoke-virtual {v0}, Lii;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmi;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_2
    iget-object v0, p0, Lmi;->o:Landroid/media/AudioTrack;

    iput-object v4, p0, Lmi;->o:Landroid/media/AudioTrack;

    iget-object v1, p0, Lmi;->m:Lmi$d;

    if-eqz v1, :cond_3

    iput-object v1, p0, Lmi;->n:Lmi$d;

    iput-object v4, p0, Lmi;->m:Lmi$d;

    :cond_3
    iget-object v1, p0, Lmi;->i:Lii;

    invoke-virtual {v1}, Lii;->q()V

    iget-object v1, p0, Lmi;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    new-instance v1, Lmi$a;

    invoke-direct {v1, p0, v0}, Lmi$a;-><init>(Lmi;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void
.end method

.method public getCurrentPositionUs(Z)J
    .locals 4

    invoke-virtual {p0}, Lmi;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lmi;->B:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmi;->i:Lii;

    invoke-virtual {v0, p1}, Lii;->d(Z)J

    move-result-wide v0

    iget-object p1, p0, Lmi;->n:Lmi$d;

    invoke-virtual {p0}, Lmi;->t()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lmi$d;->e(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lmi;->C:J

    invoke-virtual {p0, v0, v1}, Lmi;->m(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmi;->l(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getPlaybackParameters()Leh;
    .locals 1

    iget-object v0, p0, Lmi;->r:Leh;

    return-object v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;J)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lmi;->G:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

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
    invoke-static {v4}, Lit;->a(Z)V

    iget-object v4, v0, Lmi;->m:Lmi$d;

    const/4 v7, 0x0

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lmi;->n()Z

    move-result v4

    if-nez v4, :cond_2

    return v5

    :cond_2
    iget-object v4, v0, Lmi;->m:Lmi$d;

    iget-object v8, v0, Lmi;->n:Lmi$d;

    invoke-virtual {v4, v8}, Lmi$d;->b(Lmi$d;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lmi;->x()V

    invoke-virtual/range {p0 .. p0}, Lmi;->hasPendingData()Z

    move-result v4

    if-eqz v4, :cond_3

    return v5

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lmi;->flush()V

    goto :goto_2

    :cond_4
    iget-object v4, v0, Lmi;->m:Lmi$d;

    iput-object v4, v0, Lmi;->n:Lmi$d;

    iput-object v7, v0, Lmi;->m:Lmi$d;

    :goto_2
    iget-object v4, v0, Lmi;->n:Lmi$d;

    iget-boolean v4, v4, Lmi$d;->j:Z

    if-eqz v4, :cond_5

    iget-object v4, v0, Lmi;->b:Lmi$c;

    iget-object v8, v0, Lmi;->r:Leh;

    invoke-interface {v4, v8}, Lmi$c;->a(Leh;)Leh;

    move-result-object v4

    goto :goto_3

    :cond_5
    sget-object v4, Leh;->e:Leh;

    :goto_3
    iput-object v4, v0, Lmi;->r:Leh;

    invoke-virtual/range {p0 .. p0}, Lmi;->E()V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lmi;->w()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lmi;->u()V

    iget-boolean v4, v0, Lmi;->N:Z

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lmi;->play()V

    :cond_7
    iget-object v4, v0, Lmi;->i:Lii;

    invoke-virtual/range {p0 .. p0}, Lmi;->t()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lii;->k(J)Z

    move-result v4

    if-nez v4, :cond_8

    return v5

    :cond_8
    iget-object v4, v0, Lmi;->G:Ljava/nio/ByteBuffer;

    const-string v8, "AudioTrack"

    if-nez v4, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_9

    return v6

    :cond_9
    iget-object v4, v0, Lmi;->n:Lmi$d;

    iget-boolean v9, v4, Lmi$d;->a:Z

    if-nez v9, :cond_a

    iget v9, v0, Lmi;->A:I

    if-nez v9, :cond_a

    iget v4, v4, Lmi$d;->g:I

    invoke-static {v4, v1}, Lmi;->q(ILjava/nio/ByteBuffer;)I

    move-result v4

    iput v4, v0, Lmi;->A:I

    if-nez v4, :cond_a

    return v6

    :cond_a
    iget-object v4, v0, Lmi;->q:Leh;

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lmi;->n()Z

    move-result v4

    if-nez v4, :cond_b

    return v5

    :cond_b
    iget-object v4, v0, Lmi;->q:Leh;

    iput-object v7, v0, Lmi;->q:Leh;

    iget-object v11, v0, Lmi;->b:Lmi$c;

    invoke-interface {v11, v4}, Lmi$c;->a(Leh;)Leh;

    move-result-object v13

    iget-object v4, v0, Lmi;->j:Ljava/util/ArrayDeque;

    new-instance v11, Lmi$g;

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iget-object v12, v0, Lmi;->n:Lmi$d;

    move-object/from16 v19, v8

    invoke-virtual/range {p0 .. p0}, Lmi;->t()J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Lmi$d;->e(J)J

    move-result-wide v16

    const/16 v18, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v18}, Lmi$g;-><init>(Leh;JJLmi$a;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lmi;->E()V

    goto :goto_4

    :cond_c
    move-object/from16 v19, v8

    :goto_4
    iget v4, v0, Lmi;->B:I

    if-nez v4, :cond_d

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lmi;->C:J

    iput v6, v0, Lmi;->B:I

    move-object/from16 v12, v19

    goto :goto_6

    :cond_d
    iget-wide v7, v0, Lmi;->C:J

    iget-object v4, v0, Lmi;->n:Lmi$d;

    invoke-virtual/range {p0 .. p0}, Lmi;->s()J

    move-result-wide v11

    iget-object v13, v0, Lmi;->e:Lui;

    invoke-virtual {v13}, Lui;->g()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-virtual {v4, v11, v12}, Lmi$d;->g(J)J

    move-result-wide v11

    add-long/2addr v7, v11

    iget v4, v0, Lmi;->B:I

    const/4 v11, 0x2

    if-ne v4, v6, :cond_e

    sub-long v12, v7, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v14, 0x30d40

    cmp-long v4, v12, v14

    if-lez v4, :cond_e

    const/16 v4, 0x50

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Discontinuity detected [expected "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", got "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, v19

    invoke-static {v12, v4}, Lst;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput v11, v0, Lmi;->B:I

    goto :goto_5

    :cond_e
    move-object/from16 v12, v19

    :goto_5
    iget v4, v0, Lmi;->B:I

    if-ne v4, v11, :cond_f

    sub-long v7, v2, v7

    iget-wide v13, v0, Lmi;->C:J

    add-long/2addr v13, v7

    iput-wide v13, v0, Lmi;->C:J

    iput v6, v0, Lmi;->B:I

    iget-object v4, v0, Lmi;->k:Lgi$c;

    if-eqz v4, :cond_f

    cmp-long v11, v7, v9

    if-eqz v11, :cond_f

    invoke-interface {v4}, Lgi$c;->onPositionDiscontinuity()V

    :cond_f
    :goto_6
    iget-object v4, v0, Lmi;->n:Lmi$d;

    iget-boolean v4, v4, Lmi$d;->a:Z

    if-eqz v4, :cond_10

    iget-wide v7, v0, Lmi;->w:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v0, Lmi;->w:J

    goto :goto_7

    :cond_10
    iget-wide v7, v0, Lmi;->x:J

    iget v4, v0, Lmi;->A:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v0, Lmi;->x:J

    :goto_7
    iput-object v1, v0, Lmi;->G:Ljava/nio/ByteBuffer;

    goto :goto_8

    :cond_11
    move-object v12, v8

    :goto_8
    iget-object v1, v0, Lmi;->n:Lmi$d;

    iget-boolean v1, v1, Lmi$d;->i:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0, v2, v3}, Lmi;->y(J)V

    goto :goto_9

    :cond_12
    iget-object v1, v0, Lmi;->G:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v3}, Lmi;->F(Ljava/nio/ByteBuffer;J)V

    :goto_9
    iget-object v1, v0, Lmi;->G:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x0

    iput-object v1, v0, Lmi;->G:Ljava/nio/ByteBuffer;

    return v6

    :cond_13
    iget-object v1, v0, Lmi;->i:Lii;

    invoke-virtual/range {p0 .. p0}, Lmi;->t()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lii;->j(J)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "Resetting stalled audio track"

    invoke-static {v12, v1}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmi;->flush()V

    return v6

    :cond_14
    return v5
.end method

.method public handleDiscontinuity()V
    .locals 2

    iget v0, p0, Lmi;->B:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lmi;->B:I

    :cond_0
    return-void
.end method

.method public hasPendingData()Z
    .locals 3

    invoke-virtual {p0}, Lmi;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmi;->i:Lii;

    invoke-virtual {p0}, Lmi;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lii;->h(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 1

    invoke-virtual {p0}, Lmi;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmi;->L:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmi;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final l(J)J
    .locals 3

    iget-object v0, p0, Lmi;->n:Lmi$d;

    iget-object v1, p0, Lmi;->b:Lmi$c;

    invoke-interface {v1}, Lmi$c;->getSkippedOutputFrameCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmi$d;->e(J)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final m(J)J
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmi;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmi;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmi$g;

    invoke-static {v1}, Lmi$g;->b(Lmi$g;)J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    iget-object v0, p0, Lmi;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi$g;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lmi$g;->a(Lmi$g;)Leh;

    move-result-object v1

    iput-object v1, p0, Lmi;->r:Leh;

    invoke-static {v0}, Lmi$g;->b(Lmi$g;)J

    move-result-wide v1

    iput-wide v1, p0, Lmi;->t:J

    invoke-static {v0}, Lmi$g;->c(Lmi$g;)J

    move-result-wide v0

    iget-wide v2, p0, Lmi;->C:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmi;->s:J

    :cond_1
    iget-object v0, p0, Lmi;->r:Leh;

    iget v0, v0, Leh;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-wide v0, p0, Lmi;->s:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lmi;->t:J

    sub-long/2addr p1, v0

    return-wide p1

    :cond_2
    iget-object v0, p0, Lmi;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lmi;->s:J

    iget-object v2, p0, Lmi;->b:Lmi$c;

    iget-wide v3, p0, Lmi;->t:J

    sub-long/2addr p1, v3

    invoke-interface {v2, p1, p2}, Lmi$c;->getMediaDuration(J)J

    move-result-wide p1

    :goto_1
    add-long/2addr v0, p1

    return-wide v0

    :cond_3
    iget-wide v0, p0, Lmi;->s:J

    iget-wide v2, p0, Lmi;->t:J

    sub-long/2addr p1, v2

    iget-object v2, p0, Lmi;->r:Leh;

    iget v2, v2, Leh;->a:F

    invoke-static {p1, p2, v2}, Lnu;->D(JF)J

    move-result-wide p1

    goto :goto_1
.end method

.method public final n()Z
    .locals 9

    iget v0, p0, Lmi;->K:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmi;->n:Lmi$d;

    iget-boolean v0, v0, Lmi$d;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmi;->E:[Lyh;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lmi;->K:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lmi;->K:I

    iget-object v5, p0, Lmi;->E:[Lyh;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    invoke-interface {v4}, Lyh;->queueEndOfStream()V

    :cond_2
    invoke-virtual {p0, v7, v8}, Lmi;->y(J)V

    invoke-interface {v4}, Lyh;->isEnded()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    iget v0, p0, Lmi;->K:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmi;->H:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0, v7, v8}, Lmi;->F(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lmi;->H:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    :cond_5
    iput v1, p0, Lmi;->K:I

    return v2
.end method

.method public final o()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmi;->E:[Lyh;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-interface {v1}, Lyh;->flush()V

    iget-object v2, p0, Lmi;->F:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lyh;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmi;->N:Z

    invoke-virtual {p0}, Lmi;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmi;->i:Lii;

    invoke-virtual {v0}, Lii;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmi;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmi;->N:Z

    invoke-virtual {p0}, Lmi;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmi;->i:Lii;

    invoke-virtual {v0}, Lii;->t()V

    iget-object v0, p0, Lmi;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public playToEndOfStream()V
    .locals 1

    iget-boolean v0, p0, Lmi;->L:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmi;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmi;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmi;->x()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmi;->L:Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    invoke-virtual {p0}, Lmi;->flush()V

    invoke-virtual {p0}, Lmi;->z()V

    iget-object v0, p0, Lmi;->f:[Lyh;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4}, Lyh;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmi;->g:[Lyh;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4}, Lyh;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput v2, p0, Lmi;->O:I

    iput-boolean v2, p0, Lmi;->N:Z

    return-void
.end method

.method public final s()J
    .locals 5

    iget-object v0, p0, Lmi;->n:Lmi$d;

    iget-boolean v1, v0, Lmi$d;->a:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lmi;->w:J

    iget v0, v0, Lmi$d;->b:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lmi;->x:J

    :goto_0
    return-wide v1
.end method

.method public setVolume(F)V
    .locals 1

    iget v0, p0, Lmi;->D:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lmi;->D:F

    invoke-virtual {p0}, Lmi;->B()V

    :cond_0
    return-void
.end method

.method public final t()J
    .locals 5

    iget-object v0, p0, Lmi;->n:Lmi$d;

    iget-boolean v1, v0, Lmi$d;->a:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lmi;->y:J

    iget v0, v0, Lmi$d;->d:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lmi;->z:J

    :goto_0
    return-wide v1
.end method

.method public final u()V
    .locals 5

    iget-object v0, p0, Lmi;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lmi;->n:Lmi$d;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lmi$d;

    iget-boolean v1, p0, Lmi;->Q:Z

    iget-object v2, p0, Lmi;->p:Luh;

    iget v3, p0, Lmi;->O:I

    invoke-virtual {v0, v1, v2, v3}, Lmi$d;->a(ZLuh;I)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lmi;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    sget-boolean v1, Lmi;->S:Z

    if-eqz v1, :cond_1

    sget v1, Lnu;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lmi;->l:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lmi;->z()V

    :cond_0
    iget-object v1, p0, Lmi;->l:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    invoke-static {v0}, Lmi;->v(I)Landroid/media/AudioTrack;

    move-result-object v1

    iput-object v1, p0, Lmi;->l:Landroid/media/AudioTrack;

    :cond_1
    iget v1, p0, Lmi;->O:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lmi;->O:I

    iget-object v1, p0, Lmi;->k:Lgi$c;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lgi$c;->onAudioSessionId(I)V

    :cond_2
    iget-object v0, p0, Lmi;->n:Lmi$d;

    iget-boolean v0, v0, Lmi$d;->j:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmi;->b:Lmi$c;

    iget-object v1, p0, Lmi;->r:Leh;

    invoke-interface {v0, v1}, Lmi$c;->a(Leh;)Leh;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Leh;->e:Leh;

    :goto_0
    iput-object v0, p0, Lmi;->r:Leh;

    invoke-virtual {p0}, Lmi;->E()V

    iget-object v0, p0, Lmi;->i:Lii;

    iget-object v1, p0, Lmi;->o:Landroid/media/AudioTrack;

    iget-object v2, p0, Lmi;->n:Lmi$d;

    iget v3, v2, Lmi$d;->g:I

    iget v4, v2, Lmi$d;->d:I

    iget v2, v2, Lmi$d;->h:I

    invoke-virtual {v0, v1, v3, v4, v2}, Lii;->s(Landroid/media/AudioTrack;III)V

    invoke-virtual {p0}, Lmi;->B()V

    iget-object v0, p0, Lmi;->P:Lji;

    iget v0, v0, Lji;->a:I

    if-eqz v0, :cond_4

    iget-object v1, p0, Lmi;->o:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    iget-object v0, p0, Lmi;->o:Landroid/media/AudioTrack;

    iget-object v1, p0, Lmi;->P:Lji;

    iget v1, v1, Lji;->b:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    :cond_4
    return-void
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Lmi;->o:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x()V
    .locals 3

    iget-boolean v0, p0, Lmi;->M:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmi;->M:Z

    iget-object v0, p0, Lmi;->i:Lii;

    invoke-virtual {p0}, Lmi;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lii;->g(J)V

    iget-object v0, p0, Lmi;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    iput v0, p0, Lmi;->v:I

    :cond_0
    return-void
.end method

.method public final y(J)V
    .locals 5

    iget-object v0, p0, Lmi;->E:[Lyh;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    iget-object v2, p0, Lmi;->F:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lmi;->G:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lyh;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    invoke-virtual {p0, v2, p1, p2}, Lmi;->F(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lmi;->E:[Lyh;

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Lyh;->queueInput(Ljava/nio/ByteBuffer;)V

    invoke-interface {v3}, Lyh;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lmi;->F:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

.method public final z()V
    .locals 2

    iget-object v0, p0, Lmi;->l:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmi;->l:Landroid/media/AudioTrack;

    new-instance v1, Lmi$b;

    invoke-direct {v1, p0, v0}, Lmi$b;-><init>(Lmi;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
