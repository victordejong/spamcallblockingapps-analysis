.class public final Lcom/facebook/ads/redexgen/X/U2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/HE;
    }
.end annotation


# static fields
.field public static A07:[B


# instance fields
.field public A00:J

.field public A01:Landroid/content/res/AssetFileDescriptor;

.field public A02:Landroid/net/Uri;

.field public A03:Ljava/io/FileInputStream;

.field public A04:Z

.field public final A05:Landroid/content/ContentResolver;

.field public final A06:Lcom/facebook/ads/redexgen/X/Hd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/U2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/U2;->A01()V

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
            "Lcom/facebook/ads/redexgen/X/U2;",
            ">;)V"
        }
    .end annotation

    .line 55680
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Hd;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/ContentDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55681
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A05:Landroid/content/ContentResolver;

    .line 55682
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/U2;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    .line 55683
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/U2;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x34

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

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/U2;->A07:[B

    return-void

    :array_0
    .array-data 1
        0xat
        0x26t
        0x3ct
        0x25t
        0x2dt
        0x69t
        0x27t
        0x26t
        0x3dt
        0x69t
        0x26t
        0x39t
        0x2ct
        0x27t
        0x69t
        0x2ft
        0x20t
        0x25t
        0x2ct
        0x69t
        0x2dt
        0x2ct
        0x3at
        0x2at
        0x3bt
        0x20t
        0x39t
        0x3dt
        0x26t
        0x3bt
        0x69t
        0x2ft
        0x26t
        0x3bt
        0x73t
        0x69t
        0x27t
    .end array-data
.end method


# virtual methods
.method public final A7T()Landroid/net/Uri;
    .locals 1

    .line 55684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A02:Landroid/net/Uri;

    return-object v0
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/HM;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/HE;
        }
    .end annotation

    .line 55685
    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A02:Landroid/net/Uri;

    .line 55686
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/U2;->A05:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/U2;->A02:Landroid/net/Uri;

    const/16 v2, 0x24

    const/4 v1, 0x1

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U2;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 55687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_5

    .line 55688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A03:Ljava/io/FileInputStream;

    .line 55689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    .line 55690
    .local p0, "assetStartOffset":J
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/U2;->A03:Ljava/io/FileInputStream;

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 55691
    .local v0, "skipped":J
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_4

    .line 55692
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 55693
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A00:J

    goto :goto_1

    .line 55694
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    .line 55695
    .local v3, "assetFileDescriptorLength":J
    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    .line 55696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A03:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 55697
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    .line 55698
    .local v0, "channelSize":J
    const-wide/16 v1, 0x0

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    :goto_0
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/U2;->A00:J

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    sub-long v3, v5, v0

    goto :goto_0

    .line 55699
    :cond_2
    sub-long/2addr v1, v5

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/U2;->A00:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55700
    .end local p0    # "assetStartOffset":J
    .end local v0    # "channelSize":J
    .end local v3    # "assetFileDescriptorLength":J
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A04:Z

    .line 55701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_3

    .line 55702
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hd;->ABs(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/HM;)V

    .line 55703
    :cond_3
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A00:J

    return-wide v0

    .line 55704
    .restart local p0    # "assetStartOffset":J
    .restart local v0    # "channelSize":J
    :cond_4
    :try_start_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .end local v3
    throw v0

    .line 55705
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x24

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U2;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A02:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v3
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55706
    .restart local v3    # "assetFileDescriptorLength":J
    :catch_0
    move-exception v1

    .line 55707
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/HE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HE;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/HE;
        }
    .end annotation

    .line 55708
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/U2;->A02:Landroid/net/Uri;

    .line 55709
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A03:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 55710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A03:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55711
    :cond_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/U2;->A03:Ljava/io/FileInputStream;

    .line 55712
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    .line 55713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55714
    :cond_1
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 55715
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A04:Z

    if-eqz v0, :cond_2

    .line 55716
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/U2;->A04:Z

    .line 55717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_2

    .line 55718
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 55719
    :cond_2
    return-void

    .line 55720
    :catch_0
    move-exception v1

    .line 55721
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/HE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HE;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55722
    :catchall_0
    move-exception v1

    .end local v2    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 55723
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A04:Z

    if-eqz v0, :cond_3

    .line 55724
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/U2;->A04:Z

    .line 55725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_3

    .line 55726
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 55727
    :cond_3
    throw v1

    .line 55728
    :catch_1
    move-exception v1

    .line 55729
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/HE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HE;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55730
    :catchall_1
    move-exception v1

    .end local v2    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/U2;->A03:Ljava/io/FileInputStream;

    .line 55731
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_4

    .line 55732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 55733
    :cond_4
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 55734
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A04:Z

    if-eqz v0, :cond_5

    .line 55735
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/U2;->A04:Z

    .line 55736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_5

    .line 55737
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 55738
    :cond_5
    throw v1

    .line 55739
    :catch_2
    move-exception v1

    .line 55740
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/HE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HE;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 55741
    :catchall_2
    move-exception v1

    .end local v2    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 55742
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A04:Z

    if-eqz v0, :cond_6

    .line 55743
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/U2;->A04:Z

    .line 55744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_6

    .line 55745
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 55746
    :cond_6
    throw v1
.end method

.method public final read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/HE;
        }
    .end annotation

    .line 55747
    if-nez p3, :cond_0

    .line 55748
    const/4 v0, 0x0

    return v0

    .line 55749
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A00:J

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 55750
    return v5

    .line 55751
    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v2, v0, v6

    if-nez v2, :cond_2

    goto :goto_0

    .line 55752
    :cond_2
    int-to-long v2, p3

    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 55753
    .local p0, "bytesToRead":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A03:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 55754
    .local p0, "bytesRead":I
    if-ne v4, v5, :cond_4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55755
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/U2;->A00:J

    cmp-long v0, v1, v6

    if-nez v0, :cond_3

    .line 55756
    return v5

    .line 55757
    :cond_3
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/HE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HE;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 55758
    :cond_4
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/U2;->A00:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_5

    .line 55759
    int-to-long v0, v4

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/U2;->A00:J

    .line 55760
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_6

    .line 55761
    invoke-interface {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/Hd;->A9e(Ljava/lang/Object;I)V

    .line 55762
    :cond_6
    return v4

    .line 55763
    .end local p0    # "bytesRead":I
    :catch_0
    move-exception v1

    .line 55764
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/HE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HE;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
