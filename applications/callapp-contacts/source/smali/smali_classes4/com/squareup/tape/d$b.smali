.class final Lcom/squareup/tape/d$b;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tape/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/tape/d;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/squareup/tape/d;Lcom/squareup/tape/d$a;)V
    .locals 1

    .line 454
    iput-object p1, p0, Lcom/squareup/tape/d$b;->a:Lcom/squareup/tape/d;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 455
    iget v0, p2, Lcom/squareup/tape/d$a;->b:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lcom/squareup/tape/d;->a(Lcom/squareup/tape/d;I)I

    move-result p1

    iput p1, p0, Lcom/squareup/tape/d$b;->b:I

    .line 456
    iget p1, p2, Lcom/squareup/tape/d$a;->c:I

    iput p1, p0, Lcom/squareup/tape/d$b;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/tape/d;Lcom/squareup/tape/d$a;Lcom/squareup/tape/d$1;)V
    .locals 0

    .line 450
    invoke-direct {p0, p1, p2}, Lcom/squareup/tape/d$b;-><init>(Lcom/squareup/tape/d;Lcom/squareup/tape/d$a;)V

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    iget v0, p0, Lcom/squareup/tape/d$b;->c:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/squareup/tape/d$b;->a:Lcom/squareup/tape/d;

    iget-object v0, v0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/squareup/tape/d$b;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 478
    iget-object v0, p0, Lcom/squareup/tape/d$b;->a:Lcom/squareup/tape/d;

    iget-object v0, v0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 479
    iget-object v1, p0, Lcom/squareup/tape/d$b;->a:Lcom/squareup/tape/d;

    iget v2, p0, Lcom/squareup/tape/d$b;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/squareup/tape/d;->a(Lcom/squareup/tape/d;I)I

    move-result v1

    iput v1, p0, Lcom/squareup/tape/d$b;->b:I

    .line 480
    iget v1, p0, Lcom/squareup/tape/d$b;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/tape/d$b;->c:I

    return v0
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    .line 460
    invoke-static {p1, v0}, Lcom/squareup/tape/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    if-ltz v0, :cond_2

    .line 461
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_2

    .line 464
    iget v0, p0, Lcom/squareup/tape/d$b;->c:I

    if-lez v0, :cond_1

    if-le p3, v0, :cond_0

    move p3, v0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/squareup/tape/d$b;->a:Lcom/squareup/tape/d;

    iget v1, p0, Lcom/squareup/tape/d$b;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/squareup/tape/d;->a(Lcom/squareup/tape/d;I[BII)V

    .line 467
    iget-object p1, p0, Lcom/squareup/tape/d$b;->a:Lcom/squareup/tape/d;

    iget p2, p0, Lcom/squareup/tape/d$b;->b:I

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/squareup/tape/d;->a(Lcom/squareup/tape/d;I)I

    move-result p1

    iput p1, p0, Lcom/squareup/tape/d$b;->b:I

    .line 468
    iget p1, p0, Lcom/squareup/tape/d$b;->c:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/squareup/tape/d$b;->c:I

    return p3

    :cond_1
    const/4 p1, -0x1

    return p1

    .line 462
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method
