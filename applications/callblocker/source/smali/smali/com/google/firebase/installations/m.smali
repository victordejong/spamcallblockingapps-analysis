.class public Lcom/google/firebase/installations/m;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"


# static fields
.field private static final a:B

.field private static final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 29
    const-string/jumbo v0, "01110000"

    invoke-static {v0, v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    sput-byte v0, Lcom/google/firebase/installations/m;->a:B

    .line 35
    const-string/jumbo v0, "00001111"

    invoke-static {v0, v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    sput-byte v0, Lcom/google/firebase/installations/m;->b:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xb

    .line 70
    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    .line 75
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v1, 0x0

    const/16 v2, 0x16

    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 69
    return-object v0
.end method

.method private static a(Ljava/util/UUID;[B)[B
    .locals 4

    .prologue
    .line 80
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const/16 v1, 0x11

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lcom/google/firebase/installations/m;->a(Ljava/util/UUID;[B)[B

    move-result-object v0

    .line 53
    const/16 v1, 0x10

    aget-byte v2, v0, v3

    aput-byte v2, v0, v1

    .line 54
    sget-byte v1, Lcom/google/firebase/installations/m;->b:B

    aget-byte v2, v0, v3

    and-int/2addr v1, v2

    sget-byte v2, Lcom/google/firebase/installations/m;->a:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 55
    invoke-static {v0}, Lcom/google/firebase/installations/m;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
