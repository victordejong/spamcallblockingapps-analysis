.class public final Lcom/dropbox/core/util/e;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public a:Lcom/dropbox/core/util/IOUtil$a;

.field private b:I

.field private c:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/dropbox/core/util/e;->c:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/dropbox/core/util/e;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/dropbox/core/util/IOUtil$a;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/dropbox/core/util/e;-><init>(Ljava/io/OutputStream;)V

    .line 18
    iput-object p2, p0, Lcom/dropbox/core/util/e;->a:Lcom/dropbox/core/util/IOUtil$a;

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 54
    iget v0, p0, Lcom/dropbox/core/util/e;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dropbox/core/util/e;->b:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/dropbox/core/util/e;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/dropbox/core/util/e;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/dropbox/core/util/e;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p1, 0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/dropbox/core/util/e;->a(I)V

    return-void
.end method

.method public final write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/dropbox/core/util/e;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 34
    array-length p1, p1

    invoke-direct {p0, p1}, Lcom/dropbox/core/util/e;->a(I)V

    return-void
.end method

.method public final write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/dropbox/core/util/e;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 28
    invoke-direct {p0, p3}, Lcom/dropbox/core/util/e;->a(I)V

    return-void
.end method
