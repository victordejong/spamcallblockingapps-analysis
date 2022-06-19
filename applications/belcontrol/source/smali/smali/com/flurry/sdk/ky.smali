.class public Lcom/flurry/sdk/ky;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ky"

.field private static final b:[B


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/flurry/sdk/lo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/lo<",
            "TObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/flurry/sdk/ky;->b:[B

    return-void

    :array_0
    .array-data 1
        0x71t
        -0x5ct
        -0x8t
        0x7dt
        0x79t
        0x6bt
        -0x41t
        -0x3dt
        -0x4at
        -0x72t
        -0x20t
        0x0t
        -0x39t
        -0x57t
        -0x23t
        -0x38t
        -0x6t
        -0x34t
        0x33t
        0x7et
        -0x68t
        0x31t
        0x4ft
        -0x34t
        0x76t
        -0x54t
        0x63t
        -0x34t
        -0xet
        -0x7et
        -0x1bt
        -0x40t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/lo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/lo<",
            "TObjectType;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/ky;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/ky;->d:Lcom/flurry/sdk/lo;

    return-void
.end method

.method public static a([B)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/km;

    invoke-direct {v0}, Lcom/flurry/sdk/km;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Lcom/flurry/sdk/km;->b()I

    move-result p0

    return p0
.end method

.method private static c([B)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    sget-object v1, Lcom/flurry/sdk/ky;->b:[B

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    sget-object v4, Lcom/flurry/sdk/ky;->b:[B

    rem-int v5, v2, v1

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    mul-int/lit8 v4, v2, 0x1f

    rem-int/lit16 v4, v4, 0xfb

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TObjectType;)[B"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/ky;->d:Lcom/flurry/sdk/lo;

    invoke-interface {v1, v0, p1}, Lcom/flurry/sdk/lo;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    sget-object v0, Lcom/flurry/sdk/ky;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encoding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/ky;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/lm;

    new-instance v1, Lcom/flurry/sdk/lk;

    invoke-direct {v1}, Lcom/flurry/sdk/lk;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/lm;-><init>(Lcom/flurry/sdk/lo;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {v0, v1, p1}, Lcom/flurry/sdk/lo;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/flurry/sdk/ky;->c([B)V

    return-object p1
.end method

.method public final b([B)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TObjectType;"
        }
    .end annotation

    const-string v0, "Decoding: "

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/flurry/sdk/ky;->c([B)V

    new-instance v1, Lcom/flurry/sdk/lm;

    new-instance v2, Lcom/flurry/sdk/lk;

    invoke-direct {v2}, Lcom/flurry/sdk/lk;-><init>()V

    invoke-direct {v1, v2}, Lcom/flurry/sdk/lm;-><init>(Lcom/flurry/sdk/lo;)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/flurry/sdk/lo;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ky;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/ky;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p1, p0, Lcom/flurry/sdk/ky;->d:Lcom/flurry/sdk/lo;

    invoke-interface {p1, v0}, Lcom/flurry/sdk/lo;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/ky;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Nothing to decode"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
