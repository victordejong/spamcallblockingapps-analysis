.class public Lr7/b;
.super Lk7/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lk7/o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk7/k;-><init>(Lk7/o;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lk7/k;->e:I

    return-void
.end method


# virtual methods
.method public b(Lk7/l;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget v1, p1, Lk7/l;->c:I

    const/16 v2, 0x10

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk7/l;->b(Ljava/nio/ByteBuffer;)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    return-void
.end method

.method public j()V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    iput v0, p0, Lk7/k;->e:I

    .line 2
    new-instance v0, Lk7/l;

    invoke-direct {v0}, Lk7/l;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lk7/k;->k(Lk7/l;)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lk7/k;->e:I

    return-void
.end method
