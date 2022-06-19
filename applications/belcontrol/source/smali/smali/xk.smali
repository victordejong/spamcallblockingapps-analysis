.class public Lxk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxk$c;,
        Lxk$d;,
        Lxk$b;
    }
.end annotation


# static fields
.field public static final Z:[B

.field public static final a0:[B

.field public static final b0:[B

.field public static final c0:[B

.field public static final d0:[B

.field public static final e0:Ljava/util/UUID;


# instance fields
.field public A:J

.field public B:Ltt;

.field public C:Ltt;

.field public D:Z

.field public E:I

.field public F:J

.field public G:J

.field public H:I

.field public I:I

.field public J:[I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:B

.field public T:I

.field public U:I

.field public V:I

.field public W:Z

.field public X:Z

.field public Y:Lck;

.field public final a:Lvk;

.field public final b:Lzk;

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lxk$c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Lyt;

.field public final f:Lyt;

.field public final g:Lyt;

.field public final h:Lyt;

.field public final i:Lyt;

.field public final j:Lyt;

.field public final k:Lyt;

.field public final l:Lyt;

.field public final m:Lyt;

.field public n:Ljava/nio/ByteBuffer;

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:Lxk$c;

.field public u:Z

.field public v:I

.field public w:J

.field public x:Z

.field public y:J

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lwk;->a:Ldk;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lxk;->Z:[B

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Lxk;->a0:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-static {v1}, Lnu;->O(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lxk;->b0:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lxk;->c0:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lxk;->d0:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lxk;->e0:Ljava/util/UUID;

    return-void

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lxk;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Ltk;

    invoke-direct {v0}, Ltk;-><init>()V

    invoke-direct {p0, v0, p1}, Lxk;-><init>(Lvk;I)V

    return-void
.end method

.method public constructor <init>(Lvk;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lxk;->p:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lxk;->q:J

    iput-wide v2, p0, Lxk;->r:J

    iput-wide v2, p0, Lxk;->s:J

    iput-wide v0, p0, Lxk;->y:J

    iput-wide v0, p0, Lxk;->z:J

    iput-wide v2, p0, Lxk;->A:J

    iput-object p1, p0, Lxk;->a:Lvk;

    new-instance v0, Lxk$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxk$b;-><init>(Lxk;Lxk$a;)V

    invoke-interface {p1, v0}, Lvk;->b(Luk;)V

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lxk;->d:Z

    new-instance p1, Lzk;

    invoke-direct {p1}, Lzk;-><init>()V

    iput-object p1, p0, Lxk;->b:Lzk;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lxk;->c:Landroid/util/SparseArray;

    new-instance p1, Lyt;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lyt;-><init>(I)V

    iput-object p1, p0, Lxk;->g:Lyt;

    new-instance p1, Lyt;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lyt;-><init>([B)V

    iput-object p1, p0, Lxk;->h:Lyt;

    new-instance p1, Lyt;

    invoke-direct {p1, p2}, Lyt;-><init>(I)V

    iput-object p1, p0, Lxk;->i:Lyt;

    new-instance p1, Lyt;

    sget-object v0, Lwt;->a:[B

    invoke-direct {p1, v0}, Lyt;-><init>([B)V

    iput-object p1, p0, Lxk;->e:Lyt;

    new-instance p1, Lyt;

    invoke-direct {p1, p2}, Lyt;-><init>(I)V

    iput-object p1, p0, Lxk;->f:Lyt;

    new-instance p1, Lyt;

    invoke-direct {p1}, Lyt;-><init>()V

    iput-object p1, p0, Lxk;->j:Lyt;

    new-instance p1, Lyt;

    invoke-direct {p1}, Lyt;-><init>()V

    iput-object p1, p0, Lxk;->k:Lyt;

    new-instance p1, Lyt;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lyt;-><init>(I)V

    iput-object p1, p0, Lxk;->l:Lyt;

    new-instance p1, Lyt;

    invoke-direct {p1}, Lyt;-><init>()V

    iput-object p1, p0, Lxk;->m:Lyt;

    return-void
.end method

.method public static synthetic d()[B
    .locals 1

    sget-object v0, Lxk;->b0:[B

    return-object v0
.end method

.method public static synthetic e()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lxk;->e0:Ljava/util/UUID;

    return-object v0
.end method

.method public static k([II)[I
    .locals 1

    if-nez p0, :cond_0

    new-array p0, p1, [I

    return-object p0

    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "V_VP8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_VP9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_AV1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/SP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/ASP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/AP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/AVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MS/VFW/FOURCC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_THEORA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_OPUS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_VORBIS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_AAC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MPEG/L2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MPEG/L3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_AC3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_EAC3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_TRUEHD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS/EXPRESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS/LOSSLESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_FLAC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MS/ACM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_PCM/INT/LIT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/ASS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_VOBSUB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_HDMV/PGS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_DVBSUB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final synthetic q()[Lak;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lak;

    new-instance v1, Lxk;

    invoke-direct {v1}, Lxk;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static x([BJLjava/lang/String;IJ[B)V
    .locals 11

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    move-object/from16 v1, p7

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-wide v1, 0xd693a400L

    div-long v1, p1, v1

    long-to-int v2, v1

    mul-int/lit16 v1, v2, 0xe10

    int-to-long v3, v1

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    sub-long v3, p1, v3

    const-wide/32 v7, 0x3938700

    div-long v7, v3, v7

    long-to-int v1, v7

    mul-int/lit8 v7, v1, 0x3c

    int-to-long v7, v7

    mul-long v7, v7, v5

    sub-long/2addr v3, v7

    div-long v7, v3, v5

    long-to-int v8, v7

    int-to-long v9, v8

    mul-long v9, v9, v5

    sub-long/2addr v3, v9

    div-long v3, v3, p5

    long-to-int v4, v3

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v1, p3

    invoke-static {v3, p3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnu;->O(Ljava/lang/String;)[B

    move-result-object v1

    move-object/from16 v2, p7

    :goto_0
    array-length v2, v2

    move-object v3, p0

    move v4, p4

    invoke-static {v1, v0, p0, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final A(Lbk;Lxk$c;I)V
    .locals 10

    iget-object v0, p2, Lxk$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lxk;->Z:[B

    invoke-virtual {p0, p1, p2, p3}, Lxk;->B(Lbk;[BI)V

    return-void

    :cond_0
    iget-object v0, p2, Lxk$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Lxk;->c0:[B

    invoke-virtual {p0, p1, p2, p3}, Lxk;->B(Lbk;[BI)V

    return-void

    :cond_1
    iget-object v0, p2, Lxk$c;->U:Lkk;

    iget-boolean v1, p0, Lxk;->O:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_10

    iget-boolean v1, p2, Lxk$c;->f:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lxk;->M:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lxk;->M:I

    iget-boolean v1, p0, Lxk;->P:Z

    const/16 v6, 0x80

    if-nez v1, :cond_3

    iget-object v1, p0, Lxk;->g:Lyt;

    iget-object v1, v1, Lyt;->a:[B

    invoke-interface {p1, v1, v5, v4}, Lbk;->readFully([BII)V

    iget v1, p0, Lxk;->N:I

    add-int/2addr v1, v4

    iput v1, p0, Lxk;->N:I

    iget-object v1, p0, Lxk;->g:Lyt;

    iget-object v1, v1, Lyt;->a:[B

    aget-byte v7, v1, v5

    and-int/2addr v7, v6

    if-eq v7, v6, :cond_2

    aget-byte v1, v1, v5

    iput-byte v1, p0, Lxk;->S:B

    iput-boolean v4, p0, Lxk;->P:Z

    goto :goto_0

    :cond_2
    new-instance p1, Lch;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-byte v1, p0, Lxk;->S:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_f

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget v7, p0, Lxk;->M:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lxk;->M:I

    iget-boolean v7, p0, Lxk;->Q:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lxk;->l:Lyt;

    iget-object v7, v7, Lyt;->a:[B

    const/16 v8, 0x8

    invoke-interface {p1, v7, v5, v8}, Lbk;->readFully([BII)V

    iget v7, p0, Lxk;->N:I

    add-int/2addr v7, v8

    iput v7, p0, Lxk;->N:I

    iput-boolean v4, p0, Lxk;->Q:Z

    iget-object v7, p0, Lxk;->g:Lyt;

    iget-object v9, v7, Lyt;->a:[B

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v9, v5

    invoke-virtual {v7, v5}, Lyt;->J(I)V

    iget-object v6, p0, Lxk;->g:Lyt;

    invoke-interface {v0, v6, v4}, Lkk;->c(Lyt;I)V

    iget v6, p0, Lxk;->V:I

    add-int/2addr v6, v4

    iput v6, p0, Lxk;->V:I

    iget-object v6, p0, Lxk;->l:Lyt;

    invoke-virtual {v6, v5}, Lyt;->J(I)V

    iget-object v6, p0, Lxk;->l:Lyt;

    invoke-interface {v0, v6, v8}, Lkk;->c(Lyt;I)V

    iget v6, p0, Lxk;->V:I

    add-int/2addr v6, v8

    iput v6, p0, Lxk;->V:I

    :cond_7
    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lxk;->R:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lxk;->g:Lyt;

    iget-object v1, v1, Lyt;->a:[B

    invoke-interface {p1, v1, v5, v4}, Lbk;->readFully([BII)V

    iget v1, p0, Lxk;->N:I

    add-int/2addr v1, v4

    iput v1, p0, Lxk;->N:I

    iget-object v1, p0, Lxk;->g:Lyt;

    invoke-virtual {v1, v5}, Lyt;->J(I)V

    iget-object v1, p0, Lxk;->g:Lyt;

    invoke-virtual {v1}, Lyt;->w()I

    move-result v1

    iput v1, p0, Lxk;->T:I

    iput-boolean v4, p0, Lxk;->R:Z

    :cond_8
    iget v1, p0, Lxk;->T:I

    mul-int/lit8 v1, v1, 0x4

    iget-object v6, p0, Lxk;->g:Lyt;

    invoke-virtual {v6, v1}, Lyt;->F(I)V

    iget-object v6, p0, Lxk;->g:Lyt;

    iget-object v6, v6, Lyt;->a:[B

    invoke-interface {p1, v6, v5, v1}, Lbk;->readFully([BII)V

    iget v6, p0, Lxk;->N:I

    add-int/2addr v6, v1

    iput v6, p0, Lxk;->N:I

    iget v1, p0, Lxk;->T:I

    div-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    iget-object v7, p0, Lxk;->n:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_a

    :cond_9
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lxk;->n:Ljava/nio/ByteBuffer;

    :cond_a
    iget-object v7, p0, Lxk;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v7, p0, Lxk;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_4
    iget v8, p0, Lxk;->T:I

    if-ge v1, v8, :cond_c

    iget-object v8, p0, Lxk;->g:Lyt;

    invoke-virtual {v8}, Lyt;->A()I

    move-result v8

    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_b

    iget-object v9, p0, Lxk;->n:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_b
    iget-object v9, p0, Lxk;->n:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_4

    :cond_c
    iget v1, p0, Lxk;->N:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    rem-int/2addr v8, v3

    iget-object v7, p0, Lxk;->n:Ljava/nio/ByteBuffer;

    if-ne v8, v4, :cond_d

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_d
    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lxk;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_6
    iget-object v1, p0, Lxk;->m:Lyt;

    iget-object v7, p0, Lxk;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lyt;->H([BI)V

    iget-object v1, p0, Lxk;->m:Lyt;

    invoke-interface {v0, v1, v6}, Lkk;->c(Lyt;I)V

    iget v1, p0, Lxk;->V:I

    add-int/2addr v1, v6

    iput v1, p0, Lxk;->V:I

    goto :goto_7

    :cond_e
    iget-object v1, p2, Lxk$c;->g:[B

    if-eqz v1, :cond_f

    iget-object v6, p0, Lxk;->j:Lyt;

    array-length v7, v1

    invoke-virtual {v6, v1, v7}, Lyt;->H([BI)V

    :cond_f
    :goto_7
    iput-boolean v4, p0, Lxk;->O:Z

    :cond_10
    iget-object v1, p0, Lxk;->j:Lyt;

    invoke-virtual {v1}, Lyt;->d()I

    move-result v1

    add-int/2addr p3, v1

    iget-object v1, p2, Lxk$c;->b:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p2, Lxk$c;->b:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_a

    :cond_11
    iget-object v1, p2, Lxk$c;->Q:Lxk$d;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lxk;->j:Lyt;

    invoke-virtual {v1}, Lyt;->d()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_8

    :cond_12
    const/4 v4, 0x0

    :goto_8
    invoke-static {v4}, Lit;->f(Z)V

    iget-object v1, p2, Lxk$c;->Q:Lxk$d;

    iget v3, p0, Lxk;->M:I

    invoke-virtual {v1, p1, v3, p3}, Lxk$d;->d(Lbk;II)V

    :cond_13
    :goto_9
    iget v1, p0, Lxk;->N:I

    if-ge v1, p3, :cond_16

    sub-int v1, p3, v1

    invoke-virtual {p0, p1, v0, v1}, Lxk;->t(Lbk;Lkk;I)I

    goto :goto_9

    :cond_14
    :goto_a
    iget-object v1, p0, Lxk;->f:Lyt;

    iget-object v1, v1, Lyt;->a:[B

    aput-byte v5, v1, v5

    aput-byte v5, v1, v4

    aput-byte v5, v1, v3

    iget v3, p2, Lxk$c;->V:I

    rsub-int/lit8 v4, v3, 0x4

    :goto_b
    iget v6, p0, Lxk;->N:I

    if-ge v6, p3, :cond_16

    iget v6, p0, Lxk;->U:I

    if-nez v6, :cond_15

    invoke-virtual {p0, p1, v1, v4, v3}, Lxk;->u(Lbk;[BII)V

    iget-object v6, p0, Lxk;->f:Lyt;

    invoke-virtual {v6, v5}, Lyt;->J(I)V

    iget-object v6, p0, Lxk;->f:Lyt;

    invoke-virtual {v6}, Lyt;->A()I

    move-result v6

    iput v6, p0, Lxk;->U:I

    iget-object v6, p0, Lxk;->e:Lyt;

    invoke-virtual {v6, v5}, Lyt;->J(I)V

    iget-object v6, p0, Lxk;->e:Lyt;

    invoke-interface {v0, v6, v2}, Lkk;->c(Lyt;I)V

    iget v6, p0, Lxk;->V:I

    add-int/2addr v6, v2

    iput v6, p0, Lxk;->V:I

    goto :goto_b

    :cond_15
    invoke-virtual {p0, p1, v0, v6}, Lxk;->t(Lbk;Lkk;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lxk;->U:I

    goto :goto_b

    :cond_16
    iget-object p1, p2, Lxk$c;->b:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lxk;->h:Lyt;

    invoke-virtual {p1, v5}, Lyt;->J(I)V

    iget-object p1, p0, Lxk;->h:Lyt;

    invoke-interface {v0, p1, v2}, Lkk;->c(Lyt;I)V

    iget p1, p0, Lxk;->V:I

    add-int/2addr p1, v2

    iput p1, p0, Lxk;->V:I

    :cond_17
    return-void
.end method

.method public final B(Lbk;[BI)V
    .locals 4

    array-length v0, p2

    add-int/2addr v0, p3

    iget-object v1, p0, Lxk;->k:Lyt;

    invoke-virtual {v1}, Lyt;->b()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lxk;->k:Lyt;

    add-int v2, v0, p3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Lyt;->a:[B

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lxk;->k:Lyt;

    iget-object v1, v1, Lyt;->a:[B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v1, p0, Lxk;->k:Lyt;

    iget-object v1, v1, Lyt;->a:[B

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Lbk;->readFully([BII)V

    iget-object p1, p0, Lxk;->k:Lyt;

    invoke-virtual {p1, v0}, Lyt;->F(I)V

    return-void
.end method

.method public final a(Lbk;Lhk;)I
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxk;->W:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lxk;->W:Z

    if-nez v3, :cond_1

    iget-object v2, p0, Lxk;->a:Lvk;

    invoke-interface {v2, p1}, Lvk;->a(Lbk;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v3

    invoke-virtual {p0, p2, v3, v4}, Lxk;->r(Lhk;J)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_1
    if-nez v2, :cond_3

    :goto_0
    iget-object p1, p0, Lxk;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lxk;->c:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxk$c;

    invoke-virtual {p1}, Lxk$c;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    return v0
.end method

.method public final b(Lbk;)Z
    .locals 1

    new-instance v0, Lyk;

    invoke-direct {v0}, Lyk;-><init>()V

    invoke-virtual {v0, p1}, Lyk;->b(Lbk;)Z

    move-result p1

    return p1
.end method

.method public final c(Lck;)V
    .locals 0

    iput-object p1, p0, Lxk;->Y:Lck;

    return-void
.end method

.method public f(IILbk;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0xa1

    const/16 v5, 0xa3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v5, :cond_5

    const/16 v4, 0x4255

    if-eq v1, v4, :cond_4

    const/16 v4, 0x47e2

    if-eq v1, v4, :cond_3

    const/16 v4, 0x53ab

    if-eq v1, v4, :cond_2

    const/16 v4, 0x63a2

    if-eq v1, v4, :cond_1

    const/16 v4, 0x7672

    if-ne v1, v4, :cond_0

    iget-object v1, v0, Lxk;->t:Lxk$c;

    new-array v4, v2, [B

    iput-object v4, v1, Lxk$c;->t:[B

    invoke-interface {v3, v4, v6, v2}, Lbk;->readFully([BII)V

    goto/16 :goto_e

    :cond_0
    new-instance v2, Lch;

    const/16 v3, 0x1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected id: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lch;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v1, v0, Lxk;->t:Lxk$c;

    new-array v4, v2, [B

    iput-object v4, v1, Lxk$c;->i:[B

    invoke-interface {v3, v4, v6, v2}, Lbk;->readFully([BII)V

    goto/16 :goto_e

    :cond_2
    iget-object v1, v0, Lxk;->i:Lyt;

    iget-object v1, v1, Lyt;->a:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([BB)V

    iget-object v1, v0, Lxk;->i:Lyt;

    iget-object v1, v1, Lyt;->a:[B

    rsub-int/lit8 v4, v2, 0x4

    invoke-interface {v3, v1, v4, v2}, Lbk;->readFully([BII)V

    iget-object v1, v0, Lxk;->i:Lyt;

    invoke-virtual {v1, v6}, Lyt;->J(I)V

    iget-object v1, v0, Lxk;->i:Lyt;

    invoke-virtual {v1}, Lyt;->y()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lxk;->v:I

    goto/16 :goto_e

    :cond_3
    new-array v1, v2, [B

    invoke-interface {v3, v1, v6, v2}, Lbk;->readFully([BII)V

    iget-object v2, v0, Lxk;->t:Lxk$c;

    new-instance v3, Lkk$a;

    invoke-direct {v3, v7, v1, v6, v6}, Lkk$a;-><init>(I[BII)V

    iput-object v3, v2, Lxk$c;->h:Lkk$a;

    goto/16 :goto_e

    :cond_4
    iget-object v1, v0, Lxk;->t:Lxk$c;

    new-array v4, v2, [B

    iput-object v4, v1, Lxk$c;->g:[B

    invoke-interface {v3, v4, v6, v2}, Lbk;->readFully([BII)V

    goto/16 :goto_e

    :cond_5
    iget v4, v0, Lxk;->E:I

    const/16 v8, 0x8

    if-nez v4, :cond_6

    iget-object v4, v0, Lxk;->b:Lzk;

    invoke-virtual {v4, v3, v6, v7, v8}, Lzk;->d(Lbk;ZZI)J

    move-result-wide v9

    long-to-int v4, v9

    iput v4, v0, Lxk;->K:I

    iget-object v4, v0, Lxk;->b:Lzk;

    invoke-virtual {v4}, Lzk;->b()I

    move-result v4

    iput v4, v0, Lxk;->L:I

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v9, v0, Lxk;->G:J

    iput v7, v0, Lxk;->E:I

    iget-object v4, v0, Lxk;->g:Lyt;

    invoke-virtual {v4}, Lyt;->E()V

    :cond_6
    iget-object v4, v0, Lxk;->c:Landroid/util/SparseArray;

    iget v9, v0, Lxk;->K:I

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lxk$c;

    if-nez v4, :cond_7

    iget v1, v0, Lxk;->L:I

    sub-int v1, v2, v1

    invoke-interface {v3, v1}, Lbk;->skipFully(I)V

    iput v6, v0, Lxk;->E:I

    return-void

    :cond_7
    iget v9, v0, Lxk;->E:I

    if-ne v9, v7, :cond_1a

    const/4 v9, 0x3

    invoke-virtual {v0, v3, v9}, Lxk;->s(Lbk;I)V

    iget-object v10, v0, Lxk;->g:Lyt;

    iget-object v10, v10, Lyt;->a:[B

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    and-int/lit8 v10, v10, 0x6

    shr-int/2addr v10, v7

    const/16 v12, 0xff

    if-nez v10, :cond_8

    iput v7, v0, Lxk;->I:I

    iget-object v10, v0, Lxk;->J:[I

    invoke-static {v10, v7}, Lxk;->k([II)[I

    move-result-object v10

    iput-object v10, v0, Lxk;->J:[I

    iget v13, v0, Lxk;->L:I

    sub-int/2addr v2, v13

    sub-int/2addr v2, v9

    aput v2, v10, v6

    :goto_0
    const/4 v6, 0x1

    goto/16 :goto_7

    :cond_8
    if-ne v1, v5, :cond_19

    const/4 v13, 0x4

    invoke-virtual {v0, v3, v13}, Lxk;->s(Lbk;I)V

    iget-object v14, v0, Lxk;->g:Lyt;

    iget-object v14, v14, Lyt;->a:[B

    aget-byte v14, v14, v9

    and-int/2addr v14, v12

    add-int/2addr v14, v7

    iput v14, v0, Lxk;->I:I

    iget-object v15, v0, Lxk;->J:[I

    invoke-static {v15, v14}, Lxk;->k([II)[I

    move-result-object v14

    iput-object v14, v0, Lxk;->J:[I

    if-ne v10, v11, :cond_9

    iget v9, v0, Lxk;->L:I

    sub-int/2addr v2, v9

    sub-int/2addr v2, v13

    iget v9, v0, Lxk;->I:I

    div-int/2addr v2, v9

    invoke-static {v14, v6, v9, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0

    :cond_9
    if-ne v10, v7, :cond_c

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    iget v14, v0, Lxk;->I:I

    add-int/lit8 v15, v14, -0x1

    if-ge v9, v15, :cond_b

    iget-object v14, v0, Lxk;->J:[I

    aput v6, v14, v9

    :cond_a
    add-int/2addr v13, v7

    invoke-virtual {v0, v3, v13}, Lxk;->s(Lbk;I)V

    iget-object v14, v0, Lxk;->g:Lyt;

    iget-object v14, v14, Lyt;->a:[B

    add-int/lit8 v15, v13, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v12

    iget-object v15, v0, Lxk;->J:[I

    aget v16, v15, v9

    add-int v16, v16, v14

    aput v16, v15, v9

    if-eq v14, v12, :cond_a

    aget v14, v15, v9

    add-int/2addr v10, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_b
    iget-object v9, v0, Lxk;->J:[I

    sub-int/2addr v14, v7

    iget v15, v0, Lxk;->L:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v13

    sub-int/2addr v2, v10

    aput v2, v9, v14

    goto :goto_0

    :cond_c
    if-ne v10, v9, :cond_18

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    iget v14, v0, Lxk;->I:I

    add-int/lit8 v15, v14, -0x1

    if-ge v9, v15, :cond_13

    iget-object v14, v0, Lxk;->J:[I

    aput v6, v14, v9

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v0, v3, v13}, Lxk;->s(Lbk;I)V

    iget-object v14, v0, Lxk;->g:Lyt;

    iget-object v14, v14, Lyt;->a:[B

    add-int/lit8 v15, v13, -0x1

    aget-byte v14, v14, v15

    if-eqz v14, :cond_12

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v8, :cond_f

    rsub-int/lit8 v18, v14, 0x7

    shl-int v5, v7, v18

    iget-object v11, v0, Lxk;->g:Lyt;

    iget-object v11, v11, Lyt;->a:[B

    aget-byte v11, v11, v15

    and-int/2addr v11, v5

    if-eqz v11, :cond_e

    add-int/2addr v13, v14

    invoke-virtual {v0, v3, v13}, Lxk;->s(Lbk;I)V

    iget-object v11, v0, Lxk;->g:Lyt;

    iget-object v11, v11, Lyt;->a:[B

    add-int/lit8 v16, v15, 0x1

    aget-byte v11, v11, v15

    and-int/2addr v11, v12

    not-int v5, v5

    and-int/2addr v5, v11

    int-to-long v6, v5

    move/from16 v5, v16

    move-wide/from16 v16, v6

    :goto_4
    if-ge v5, v13, :cond_d

    shl-long v6, v16, v8

    iget-object v15, v0, Lxk;->g:Lyt;

    iget-object v15, v15, Lyt;->a:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    and-int/2addr v5, v12

    int-to-long v11, v5

    or-long v5, v6, v11

    const/16 v12, 0xff

    move-wide/from16 v19, v5

    move/from16 v5, v16

    move-wide/from16 v16, v19

    goto :goto_4

    :cond_d
    if-lez v9, :cond_f

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v14, v14, 0x6

    const-wide/16 v5, 0x1

    shl-long v11, v5, v14

    sub-long/2addr v11, v5

    sub-long v16, v16, v11

    goto :goto_5

    :cond_e
    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0xa3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x2

    const/16 v12, 0xff

    goto :goto_3

    :cond_f
    :goto_5
    move-wide/from16 v5, v16

    const-wide/32 v11, -0x80000000

    cmp-long v7, v5, v11

    if-ltz v7, :cond_11

    const-wide/32 v11, 0x7fffffff

    cmp-long v7, v5, v11

    if-gtz v7, :cond_11

    long-to-int v6, v5

    iget-object v5, v0, Lxk;->J:[I

    if-nez v9, :cond_10

    goto :goto_6

    :cond_10
    add-int/lit8 v7, v9, -0x1

    aget v7, v5, v7

    add-int/2addr v6, v7

    :goto_6
    aput v6, v5, v9

    aget v5, v5, v9

    add-int/2addr v10, v5

    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0xa3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x2

    const/16 v12, 0xff

    goto/16 :goto_2

    :cond_11
    new-instance v1, Lch;

    const-string v2, "EBML lacing sample size out of range."

    invoke-direct {v1, v2}, Lch;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    new-instance v1, Lch;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Lch;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    iget-object v5, v0, Lxk;->J:[I

    const/4 v6, 0x1

    sub-int/2addr v14, v6

    iget v7, v0, Lxk;->L:I

    sub-int/2addr v2, v7

    sub-int/2addr v2, v13

    sub-int/2addr v2, v10

    aput v2, v5, v14

    :goto_7
    iget-object v2, v0, Lxk;->g:Lyt;

    iget-object v2, v2, Lyt;->a:[B

    const/4 v5, 0x0

    aget-byte v7, v2, v5

    shl-int/lit8 v5, v7, 0x8

    aget-byte v2, v2, v6

    const/16 v6, 0xff

    and-int/2addr v2, v6

    or-int/2addr v2, v5

    iget-wide v5, v0, Lxk;->A:J

    int-to-long v9, v2

    invoke-virtual {v0, v9, v10}, Lxk;->w(J)J

    move-result-wide v9

    add-long/2addr v5, v9

    iput-wide v5, v0, Lxk;->F:J

    iget-object v2, v0, Lxk;->g:Lyt;

    iget-object v2, v2, Lyt;->a:[B

    const/4 v5, 0x2

    aget-byte v6, v2, v5

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_14

    const/4 v6, 0x1

    goto :goto_8

    :cond_14
    const/4 v6, 0x0

    :goto_8
    iget v7, v4, Lxk$c;->d:I

    if-eq v7, v5, :cond_16

    const/16 v7, 0xa3

    if-ne v1, v7, :cond_15

    aget-byte v2, v2, v5

    const/16 v5, 0x80

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_15

    goto :goto_9

    :cond_15
    const/4 v2, 0x0

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v2, 0x1

    :goto_a
    if-eqz v6, :cond_17

    const/high16 v5, -0x80000000

    goto :goto_b

    :cond_17
    const/4 v5, 0x0

    :goto_b
    or-int/2addr v2, v5

    iput v2, v0, Lxk;->M:I

    const/4 v2, 0x2

    iput v2, v0, Lxk;->E:I

    const/4 v2, 0x0

    iput v2, v0, Lxk;->H:I

    goto :goto_c

    :cond_18
    new-instance v1, Lch;

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected lacing value: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lch;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    new-instance v1, Lch;

    const-string v2, "Lacing only supported in SimpleBlocks."

    invoke-direct {v1, v2}, Lch;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    :goto_c
    const/16 v2, 0xa3

    if-ne v1, v2, :cond_1c

    :goto_d
    iget v1, v0, Lxk;->H:I

    iget v2, v0, Lxk;->I:I

    if-ge v1, v2, :cond_1b

    iget-object v2, v0, Lxk;->J:[I

    aget v1, v2, v1

    invoke-virtual {v0, v3, v4, v1}, Lxk;->A(Lbk;Lxk$c;I)V

    iget-wide v1, v0, Lxk;->F:J

    iget v5, v0, Lxk;->H:I

    iget v6, v4, Lxk$c;->e:I

    mul-int v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v1, v5

    invoke-virtual {v0, v4, v1, v2}, Lxk;->h(Lxk$c;J)V

    iget v1, v0, Lxk;->H:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lxk;->H:I

    goto :goto_d

    :cond_1b
    const/4 v1, 0x0

    iput v1, v0, Lxk;->E:I

    goto :goto_e

    :cond_1c
    const/4 v1, 0x0

    iget-object v2, v0, Lxk;->J:[I

    aget v1, v2, v1

    invoke-virtual {v0, v3, v4, v1}, Lxk;->A(Lbk;Lxk$c;I)V

    :goto_e
    return-void
.end method

.method public final g()Lik;
    .locals 12

    iget-wide v0, p0, Lxk;->p:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    iget-wide v0, p0, Lxk;->s:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    iget-object v0, p0, Lxk;->B:Ltt;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ltt;->c()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lxk;->C:Ltt;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ltt;->c()I

    move-result v0

    iget-object v1, p0, Lxk;->B:Ltt;

    invoke-virtual {v1}, Ltt;->c()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lxk;->B:Ltt;

    invoke-virtual {v0}, Ltt;->c()I

    move-result v0

    new-array v1, v0, [I

    new-array v3, v0, [J

    new-array v4, v0, [J

    new-array v5, v0, [J

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_1

    iget-object v8, p0, Lxk;->B:Ltt;

    invoke-virtual {v8, v7}, Ltt;->b(I)J

    move-result-wide v8

    aput-wide v8, v5, v7

    iget-wide v8, p0, Lxk;->p:J

    iget-object v10, p0, Lxk;->C:Ltt;

    invoke-virtual {v10, v7}, Ltt;->b(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v7, v0, -0x1

    if-ge v6, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    aget-wide v8, v3, v7

    aget-wide v10, v3, v6

    sub-long/2addr v8, v10

    long-to-int v9, v8

    aput v9, v1, v6

    aget-wide v8, v5, v7

    aget-wide v10, v5, v6

    sub-long/2addr v8, v10

    aput-wide v8, v4, v6

    move v6, v7

    goto :goto_1

    :cond_2
    iget-wide v8, p0, Lxk;->p:J

    iget-wide v10, p0, Lxk;->o:J

    add-long/2addr v8, v10

    aget-wide v10, v3, v7

    sub-long/2addr v8, v10

    long-to-int v0, v8

    aput v0, v1, v7

    iget-wide v8, p0, Lxk;->s:J

    aget-wide v10, v5, v7

    sub-long/2addr v8, v10

    aput-wide v8, v4, v7

    iput-object v2, p0, Lxk;->B:Ltt;

    iput-object v2, p0, Lxk;->C:Ltt;

    new-instance v0, Lvj;

    invoke-direct {v0, v1, v3, v4, v5}, Lvj;-><init>([I[J[J[J)V

    return-object v0

    :cond_3
    :goto_2
    iput-object v2, p0, Lxk;->B:Ltt;

    iput-object v2, p0, Lxk;->C:Ltt;

    new-instance v0, Lik$b;

    iget-wide v1, p0, Lxk;->s:J

    invoke-direct {v0, v1, v2}, Lik$b;-><init>(J)V

    return-object v0
.end method

.method public final h(Lxk$c;J)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Lxk$c;->Q:Lxk$d;

    move-wide/from16 v9, p2

    if-eqz v0, :cond_0

    invoke-virtual {v0, v8, v9, v10}, Lxk$d;->c(Lxk$c;J)V

    goto :goto_1

    :cond_0
    iget-object v0, v8, Lxk$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v3, 0x13

    const-wide/16 v4, 0x3e8

    sget-object v6, Lxk;->a0:[B

    const-string v2, "%02d:%02d:%02d,%03d"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lxk;->i(Lxk$c;Ljava/lang/String;IJ[B)V

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lxk$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v3, 0x15

    const-wide/16 v4, 0x2710

    sget-object v6, Lxk;->d0:[B

    const-string v2, "%01d:%02d:%02d:%02d"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lxk;->i(Lxk$c;Ljava/lang/String;IJ[B)V

    :cond_2
    :goto_0
    iget-object v0, v8, Lxk$c;->U:Lkk;

    iget v11, v7, Lxk;->M:I

    iget v12, v7, Lxk;->V:I

    const/4 v13, 0x0

    iget-object v14, v8, Lxk$c;->h:Lkk$a;

    move-object v8, v0

    move-wide/from16 v9, p2

    invoke-interface/range {v8 .. v14}, Lkk;->a(JIIILkk$a;)V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, v7, Lxk;->W:Z

    invoke-virtual {p0}, Lxk;->v()V

    return-void
.end method

.method public final i(Lxk$c;Ljava/lang/String;IJ[B)V
    .locals 9

    iget-object v0, p0, Lxk;->k:Lyt;

    iget-object v1, v0, Lyt;->a:[B

    iget-wide v2, p0, Lxk;->G:J

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lxk;->x([BJLjava/lang/String;IJ[B)V

    iget-object p1, p1, Lxk$c;->U:Lkk;

    iget-object p2, p0, Lxk;->k:Lyt;

    invoke-virtual {p2}, Lyt;->d()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lkk;->c(Lyt;I)V

    iget p1, p0, Lxk;->V:I

    iget-object p2, p0, Lxk;->k:Lyt;

    invoke-virtual {p2}, Lyt;->d()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lxk;->V:I

    return-void
.end method

.method public j(I)V
    .locals 7

    const/16 v0, 0xa0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0xae

    if-eq p1, v0, :cond_b

    const/16 v0, 0x4dbb

    const v3, 0x1c53bb6b

    if-eq p1, v0, :cond_9

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_5

    const v0, 0x1549a966

    if-eq p1, v0, :cond_3

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_1

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean p1, p0, Lxk;->u:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lxk;->Y:Lck;

    invoke-virtual {p0}, Lxk;->g()Lik;

    move-result-object v0

    invoke-interface {p1, v0}, Lck;->e(Lik;)V

    iput-boolean v2, p0, Lxk;->u:Z

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lxk;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lxk;->Y:Lck;

    invoke-interface {p1}, Lck;->endTracks()V

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lch;

    const-string v0, "No valid tracks were found"

    invoke-direct {p1, v0}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-wide v0, p0, Lxk;->q:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lxk;->q:J

    :cond_4
    iget-wide v0, p0, Lxk;->r:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_10

    invoke-virtual {p0, v0, v1}, Lxk;->w(J)J

    move-result-wide v0

    iput-wide v0, p0, Lxk;->s:J

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iget-boolean v0, p1, Lxk$c;->f:Z

    if-eqz v0, :cond_10

    iget-object p1, p1, Lxk$c;->g:[B

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    new-instance p1, Lch;

    const-string v0, "Combining encryption and compression is not supported"

    invoke-direct {p1, v0}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iget-boolean v0, p1, Lxk$c;->f:Z

    if-eqz v0, :cond_10

    iget-object v0, p1, Lxk$c;->h:Lkk$a;

    if-eqz v0, :cond_8

    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    new-array v2, v2, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    new-instance v3, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object v4, Lcg;->a:Ljava/util/UUID;

    iget-object v5, p0, Lxk;->t:Lxk$c;

    iget-object v5, v5, Lxk$c;->h:Lkk$a;

    iget-object v5, v5, Lkk$a;->b:[B

    const-string v6, "video/webm"

    invoke-direct {v3, v4, v6, v5}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>([Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    iput-object v0, p1, Lxk$c;->j:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    goto :goto_0

    :cond_8
    new-instance p1, Lch;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {p1, v0}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    iget p1, p0, Lxk;->v:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    iget-wide v0, p0, Lxk;->w:J

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_a

    if-ne p1, v3, :cond_10

    iput-wide v0, p0, Lxk;->y:J

    goto :goto_0

    :cond_a
    new-instance p1, Lch;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {p1, v0}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iget-object p1, p1, Lxk$c;->b:Ljava/lang/String;

    invoke-static {p1}, Lxk;->o(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lxk;->t:Lxk$c;

    iget-object v0, p0, Lxk;->Y:Lck;

    iget v1, p1, Lxk$c;->c:I

    invoke-virtual {p1, v0, v1}, Lxk$c;->c(Lck;I)V

    iget-object p1, p0, Lxk;->c:Landroid/util/SparseArray;

    iget-object v0, p0, Lxk;->t:Lxk$c;

    iget v1, v0, Lxk$c;->c:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    const/4 p1, 0x0

    iput-object p1, p0, Lxk;->t:Lxk$c;

    goto :goto_0

    :cond_d
    iget p1, p0, Lxk;->E:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    return-void

    :cond_e
    iget-boolean p1, p0, Lxk;->X:Z

    if-nez p1, :cond_f

    iget p1, p0, Lxk;->M:I

    or-int/2addr p1, v2

    iput p1, p0, Lxk;->M:I

    :cond_f
    iget-object p1, p0, Lxk;->c:Landroid/util/SparseArray;

    iget v0, p0, Lxk;->K:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxk$c;

    iget-wide v2, p0, Lxk;->F:J

    invoke-virtual {p0, p1, v2, v3}, Lxk;->h(Lxk$c;J)V

    iput v1, p0, Lxk;->E:I

    :cond_10
    :goto_0
    return-void
.end method

.method public l(ID)V
    .locals 1

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lxk;->t:Lxk$c;

    double-to-float p2, p2

    iput p2, p1, Lxk$c;->s:F

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lxk;->t:Lxk$c;

    double-to-float p2, p2

    iput p2, p1, Lxk$c;->r:F

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lxk;->t:Lxk$c;

    double-to-float p2, p2

    iput p2, p1, Lxk$c;->q:F

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lxk;->t:Lxk$c;

    double-to-float p2, p2

    iput p2, p1, Lxk$c;->K:F

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lxk;->t:Lxk$c;

    double-to-float p2, p2

    iput p2, p1, Lxk$c;->J:F

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lxk;->t:Lxk$c;

    double-to-float p2, p2

    iput p2, p1, Lxk$c;->I:F

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lxk;->t:Lxk$c;

    double-to-float p2, p2

    iput p2, p1, Lxk$c;->H:F

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lxk;->t:Lxk$c;

    double-to-float p2, p2

    iput p2, p1, Lxk$c;->G:F

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lxk;->t:Lxk$c;

    double-to-float p2, p2

    iput p2, p1, Lxk$c;->F:F

    goto :goto_0

    :pswitch_9
    iget-object p1, p0, Lxk;->t:Lxk$c;

    double-to-float p2, p2

    iput p2, p1, Lxk$c;->E:F

    goto :goto_0

    :pswitch_a
    iget-object p1, p0, Lxk;->t:Lxk$c;

    double-to-float p2, p2

    iput p2, p1, Lxk$c;->D:F

    goto :goto_0

    :pswitch_b
    iget-object p1, p0, Lxk;->t:Lxk$c;

    double-to-float p2, p2

    iput p2, p1, Lxk$c;->C:F

    goto :goto_0

    :pswitch_c
    iget-object p1, p0, Lxk;->t:Lxk$c;

    double-to-float p2, p2

    iput p2, p1, Lxk$c;->B:F

    goto :goto_0

    :cond_0
    double-to-long p1, p2

    iput-wide p1, p0, Lxk;->r:J

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lxk;->t:Lxk$c;

    double-to-int p2, p2

    iput p2, p1, Lxk$c;->N:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public m(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    const/4 p1, 0x5

    return p1

    :sswitch_1
    const/4 p1, 0x4

    return p1

    :sswitch_2
    const/4 p1, 0x1

    return p1

    :sswitch_3
    const/4 p1, 0x3

    return p1

    :sswitch_4
    const/4 p1, 0x2

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method public n(IJ)V
    .locals 8

    const/16 v0, 0x5031

    const/16 v1, 0x37

    const-string v2, " not supported"

    if-eq p1, v0, :cond_19

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_17

    const/16 v0, 0x32

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x7

    const/4 v1, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lxk;->t:Lxk$c;

    long-to-int p3, p2

    iput p3, p1, Lxk$c;->A:I

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lxk;->t:Lxk$c;

    long-to-int p3, p2

    iput p3, p1, Lxk$c;->z:I

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput-boolean v7, p1, Lxk$c;->v:Z

    long-to-int p3, p2

    if-eq p3, v7, :cond_2

    const/16 p2, 0x9

    if-eq p3, p2, :cond_1

    const/4 p2, 0x4

    if-eq p3, p2, :cond_0

    const/4 p2, 0x5

    if-eq p3, p2, :cond_0

    if-eq p3, v1, :cond_0

    if-eq p3, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iput v6, p1, Lxk$c;->w:I

    goto/16 :goto_0

    :cond_1
    iput v1, p1, Lxk$c;->w:I

    goto/16 :goto_0

    :cond_2
    iput v7, p1, Lxk$c;->w:I

    goto/16 :goto_0

    :pswitch_3
    long-to-int p1, p2

    if-eq p1, v7, :cond_5

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_3

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_5

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput v0, p1, Lxk$c;->x:I

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput v1, p1, Lxk$c;->x:I

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput v5, p1, Lxk$c;->x:I

    goto/16 :goto_0

    :pswitch_4
    long-to-int p1, p2

    if-eq p1, v7, :cond_7

    if-eq p1, v6, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput v7, p1, Lxk$c;->y:I

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput v6, p1, Lxk$c;->y:I

    goto/16 :goto_0

    :sswitch_0
    iput-wide p2, p0, Lxk;->q:J

    goto/16 :goto_0

    :sswitch_1
    iget-object p1, p0, Lxk;->t:Lxk$c;

    long-to-int p3, p2

    iput p3, p1, Lxk$c;->e:I

    goto/16 :goto_0

    :sswitch_2
    long-to-int p1, p2

    if-eqz p1, :cond_b

    if-eq p1, v7, :cond_a

    if-eq p1, v6, :cond_9

    if-eq p1, v5, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput v5, p1, Lxk$c;->p:I

    goto/16 :goto_0

    :cond_9
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput v6, p1, Lxk$c;->p:I

    goto/16 :goto_0

    :cond_a
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput v7, p1, Lxk$c;->p:I

    goto/16 :goto_0

    :cond_b
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput v1, p1, Lxk$c;->p:I

    goto/16 :goto_0

    :sswitch_3
    iget-object p1, p0, Lxk;->t:Lxk$c;

    long-to-int p3, p2

    iput p3, p1, Lxk$c;->M:I

    goto/16 :goto_0

    :sswitch_4
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput-wide p2, p1, Lxk$c;->P:J

    goto/16 :goto_0

    :sswitch_5
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput-wide p2, p1, Lxk$c;->O:J

    goto/16 :goto_0

    :sswitch_6
    iget-object p1, p0, Lxk;->t:Lxk$c;

    cmp-long v0, p2, v3

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    iput-boolean v1, p1, Lxk$c;->R:Z

    goto/16 :goto_0

    :sswitch_7
    iget-object p1, p0, Lxk;->t:Lxk$c;

    long-to-int p3, p2

    iput p3, p1, Lxk$c;->n:I

    goto/16 :goto_0

    :sswitch_8
    iget-object p1, p0, Lxk;->t:Lxk$c;

    long-to-int p3, p2

    iput p3, p1, Lxk$c;->o:I

    goto/16 :goto_0

    :sswitch_9
    iget-object p1, p0, Lxk;->t:Lxk$c;

    long-to-int p3, p2

    iput p3, p1, Lxk$c;->m:I

    goto/16 :goto_0

    :sswitch_a
    long-to-int p1, p2

    if-eqz p1, :cond_10

    if-eq p1, v7, :cond_f

    if-eq p1, v5, :cond_e

    const/16 p2, 0xf

    if-eq p1, p2, :cond_d

    goto/16 :goto_0

    :cond_d
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput v5, p1, Lxk$c;->u:I

    goto/16 :goto_0

    :cond_e
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput v7, p1, Lxk$c;->u:I

    goto/16 :goto_0

    :cond_f
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput v6, p1, Lxk$c;->u:I

    goto/16 :goto_0

    :cond_10
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput v1, p1, Lxk$c;->u:I

    goto/16 :goto_0

    :sswitch_b
    iget-wide v0, p0, Lxk;->p:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lxk;->w:J

    goto/16 :goto_0

    :sswitch_c
    cmp-long p1, p2, v3

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    new-instance p1, Lch;

    const/16 v0, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_d
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    new-instance p1, Lch;

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    cmp-long p1, p2, v3

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    new-instance p1, Lch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    cmp-long p1, p2, v3

    if-ltz p1, :cond_14

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_14

    goto/16 :goto_0

    :cond_14
    new-instance p1, Lch;

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_10
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    new-instance p1, Lch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_11
    iput-boolean v7, p0, Lxk;->X:Z

    goto/16 :goto_0

    :sswitch_12
    iget-boolean p1, p0, Lxk;->D:Z

    if-nez p1, :cond_1a

    iget-object p1, p0, Lxk;->C:Ltt;

    invoke-virtual {p1, p2, p3}, Ltt;->a(J)V

    iput-boolean v7, p0, Lxk;->D:Z

    goto :goto_0

    :sswitch_13
    invoke-virtual {p0, p2, p3}, Lxk;->w(J)J

    move-result-wide p1

    iput-wide p1, p0, Lxk;->A:J

    goto :goto_0

    :sswitch_14
    iget-object p1, p0, Lxk;->t:Lxk$c;

    long-to-int p3, p2

    iput p3, p1, Lxk$c;->c:I

    goto :goto_0

    :sswitch_15
    iget-object p1, p0, Lxk;->t:Lxk$c;

    long-to-int p3, p2

    iput p3, p1, Lxk$c;->l:I

    goto :goto_0

    :sswitch_16
    iget-object p1, p0, Lxk;->B:Ltt;

    invoke-virtual {p0, p2, p3}, Lxk;->w(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ltt;->a(J)V

    goto :goto_0

    :sswitch_17
    iget-object p1, p0, Lxk;->t:Lxk$c;

    long-to-int p3, p2

    iput p3, p1, Lxk$c;->k:I

    goto :goto_0

    :sswitch_18
    iget-object p1, p0, Lxk;->t:Lxk$c;

    long-to-int p3, p2

    iput p3, p1, Lxk$c;->L:I

    goto :goto_0

    :sswitch_19
    invoke-virtual {p0, p2, p3}, Lxk;->w(J)J

    move-result-wide p1

    iput-wide p1, p0, Lxk;->G:J

    goto :goto_0

    :sswitch_1a
    iget-object p1, p0, Lxk;->t:Lxk$c;

    cmp-long v0, p2, v3

    if-nez v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    iput-boolean v1, p1, Lxk$c;->S:Z

    goto :goto_0

    :sswitch_1b
    iget-object p1, p0, Lxk;->t:Lxk$c;

    long-to-int p3, p2

    iput p3, p1, Lxk$c;->d:I

    goto :goto_0

    :cond_17
    cmp-long p1, p2, v3

    if-nez p1, :cond_18

    goto :goto_0

    :cond_18
    new-instance p1, Lch;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_1b

    :cond_1a
    :goto_0
    return-void

    :cond_1b
    new-instance p1, Lch;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1b
        0x88 -> :sswitch_1a
        0x9b -> :sswitch_19
        0x9f -> :sswitch_18
        0xb0 -> :sswitch_17
        0xb3 -> :sswitch_16
        0xba -> :sswitch_15
        0xd7 -> :sswitch_14
        0xe7 -> :sswitch_13
        0xf1 -> :sswitch_12
        0xfb -> :sswitch_11
        0x4254 -> :sswitch_10
        0x4285 -> :sswitch_f
        0x42f7 -> :sswitch_e
        0x47e1 -> :sswitch_d
        0x47e8 -> :sswitch_c
        0x53ac -> :sswitch_b
        0x53b8 -> :sswitch_a
        0x54b0 -> :sswitch_9
        0x54b2 -> :sswitch_8
        0x54ba -> :sswitch_7
        0x55aa -> :sswitch_6
        0x56aa -> :sswitch_5
        0x56bb -> :sswitch_4
        0x6264 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p(I)Z
    .locals 1

    const v0, 0x1549a966

    if-eq p1, v0, :cond_1

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_1

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_1

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final r(Lhk;J)Z
    .locals 5

    iget-boolean v0, p0, Lxk;->x:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-wide p2, p0, Lxk;->z:J

    iget-wide p2, p0, Lxk;->y:J

    iput-wide p2, p1, Lhk;->a:J

    iput-boolean v2, p0, Lxk;->x:Z

    return v1

    :cond_0
    iget-boolean p2, p0, Lxk;->u:Z

    if-eqz p2, :cond_1

    iget-wide p2, p0, Lxk;->z:J

    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    iput-wide p2, p1, Lhk;->a:J

    iput-wide v3, p0, Lxk;->z:J

    return v1

    :cond_1
    return v2
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final s(Lbk;I)V
    .locals 3

    iget-object v0, p0, Lxk;->g:Lyt;

    invoke-virtual {v0}, Lyt;->d()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lxk;->g:Lyt;

    invoke-virtual {v0}, Lyt;->b()I

    move-result v0

    if-ge v0, p2, :cond_1

    iget-object v0, p0, Lxk;->g:Lyt;

    iget-object v1, v0, Lyt;->a:[B

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lxk;->g:Lyt;

    invoke-virtual {v2}, Lyt;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lyt;->H([BI)V

    :cond_1
    iget-object v0, p0, Lxk;->g:Lyt;

    iget-object v1, v0, Lyt;->a:[B

    invoke-virtual {v0}, Lyt;->d()I

    move-result v0

    iget-object v2, p0, Lxk;->g:Lyt;

    invoke-virtual {v2}, Lyt;->d()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v1, v0, v2}, Lbk;->readFully([BII)V

    iget-object p1, p0, Lxk;->g:Lyt;

    invoke-virtual {p1, p2}, Lyt;->I(I)V

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lxk;->A:J

    const/4 p1, 0x0

    iput p1, p0, Lxk;->E:I

    iget-object p2, p0, Lxk;->a:Lvk;

    invoke-interface {p2}, Lvk;->reset()V

    iget-object p2, p0, Lxk;->b:Lzk;

    invoke-virtual {p2}, Lzk;->e()V

    invoke-virtual {p0}, Lxk;->v()V

    :goto_0
    iget-object p2, p0, Lxk;->c:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lxk;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lxk$c;

    invoke-virtual {p2}, Lxk$c;->h()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(Lbk;Lkk;I)I
    .locals 1

    iget-object v0, p0, Lxk;->j:Lyt;

    invoke-virtual {v0}, Lyt;->a()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p3, p0, Lxk;->j:Lyt;

    invoke-interface {p2, p3, p1}, Lkk;->c(Lyt;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lkk;->d(Lbk;IZ)I

    move-result p1

    :goto_0
    iget p2, p0, Lxk;->N:I

    add-int/2addr p2, p1

    iput p2, p0, Lxk;->N:I

    iget p2, p0, Lxk;->V:I

    add-int/2addr p2, p1

    iput p2, p0, Lxk;->V:I

    return p1
.end method

.method public final u(Lbk;[BII)V
    .locals 3

    iget-object v0, p0, Lxk;->j:Lyt;

    invoke-virtual {v0}, Lyt;->a()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-interface {p1, p2, v1, v2}, Lbk;->readFully([BII)V

    if-lez v0, :cond_0

    iget-object p1, p0, Lxk;->j:Lyt;

    invoke-virtual {p1, p2, p3, v0}, Lyt;->f([BII)V

    :cond_0
    iget p1, p0, Lxk;->N:I

    add-int/2addr p1, p4

    iput p1, p0, Lxk;->N:I

    return-void
.end method

.method public final v()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lxk;->N:I

    iput v0, p0, Lxk;->V:I

    iput v0, p0, Lxk;->U:I

    iput-boolean v0, p0, Lxk;->O:Z

    iput-boolean v0, p0, Lxk;->P:Z

    iput-boolean v0, p0, Lxk;->R:Z

    iput v0, p0, Lxk;->T:I

    iput-byte v0, p0, Lxk;->S:B

    iput-boolean v0, p0, Lxk;->Q:Z

    iget-object v0, p0, Lxk;->j:Lyt;

    invoke-virtual {v0}, Lyt;->E()V

    return-void
.end method

.method public final w(J)J
    .locals 6

    iget-wide v2, p0, Lxk;->q:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lnu;->f0(JJJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    new-instance p1, Lch;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y(IJJ)V
    .locals 5

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b

    const/16 v0, 0xae

    if-eq p1, v0, :cond_a

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_6

    const v0, 0x18538067

    if-eq p1, v0, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean p1, p0, Lxk;->u:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lxk;->d:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lxk;->y:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    iput-boolean v3, p0, Lxk;->x:Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lxk;->Y:Lck;

    new-instance p2, Lik$b;

    iget-wide p3, p0, Lxk;->s:J

    invoke-direct {p2, p3, p4}, Lik$b;-><init>(J)V

    invoke-interface {p1, p2}, Lck;->e(Lik;)V

    iput-boolean v3, p0, Lxk;->u:Z

    goto :goto_1

    :cond_2
    new-instance p1, Ltt;

    invoke-direct {p1}, Ltt;-><init>()V

    iput-object p1, p0, Lxk;->B:Ltt;

    new-instance p1, Ltt;

    invoke-direct {p1}, Ltt;-><init>()V

    iput-object p1, p0, Lxk;->C:Ltt;

    goto :goto_1

    :cond_3
    iget-wide v3, p0, Lxk;->p:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    cmp-long p1, v3, p2

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lch;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    iput-wide p2, p0, Lxk;->p:J

    iput-wide p4, p0, Lxk;->o:J

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput-boolean v3, p1, Lxk$c;->v:Z

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput-boolean v3, p1, Lxk$c;->f:Z

    goto :goto_1

    :cond_8
    const/4 p1, -0x1

    iput p1, p0, Lxk;->v:I

    iput-wide v1, p0, Lxk;->w:J

    goto :goto_1

    :cond_9
    iput-boolean v1, p0, Lxk;->D:Z

    goto :goto_1

    :cond_a
    new-instance p1, Lxk$c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lxk$c;-><init>(Lxk$a;)V

    iput-object p1, p0, Lxk;->t:Lxk$c;

    goto :goto_1

    :cond_b
    iput-boolean v1, p0, Lxk;->X:Z

    :cond_c
    :goto_1
    return-void
.end method

.method public z(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lxk;->t:Lxk$c;

    invoke-static {p1, p2}, Lxk$c;->a(Lxk$c;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput-object p2, p1, Lxk$c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lch;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocType "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p1, p0, Lxk;->t:Lxk$c;

    iput-object p2, p1, Lxk$c;->b:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method
