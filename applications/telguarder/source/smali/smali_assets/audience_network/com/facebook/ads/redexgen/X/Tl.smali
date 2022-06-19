.class public final Lcom/facebook/ads/redexgen/X/Tl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Hc;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/content/res/AssetFileDescriptor;

.field public A02:Landroid/net/Uri;

.field public A03:Ljava/io/InputStream;

.field public A04:Z

.field public final A05:Landroid/content/res/Resources;

.field public final A06:Lcom/facebook/ads/redexgen/X/Hd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Tl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tl;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tl;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/Hd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Tl;",
            ">;)V"
        }
    .end annotation

    .line 55260
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Hd;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/RawResourceDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A05:Landroid/content/res/Resources;

    .line 55262
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tl;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    .line 55263
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tl;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x51

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tl;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x5ct
        -0x49t
        -0x3bt
        -0x3ft
        -0x39t
        -0x3ct
        -0x4bt
        -0x49t
        0x72t
        -0x45t
        -0x4at
        -0x49t
        -0x40t
        -0x3at
        -0x45t
        -0x48t
        -0x45t
        -0x49t
        -0x3ct
        0x72t
        -0x41t
        -0x39t
        -0x3bt
        -0x3at
        0x72t
        -0x4ct
        -0x49t
        0x72t
        -0x4dt
        -0x40t
        0x72t
        -0x45t
        -0x40t
        -0x3at
        -0x49t
        -0x47t
        -0x49t
        -0x3ct
        -0x80t
        0x72t
        0x6ft
        0x66t
        0x3dt
        -0x76t
        -0x6et
        -0x70t
        -0x6ft
        0x3dt
        -0x6et
        -0x70t
        -0x7et
        0x3dt
        -0x70t
        -0x80t
        -0x7bt
        -0x7et
        -0x76t
        -0x7et
        0x3dt
        -0x71t
        0x7et
        -0x6ct
        -0x71t
        -0x7et
        -0x70t
        -0x74t
        -0x6et
        -0x71t
        -0x80t
        -0x7et
        -0x67t
        -0x78t
        -0x62t
        -0x67t
        -0x74t
        -0x66t
        -0x6at
        -0x64t
        -0x67t
        -0x76t
        -0x74t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rPBylRs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XkcejRrnnHSWfMOnt24F7i84Q5X8YzXV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cgi8MF2K2LhZu9UnUG8v7KSpZEU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DFzX9Pa73L5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Z9E35yqG5LwttzVx"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "cDtrFmh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RZZX3svp48fiJCwkLCtHO4aBerBo9lRz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dpnDlK56DqI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tl;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7T()Landroid/net/Uri;
    .locals 1

    .line 55264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A02:Landroid/net/Uri;

    return-object v0
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/HM;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hc;
        }
    .end annotation

    .line 55265
    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A02:Landroid/net/Uri;

    .line 55266
    const/16 v2, 0x46

    const/16 v1, 0xb

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tl;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A02:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55267
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A02:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55268
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A05:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 55269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A03:Ljava/io/InputStream;

    .line 55270
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Tl;->A03:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 55271
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Tl;->A03:Ljava/io/InputStream;

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 55272
    .local p1, "skipped":J
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_4

    .line 55273
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v4, -0x1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Tl;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x12

    if-eq v3, v0, :cond_3

    sget-object v6, Lcom/facebook/ads/redexgen/X/Tl;->A08:[Ljava/lang/String;

    const-string v3, "Y3wXRgWQQE7BJjGcadhc6oeXZ"

    const/4 v0, 0x4

    aput-object v3, v6, v0

    cmp-long v0, v1, v4

    if-eqz v0, :cond_0

    .line 55274
    :try_start_3
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A00:J

    goto :goto_1

    .line 55275
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    .line 55276
    .local v2, "assetFileDescriptorLength":J
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 55277
    :goto_0
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/Tl;->A00:J

    goto :goto_1

    :cond_1
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    sub-long v4, v2, v0

    goto :goto_0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 55278
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Tl;
    .end local p1    # "skipped":J
    .end local v2    # "assetFileDescriptorLength":J
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A04:Z

    .line 55279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_2

    .line 55280
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hd;->ABs(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/HM;)V

    .line 55281
    :cond_2
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A00:J

    return-wide v0

    .line 55282
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55283
    .restart local p0    # "this":Lcom/facebook/ads/redexgen/X/Tl;
    .restart local p1    # "skipped":J
    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .end local v0
    throw v0

    .line 55284
    :catch_0
    const/4 v2, 0x0

    const/16 v1, 0x27

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tl;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/lang/String;)V

    .end local v0
    throw v0

    .line 55285
    :cond_5
    const/16 v2, 0x27

    const/16 v1, 0x1f

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tl;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/lang/String;)V

    .end local v0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 55286
    .restart local v0
    :catch_1
    move-exception v1

    .line 55287
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hc;
        }
    .end annotation

    .line 55288
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Tl;->A02:Landroid/net/Uri;

    .line 55289
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A03:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 55290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A03:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55291
    :cond_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Tl;->A03:Ljava/io/InputStream;

    .line 55292
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    .line 55293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55294
    :cond_1
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 55295
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A04:Z

    if-eqz v0, :cond_2

    .line 55296
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Tl;->A04:Z

    .line 55297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_2

    .line 55298
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 55299
    :cond_2
    return-void

    .line 55300
    :catch_0
    move-exception v1

    .line 55301
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55302
    :catchall_0
    move-exception v1

    .end local v2    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 55303
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A04:Z

    if-eqz v0, :cond_3

    .line 55304
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Tl;->A04:Z

    .line 55305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_3

    .line 55306
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 55307
    :cond_3
    throw v1

    .line 55308
    :catch_1
    move-exception v1

    .line 55309
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55310
    :catchall_1
    move-exception v4

    .end local v2    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Tl;->A03:Ljava/io/InputStream;

    .line 55311
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_4

    .line 55312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 55313
    :cond_4
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 55314
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A04:Z

    if-eqz v0, :cond_5

    .line 55315
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Tl;->A04:Z

    .line 55316
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Tl;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tl;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tl;->A08:[Ljava/lang/String;

    const-string v1, "L3Qn3PjRbDD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 55317
    invoke-interface {v3, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 55318
    :cond_5
    throw v4

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55319
    :catch_2
    move-exception v1

    .line 55320
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 55321
    :catchall_2
    move-exception v1

    .end local v2    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 55322
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A04:Z

    if-eqz v0, :cond_7

    .line 55323
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Tl;->A04:Z

    .line 55324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_7

    .line 55325
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 55326
    :cond_7
    throw v1
.end method

.method public final read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hc;
        }
    .end annotation

    .line 55327
    if-nez p3, :cond_0

    .line 55328
    const/4 v0, 0x0

    return v0

    .line 55329
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A00:J

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 55330
    return v5

    .line 55331
    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v2, v0, v6

    if-nez v2, :cond_2

    goto :goto_0

    .line 55332
    :cond_2
    int-to-long v2, p3

    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 55333
    .local p0, "bytesToRead":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A03:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 55334
    .local p0, "bytesRead":I
    if-ne v4, v5, :cond_4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55335
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Tl;->A00:J

    cmp-long v0, v1, v6

    if-nez v0, :cond_3

    .line 55336
    return v5

    .line 55337
    :cond_3
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 55338
    :cond_4
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Tl;->A00:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_5

    .line 55339
    int-to-long v0, v4

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Tl;->A00:J

    .line 55340
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_6

    .line 55341
    invoke-interface {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/Hd;->A9e(Ljava/lang/Object;I)V

    .line 55342
    :cond_6
    return v4

    .line 55343
    .end local p0    # "bytesRead":I
    :catch_0
    move-exception v1

    .line 55344
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
