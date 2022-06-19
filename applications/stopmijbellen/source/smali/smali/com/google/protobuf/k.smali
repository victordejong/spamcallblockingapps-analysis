.class public final Lcom/google/protobuf/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/k$c;,
        Lcom/google/protobuf/k$d;,
        Lcom/google/protobuf/k$b;,
        Lcom/google/protobuf/k$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/k;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    sput-object v1, Lcom/google/protobuf/k;->b:[B

    .line 4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 5
    array-length v2, v1

    .line 6
    invoke-static {v1, v0, v2, v0}, Lcom/google/protobuf/d;->a([BIIZ)Lcom/google/protobuf/d;

    return-void
.end method

.method public static a(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 p0, 0x4d5

    :goto_0
    return p0
.end method

.method public static b(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p0, Lcom/google/protobuf/u;

    invoke-interface {p0}, Lcom/google/protobuf/u;->d()Lcom/google/protobuf/u$a;

    move-result-object p0

    check-cast p1, Lcom/google/protobuf/u;

    check-cast p0, Lcom/google/protobuf/a$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/google/protobuf/i$a;

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/i$a;->a:Lcom/google/protobuf/i;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/google/protobuf/a;

    .line 6
    check-cast p1, Lcom/google/protobuf/i;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/i$a;->n()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/i$a;->p(Lcom/google/protobuf/i;Lcom/google/protobuf/i;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/i$a;->m()Lcom/google/protobuf/i;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
