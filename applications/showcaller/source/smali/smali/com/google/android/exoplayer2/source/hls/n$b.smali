.class Lcom/google/android/exoplayer2/source/hls/n$b;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c1/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/google/android/exoplayer2/Format;

.field private static final b:Lcom/google/android/exoplayer2/Format;


# instance fields
.field private final c:Lcom/google/android/exoplayer2/metadata/emsg/a;

.field private final d:Lcom/google/android/exoplayer2/c1/v;

.field private final e:Lcom/google/android/exoplayer2/Format;

.field private f:Lcom/google/android/exoplayer2/Format;

.field private g:[B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "application/id3"

    const-wide v2, 0x7fffffffffffffffL

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Format;->t(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/source/hls/n$b;->a:Lcom/google/android/exoplayer2/Format;

    const-string v1, "application/x-emsg"

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Format;->t(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/n$b;->b:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/c1/v;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/metadata/emsg/a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/emsg/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->c:Lcom/google/android/exoplayer2/metadata/emsg/a;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->d:Lcom/google/android/exoplayer2/c1/v;

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 4
    sget-object p1, Lcom/google/android/exoplayer2/source/hls/n$b;->b:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->e:Lcom/google/android/exoplayer2/Format;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown metadataType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    sget-object p1, Lcom/google/android/exoplayer2/source/hls/n$b;->a:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->e:Lcom/google/android/exoplayer2/Format;

    :goto_0
    const/4 p1, 0x0

    new-array p2, p1, [B

    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->g:[B

    .line 8
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->h:I

    return-void
.end method

.method private e(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->y()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->e:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->g:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 2
    div-int/lit8 v1, p1, 0x2

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->g:[B

    :cond_0
    return-void
.end method

.method private g(II)Lcom/google/android/exoplayer2/util/v;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->h:I

    sub-int/2addr v0, p2

    sub-int p1, v0, p1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->g:[B

    invoke-static {v1, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/util/v;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/util/v;-><init>([B)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->g:[B

    const/4 v2, 0x0

    invoke-static {p1, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->h:I

    return-object v1
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/c1/i;IZ)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->h:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/n$b;->f(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->g:[B

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->h:I

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/c1/i;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 4
    :cond_1
    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->h:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->h:I

    return p1
.end method

.method public b(Lcom/google/android/exoplayer2/util/v;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->h:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/n$b;->f(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->g:[B

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->h:I

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    .line 3
    iget p1, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->h:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->h:I

    return-void
.end method

.method public c(JIIILcom/google/android/exoplayer2/c1/v$a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->f:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p4, p5}, Lcom/google/android/exoplayer2/source/hls/n$b;->g(II)Lcom/google/android/exoplayer2/util/v;

    move-result-object p4

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->e:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    const-string v1, "application/x-emsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "EmsgUnwrappingTrackOutput"

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->c:Lcom/google/android/exoplayer2/metadata/emsg/a;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/metadata/emsg/a;->b(Lcom/google/android/exoplayer2/util/v;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object p4

    .line 6
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/hls/n$b;->e(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 7
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->e:Lcom/google/android/exoplayer2/Format;

    iget-object p3, p3, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    aput-object p3, p1, p2

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->y()Lcom/google/android/exoplayer2/Format;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s"

    .line 9
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/util/v;

    .line 12
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->h0()[B

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    invoke-direct {v0, p4}, Lcom/google/android/exoplayer2/util/v;-><init>([B)V

    move-object p4, v0

    .line 13
    :goto_0
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v4

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->d:Lcom/google/android/exoplayer2/c1/v;

    invoke-interface {v0, p4, v4}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->d:Lcom/google/android/exoplayer2/c1/v;

    move-wide v1, p1

    move v3, p3

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/c1/v;->c(JIIILcom/google/android/exoplayer2/c1/v$a;)V

    return-void

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring sample for unsupported format: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->f:Lcom/google/android/exoplayer2/Format;

    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->f:Lcom/google/android/exoplayer2/Format;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->d:Lcom/google/android/exoplayer2/c1/v;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/n$b;->e:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method
