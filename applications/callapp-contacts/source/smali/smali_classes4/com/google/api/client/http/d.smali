.class public final Lcom/google/api/client/http/d;
.super Lcom/google/api/client/http/b;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    .line 60
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;[BII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 4

    .line 74
    invoke-direct {p0, p1}, Lcom/google/api/client/http/b;-><init>(Ljava/lang/String;)V

    .line 1125
    invoke-static {p2}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 75
    check-cast p1, [B

    iput-object p1, p0, Lcom/google/api/client/http/d;->a:[B

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    add-int v1, p3, p4

    .line 76
    array-length v2, p2

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 79
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 80
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const/4 p1, 0x2

    array-length p2, p2

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "offset %s, length %s, array length %s"

    .line 2067
    invoke-static {v1, p1, v2}, Lcom/google/common/base/m;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iput p3, p0, Lcom/google/api/client/http/d;->b:I

    .line 83
    iput p4, p0, Lcom/google/api/client/http/d;->c:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)Lcom/google/api/client/http/b;
    .locals 0

    .line 3123
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->a(Ljava/lang/String;)Lcom/google/api/client/http/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/d;

    return-object p1
.end method

.method public final bridge synthetic a(Z)Lcom/google/api/client/http/b;
    .locals 0

    .line 2128
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->a(Z)Lcom/google/api/client/http/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/d;

    return-object p1
.end method

.method public final a()Ljava/io/InputStream;
    .locals 4

    .line 118
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/d;->a:[B

    iget v2, p0, Lcom/google/api/client/http/d;->b:I

    iget v3, p0, Lcom/google/api/client/http/d;->c:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public final getLength()J
    .locals 2

    .line 109
    iget v0, p0, Lcom/google/api/client/http/d;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final retrySupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
