.class public Lcom/googlecode/mp4parser/h264/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static d:I


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field protected e:Lcom/googlecode/mp4parser/h264/a;

.field private f:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/googlecode/mp4parser/h264/a;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/h264/a;-><init>(I)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/h264/a/a;->e:Lcom/googlecode/mp4parser/h264/a;

    .line 43
    iput-object p1, p0, Lcom/googlecode/mp4parser/h264/a/a;->f:Ljava/io/InputStream;

    .line 44
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/h264/a/a;->a:I

    .line 45
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/h264/a/a;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget v0, p0, Lcom/googlecode/mp4parser/h264/a/a;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/a/a;->b()V

    .line 60
    iget v0, p0, Lcom/googlecode/mp4parser/h264/a/a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 64
    :cond_0
    iget v0, p0, Lcom/googlecode/mp4parser/h264/a/a;->a:I

    iget v1, p0, Lcom/googlecode/mp4parser/h264/a/a;->c:I

    rsub-int/lit8 v2, v1, 0x7

    shr-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 65
    iput v1, p0, Lcom/googlecode/mp4parser/h264/a/a;->c:I

    .line 67
    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/a/a;->e:Lcom/googlecode/mp4parser/h264/a;

    if-nez v0, :cond_1

    const/16 v2, 0x30

    goto :goto_0

    :cond_1
    const/16 v2, 0x31

    .line 1048
    :goto_0
    iget v3, v1, Lcom/googlecode/mp4parser/h264/a;->b:I

    iget-object v4, v1, Lcom/googlecode/mp4parser/h264/a;->a:[C

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 1049
    iget-object v3, v1, Lcom/googlecode/mp4parser/h264/a;->a:[C

    iget v4, v1, Lcom/googlecode/mp4parser/h264/a;->b:I

    aput-char v2, v3, v4

    .line 1050
    iget v2, v1, Lcom/googlecode/mp4parser/h264/a;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/googlecode/mp4parser/h264/a;->b:I

    .line 68
    :cond_2
    sget v1, Lcom/googlecode/mp4parser/h264/a/a;->d:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/googlecode/mp4parser/h264/a/a;->d:I

    return v0
.end method

.method public final a(I)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    if-gt p1, v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p1, :cond_0

    return-wide v0

    :cond_0
    const/4 v3, 0x1

    shl-long/2addr v0, v3

    .line 86
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/a/a;->a()I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not readByte more then 64 bit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget v0, p0, Lcom/googlecode/mp4parser/h264/a/a;->b:I

    iput v0, p0, Lcom/googlecode/mp4parser/h264/a/a;->a:I

    .line 94
    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/a/a;->f:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/h264/a/a;->b:I

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/googlecode/mp4parser/h264/a/a;->c:I

    return-void
.end method

.method public final c()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget v0, p0, Lcom/googlecode/mp4parser/h264/a/a;->c:I

    rsub-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/h264/a/a;->a(I)J

    move-result-wide v0

    return-wide v0
.end method
