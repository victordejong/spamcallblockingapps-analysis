.class public final Lcom/google/protobuf/x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/x$f;,
        Lcom/google/protobuf/x$b;,
        Lcom/google/protobuf/x$h;,
        Lcom/google/protobuf/x$a;,
        Lcom/google/protobuf/x$g;,
        Lcom/google/protobuf/x$i;,
        Lcom/google/protobuf/x$e;,
        Lcom/google/protobuf/x$d;,
        Lcom/google/protobuf/x$c;
    }
.end annotation


# static fields
.field static final a:Ljava/nio/charset/Charset;

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/x;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/protobuf/x;->b:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/protobuf/i;->i([B)Lcom/google/protobuf/i;

    return-void
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 p0, 0x4d5

    :goto_0
    return p0
.end method

.method public static d([B)I
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/x;->e([BII)I

    move-result p0

    return p0
.end method

.method static e([BII)I
    .locals 0

    invoke-static {p2, p0, p1, p2}, Lcom/google/protobuf/x;->i(I[BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public static f(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static g([B)Z
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/Utf8;->s([B)Z

    move-result p0

    return p0
.end method

.method static h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/google/protobuf/m0;

    invoke-interface {p0}, Lcom/google/protobuf/m0;->e()Lcom/google/protobuf/m0$a;

    move-result-object p0

    check-cast p1, Lcom/google/protobuf/m0;

    invoke-interface {p0, p1}, Lcom/google/protobuf/m0$a;->p(Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0$a;

    invoke-interface {p0}, Lcom/google/protobuf/m0$a;->x()Lcom/google/protobuf/m0;

    move-result-object p0

    return-object p0
.end method

.method static i(I[BII)I
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    mul-int/lit8 p0, p0, 0x1f

    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static j([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/protobuf/x;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
