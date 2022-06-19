.class public Lt7/a;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public a:Lk7/l;


# direct methods
.method public constructor <init>(Lk7/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lt7/a;->a:Lk7/l;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt7/a;->a:Lk7/l;

    .line 2
    iget v1, v0, Lk7/l;->c:I

    if-gtz v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lk7/l;->c()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lt7/a;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lt7/a;->a:Lk7/l;

    .line 6
    iget v0, v0, Lk7/l;->c:I

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 7
    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8
    iget-object v0, p0, Lt7/a;->a:Lk7/l;

    invoke-virtual {v0, p1, p2, p3}, Lk7/l;->e([BII)V

    return p3
.end method
