.class public final Lcom/facebook/ads/redexgen/X/OY;
.super Ljava/io/InputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/OX;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/security/MessageDigest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/XK;

.field public final A02:Lcom/facebook/ads/redexgen/X/OX;

.field public final A03:Ljava/io/FileInputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OY;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OY;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XK;Ljava/io/FileInputStream;Lcom/facebook/ads/redexgen/X/OX;)V
    .locals 3

    .line 46745
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46746
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/OY;->A03:Ljava/io/FileInputStream;

    .line 46747
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/OY;->A02:Lcom/facebook/ads/redexgen/X/OX;

    .line 46748
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OY;->A01:Lcom/facebook/ads/redexgen/X/XK;

    .line 46749
    :try_start_0
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A00:Ljava/security/MessageDigest;

    goto :goto_0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46750
    .local p0, "e":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A00:Ljava/security/MessageDigest;

    .line 46751
    .end local p0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/OY;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/OY;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/OY;->A05:[Ljava/lang/String;

    const-string v1, "wkBtkBfOXubsKwfKzYpxBJzZI93GSJMw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte p1, v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/OY;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/OY;->A05:[Ljava/lang/String;

    const-string v1, "6MRboz4pfSS0DylRcsmX7nz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Z3yJOYkAPU5AGas9ZlGFYfEzislvm9u"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sub-int/2addr p1, p2

    add-int/lit8 v0, p1, -0x2d

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OY;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x68t
        -0x71t
        -0x80t
        0xbt
        0x1at
        0x13t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5FxkjmViipfuOEmeGZRh1rWuAhi58BIY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "P0uDFh8HOwAWvDVGkGeATzc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FQ2HPVuJ9Fju5P7EfteSFhbDkCSiUGCr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lMnDCDrcSzZtU6RMhKfYe1rO633Hkzz8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BZaCeAJ4mpNw1z6aTzzGkvXJAvKgKDg7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gl5vlYV0aCgrCc0s0sEnhviYHRKbo8Yg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Tgc0UJMQxUN8PgOF6KJ9ZKrej2a3tpw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OSPCme8ftb56UzOVrw2bgiBSvmZFYlRk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OY;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A03:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46753
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 46754
    .local p0, "b":[B
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/OY;->read([B)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A03:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 46756
    .local p0, "bytesRead":I
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/OY;->A00:Ljava/security/MessageDigest;

    if-eqz v4, :cond_2

    .line 46757
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/OY;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/OY;->A05:[Ljava/lang/String;

    const-string v1, "wFnf9K6AarqF2rYbRIkm3wGElU25UaCd"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-lez v6, :cond_0

    .line 46758
    :try_start_0
    invoke-virtual {v4, p1, p2, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 46759
    :cond_0
    const/4 v0, -0x1

    if-ne v6, v0, :cond_2

    .line 46760
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LD;->A04([B)Ljava/lang/String;

    move-result-object v1

    .line 46761
    .local p1, "hash":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A02:Lcom/facebook/ads/redexgen/X/OX;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/OX;->A7f(Ljava/lang/String;)V

    .line 46762
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/OY;->A00:Ljava/security/MessageDigest;

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46763
    :catch_0
    move-exception v1

    .line 46764
    .local p1, "e":Ljava/lang/Exception;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/OY;->A00:Ljava/security/MessageDigest;

    .line 46765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A01:Lcom/facebook/ads/redexgen/X/XK;

    .line 46766
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0q:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 46767
    const/4 v2, 0x3

    const/4 v1, 0x3

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8l(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 46768
    .end local p1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return v6
.end method

.method public final skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46769
    long-to-int v6, p1

    .line 46770
    .local p0, "bytesToRead":I
    const/16 v5, 0x400

    new-array v4, v5, [B

    .line 46771
    .local v2, "b":[B
    const-wide/16 v2, 0x0

    .line 46772
    .local v6, "totalRead":J
    :goto_0
    if-lez v6, :cond_0

    .line 46773
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 46774
    .local v4, "currentBufSize":I
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0, v1}, Lcom/facebook/ads/redexgen/X/OY;->read([BII)I

    move-result v0

    .line 46775
    .local v2, "actuallyRead":I
    if-gtz v0, :cond_1

    .line 46776
    :cond_0
    return-wide v2

    .line 46777
    :cond_1
    sub-int/2addr v6, v0

    .line 46778
    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 46779
    .end local v4    # "currentBufSize":I
    .end local v2    # "actuallyRead":I
    goto :goto_0
.end method
