.class public final Lcom/google/api/client/http/d;
.super Lcom/google/api/client/http/b;
.source "ByteArrayContent.java"


# instance fields
.field private final c:[B

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/client/http/b;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/api/client/http/d;->c:[B

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    add-int v1, p3, p4

    .line 3
    array-length v2, p2

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const/4 p1, 0x2

    array-length p2, p2

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "offset %s, length %s, array length %s"

    .line 7
    invoke-static {v1, p1, v2}, Lcom/google/api/client/util/w;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iput p3, p0, Lcom/google/api/client/http/d;->d:I

    .line 9
    iput p4, p0, Lcom/google/api/client/http/d;->e:I

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Ljava/io/InputStream;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/d;->c:[B

    iget v2, p0, Lcom/google/api/client/http/d;->d:I

    iget v3, p0, Lcom/google/api/client/http/d;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public bridge synthetic f(Ljava/lang/String;)Lcom/google/api/client/http/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/d;->g(Ljava/lang/String;)Lcom/google/api/client/http/d;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Lcom/google/api/client/http/d;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->f(Ljava/lang/String;)Lcom/google/api/client/http/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/d;

    return-object p1
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/client/http/d;->e:I

    int-to-long v0, v0

    return-wide v0
.end method
