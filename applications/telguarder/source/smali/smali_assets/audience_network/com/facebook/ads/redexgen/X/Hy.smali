.class public final Lcom/facebook/ads/redexgen/X/Hy;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AtomicFileOutputStream"
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Ljava/io/FileOutputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hy;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hy;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 37258
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 37259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hy;->A00:Z

    .line 37260
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hy;->A01:Ljava/io/FileOutputStream;

    .line 37261
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hy;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sub-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hy;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hy;->A03:[Ljava/lang/String;

    const-string v1, "MErZC4RVJM2Seox81GzFhr9exc8dX1ok"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x19

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hy;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x74t
        -0x41t
        -0x46t
        -0x48t
        -0x4ct
        -0x52t
        -0x6ft
        -0x4ct
        -0x49t
        -0x50t
        0x64t
        0x7ft
        -0x79t
        -0x76t
        -0x7dt
        -0x7et
        0x3et
        -0x6et
        -0x73t
        0x3et
        -0x6ft
        -0x69t
        -0x74t
        -0x7ft
        0x3et
        -0x7ct
        -0x79t
        -0x76t
        -0x7dt
        0x3et
        -0x7et
        -0x7dt
        -0x6ft
        -0x7ft
        -0x70t
        -0x79t
        -0x72t
        -0x6et
        -0x73t
        -0x70t
        0x58t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XlOiA9y5NCSwRvKcTqsRgr5o52h6xZqO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YZyWe6DVkh3Lrl7iM8jhqIF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HVGruL9ipGxg8e46GAkhGwMIwHTJnYWm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "05YHz3A7hzUsXws6HVesljlPJ2HBn6lF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hIJU4u2AMi7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OafGNRwT5HOAwDqt7Nc45z0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AJJaFpsaDucRIUyxPMJJdmPhIaowQBLA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KGGo163cIwLqeZ6V8Vk5bnT2LcL4ifgI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hy;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37262
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hy;->A00:Z

    if-eqz v0, :cond_0

    .line 37263
    return-void

    .line 37264
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hy;->A00:Z

    .line 37265
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hy;->flush()V

    .line 37266
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hy;->A01:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37267
    :catch_0
    move-exception v4

    .line 37268
    .local p0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hy;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa

    const/16 v1, 0x1f

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hy;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37269
    .end local p0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hy;->A01:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 37270
    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hy;->A01:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 37272
    return-void
.end method

.method public final write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hy;->A01:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 37274
    return-void
.end method

.method public final write([B)V
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hy;->A01:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 37276
    return-void
.end method

.method public final write([BII)V
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hy;->A01:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 37278
    return-void
.end method
