.class public final Lcom/facebook/ads/redexgen/X/ca;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/03<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static A06:[B


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Ljava/lang/String;

.field public final A03:Z

.field public final A04:Z

.field public final A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ca;->A02()V

    return-void
.end method

.method public constructor <init>(IIZZZ)V
    .locals 1

    .line 72127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72128
    const-class v0, Lcom/facebook/ads/redexgen/X/ca;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A02:Ljava/lang/String;

    .line 72129
    iput p1, p0, Lcom/facebook/ads/redexgen/X/ca;->A01:I

    .line 72130
    iput p2, p0, Lcom/facebook/ads/redexgen/X/ca;->A00:I

    .line 72131
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/ca;->A05:Z

    .line 72132
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/ca;->A03:Z

    .line 72133
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/ca;->A04:Z

    .line 72134
    return-void
.end method

.method public static A00(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/02;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/ads/redexgen/X/02<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 72135
    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/02;

    invoke-direct {v0, v2, v1, p0}, Lcom/facebook/ads/redexgen/X/02;-><init>(ZLjava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ca;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ca;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x6et
        -0x28t
        -0x2ft
        -0x2ct
        0x3t
        0x2at
        0x35t
        0x2et
        0x22t
        0x31t
        -0x1ft
        0x2at
        0x34t
        -0x1ft
        0x2ft
        0x36t
        0x2dt
        0x2dt
        -0x37t
        -0x4t
        -0x19t
        -0x17t
        -0xct
        -0x8t
        -0x13t
        -0xdt
        -0xet
        -0x5ct
        -0x18t
        -0x7t
        -0xat
        -0x13t
        -0xet
        -0x15t
        -0x5ct
        -0x16t
        -0x13t
        -0x10t
        -0x17t
        -0x5ct
        -0x19t
        -0xdt
        -0xft
        -0xct
        -0xat
        -0x17t
        -0x9t
        -0x9t
        -0x13t
        -0xdt
        -0xet
    .end array-data
.end method

.method private A03(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72136
    if-nez p2, :cond_0

    .line 72137
    return-void

    .line 72138
    :cond_0
    const/4 v7, 0x0

    .line 72139
    .local p0, "compressedBitmapOS":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 72140
    .local p1, "tempFileOS":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 72141
    .local p2, "tempFileIS":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 72142
    .local v7, "updatedCacheFileOS":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v7, v0

    .line 72143
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p2, v1, v0, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 72144
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    .line 72145
    .local v6, "size":I
    const/high16 v0, 0x300000

    if-lt v1, v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72146
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/0M;->A08(Ljava/io/Closeable;)V

    .line 72147
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/0M;->A08(Ljava/io/Closeable;)V

    .line 72148
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/0M;->A08(Ljava/io/Closeable;)V

    .line 72149
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/0M;->A08(Ljava/io/Closeable;)V

    .line 72150
    return-void

    .line 72151
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ca;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72152
    .local v5, "tempFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72153
    .local v4, "tempFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 72154
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 72155
    invoke-virtual {v7, v6}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 72156
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 72157
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 72158
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    .line 72159
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 72160
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v0, "length":I
    if-lez v1, :cond_2

    .line 72161
    const/4 v0, 0x0

    invoke-virtual {v4, v2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 72162
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72163
    .end local v6    # "size":I
    .end local v5    # "tempFileName":Ljava/lang/String;
    .end local v4    # "tempFile":Ljava/io/File;
    .end local v0    # "length":I
    .end local v0
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/0M;->A08(Ljava/io/Closeable;)V

    .line 72164
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/0M;->A08(Ljava/io/Closeable;)V

    .line 72165
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/0M;->A08(Ljava/io/Closeable;)V

    .line 72166
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/0M;->A08(Ljava/io/Closeable;)V

    .line 72167
    return-void

    .line 72168
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/0M;->A08(Ljava/io/Closeable;)V

    .line 72169
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/0M;->A08(Ljava/io/Closeable;)V

    .line 72170
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/0M;->A08(Ljava/io/Closeable;)V

    .line 72171
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/0M;->A08(Ljava/io/Closeable;)V

    .line 72172
    throw v0
.end method


# virtual methods
.method public final A3A(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0L;)Lcom/facebook/ads/redexgen/X/02;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/facebook/ads/redexgen/X/0L;",
            ")",
            "Lcom/facebook/ads/redexgen/X/02<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 72173
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A04:Z

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 72174
    new-instance v0, Lcom/facebook/ads/redexgen/X/02;

    invoke-direct {v0, v4, v5}, Lcom/facebook/ads/redexgen/X/02;-><init>(ZLjava/lang/Object;)V

    return-object v0

    .line 72175
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/ca;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ca;->A00:I

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A05:Z

    .line 72176
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0M;->A03(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 72177
    .local p0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 72178
    new-instance v0, Lcom/facebook/ads/redexgen/X/02;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/02;-><init>(ZLjava/lang/Object;)V

    return-object v0

    .line 72179
    :cond_1
    const/4 v2, 0x4

    const/16 v1, 0xe

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ca;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cU;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/cU;-><init>(Ljava/lang/String;)V

    .line 72180
    .local p2, "bitmapIsNullException":Lcom/facebook/ads/redexgen/X/cU;
    invoke-interface {p2, v0}, Lcom/facebook/ads/redexgen/X/0L;->A8Q(Ljava/lang/Throwable;)V

    .line 72181
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/ca;->A00(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72182
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    .end local p2    # "bitmapIsNullException":Lcom/facebook/ads/redexgen/X/cU;
    :catchall_0
    move-exception v0

    .line 72183
    .local p0, "t":Ljava/lang/Throwable;
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 72184
    invoke-interface {p2, v0}, Lcom/facebook/ads/redexgen/X/0L;->A8Q(Ljava/lang/Throwable;)V

    .line 72185
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ca;->A00(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    return-object v0
.end method

.method public final A48(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0L;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/cU;
        }
    .end annotation

    .line 72186
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A03:Z

    if-eqz v0, :cond_1

    .line 72187
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/ca;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ca;->A00:I

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ca;->A05:Z

    .line 72188
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0M;->A03(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72189
    .local p0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 72190
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ca;->A03(Ljava/io/File;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 72191
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 72192
    const/4 v2, 0x4

    const/16 v1, 0xe

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ca;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cU;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/cU;-><init>(Ljava/lang/String;)V

    .end local v2
    .end local v1
    throw v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/cU; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72193
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2
    .restart local v1
    :catchall_0
    move-exception v3

    .line 72194
    .local p0, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v3}, Lcom/facebook/ads/redexgen/X/0L;->A8b(Ljava/lang/Throwable;)V

    .line 72195
    const/16 v2, 0x12

    const/16 v1, 0x21

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ca;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cU;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/cU;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 72196
    .end local p0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 72197
    .local p0, "e":Lcom/facebook/ads/redexgen/X/cU;
    invoke-interface {p2, v0}, Lcom/facebook/ads/redexgen/X/0L;->A8b(Ljava/lang/Throwable;)V

    .line 72198
    throw v0

    .line 72199
    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/cU;
    :cond_1
    :goto_0
    return-void
.end method
