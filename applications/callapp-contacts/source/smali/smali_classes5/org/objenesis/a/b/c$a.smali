.class final Lorg/objenesis/a/b/c$a;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/objenesis/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final d:[I

.field private static f:[B

.field private static g:[B


# instance fields
.field private a:I

.field private b:[B

.field private c:I

.field private final e:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 50
    fill-array-data v0, :array_0

    sput-object v0, Lorg/objenesis/a/b/c$a;->d:[I

    .line 1062
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1063
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, -0x5313

    .line 1064
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x5

    .line 1065
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1066
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sput-object v0, Lorg/objenesis/a/b/c$a;->f:[B

    .line 1068
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1069
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x73

    .line 1071
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x71

    .line 1072
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/high16 v2, 0x7e0000

    .line 1073
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1074
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sput-object v0, Lorg/objenesis/a/b/c$a;->g:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1077
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lorg/objenesis/a/b/c$a;->a:I

    .line 84
    iput v0, p0, Lorg/objenesis/a/b/c$a;->c:I

    .line 85
    sget-object v1, Lorg/objenesis/a/b/c$a;->f:[B

    iput-object v1, p0, Lorg/objenesis/a/b/c$a;->b:[B

    .line 96
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x73

    .line 99
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x72

    .line 100
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 p1, 0x2

    .line 103
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 104
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v3, 0x78

    .line 105
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x70

    .line 106
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [[B

    .line 112
    sget-object v3, Lorg/objenesis/a/b/c$a;->f:[B

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v0, Lorg/objenesis/a/b/c$a;->g:[B

    aput-object v0, v2, p1

    iput-object v2, p0, Lorg/objenesis/a/b/c$a;->e:[[B

    return-void

    :catch_0
    move-exception p1

    .line 109
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lorg/objenesis/a/b/c$a;->a:I

    .line 117
    sget-object v0, Lorg/objenesis/a/b/c$a;->d:[I

    iget v1, p0, Lorg/objenesis/a/b/c$a;->c:I

    aget v0, v0, v1

    iput v0, p0, Lorg/objenesis/a/b/c$a;->c:I

    .line 118
    iget-object v1, p0, Lorg/objenesis/a/b/c$a;->e:[[B

    aget-object v0, v1, v0

    iput-object v0, p0, Lorg/objenesis/a/b/c$a;->b:[B

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public final read()I
    .locals 3

    .line 123
    iget-object v0, p0, Lorg/objenesis/a/b/c$a;->b:[B

    iget v1, p0, Lorg/objenesis/a/b/c$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objenesis/a/b/c$a;->a:I

    aget-byte v1, v0, v1

    .line 124
    array-length v0, v0

    if-lt v2, v0, :cond_0

    .line 125
    invoke-direct {p0}, Lorg/objenesis/a/b/c$a;->a()V

    :cond_0
    return v1
.end method

.method public final read([BII)I
    .locals 4

    .line 139
    iget-object v0, p0, Lorg/objenesis/a/b/c$a;->b:[B

    array-length v0, v0

    iget v1, p0, Lorg/objenesis/a/b/c$a;->a:I

    sub-int/2addr v0, v1

    move v1, p3

    :goto_0
    if-gt v0, v1, :cond_0

    .line 142
    iget-object v2, p0, Lorg/objenesis/a/b/c$a;->b:[B

    iget v3, p0, Lorg/objenesis/a/b/c$a;->a:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr v1, v0

    .line 145
    invoke-direct {p0}, Lorg/objenesis/a/b/c$a;->a()V

    .line 146
    iget-object v0, p0, Lorg/objenesis/a/b/c$a;->b:[B

    array-length v0, v0

    iget v2, p0, Lorg/objenesis/a/b/c$a;->a:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 149
    iget-object v0, p0, Lorg/objenesis/a/b/c$a;->b:[B

    iget v2, p0, Lorg/objenesis/a/b/c$a;->a:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget p1, p0, Lorg/objenesis/a/b/c$a;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/objenesis/a/b/c$a;->a:I

    :cond_1
    return p3
.end method
