.class public final Lcom/facebook/ads/redexgen/X/bS;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/bS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bS;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bS;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/bS;",
            ">;)V"
        }
    .end annotation

    .line 69885
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Hd;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/RawResourceDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69886
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A05:Landroid/content/res/Resources;

    .line 69887
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bS;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    .line 69888
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bS;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6c

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/bS;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x46t
        0x71t
        0x67t
        0x7bt
        0x61t
        0x66t
        0x77t
        0x71t
        0x34t
        0x7dt
        0x70t
        0x71t
        0x7at
        0x60t
        0x7dt
        0x72t
        0x7dt
        0x71t
        0x66t
        0x34t
        0x79t
        0x61t
        0x67t
        0x60t
        0x34t
        0x76t
        0x71t
        0x34t
        0x75t
        0x7at
        0x34t
        0x7dt
        0x7at
        0x60t
        0x71t
        0x73t
        0x71t
        0x66t
        0x3at
        0x7t
        0x0t
        0x1bt
        0x72t
        0x3ft
        0x27t
        0x21t
        0x26t
        0x72t
        0x27t
        0x21t
        0x37t
        0x72t
        0x21t
        0x31t
        0x3at
        0x37t
        0x3ft
        0x37t
        0x72t
        0x20t
        0x33t
        0x25t
        0x20t
        0x37t
        0x21t
        0x3dt
        0x27t
        0x20t
        0x31t
        0x37t
        0x75t
        0x66t
        0x70t
        0x75t
        0x62t
        0x74t
        0x68t
        0x72t
        0x75t
        0x64t
        0x62t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bSKnstrcEyUtH2EUzSuh7p"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TJp7broMG9ALkddxCeG8bg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OUGN6fd13DTUK57USEtQiA6N8BMR4vG7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MPCQ8AeafYWdEx3u0S1dfC5VpPwXU5er"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "I2tJ7ud2NszgocKkHkmClXbQ6vlHE0Sp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WRhnMtRu3VoUyGpCORxDhLZcb6GbN7Pt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ionJv1BxfCrQS8AxzLJ8Tcnsr6gm7Nx1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YblFDiTYESfr8ZIRtB8BAyjauKLHc0qm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bS;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7R()Landroid/net/Uri;
    .locals 1

    .line 69889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A02:Landroid/net/Uri;

    return-object v0
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/HM;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hc;
        }
    .end annotation

    .line 69890
    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A02:Landroid/net/Uri;

    .line 69891
    const/16 v2, 0x46

    const/16 v1, 0xb

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bS;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A02:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69892
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A02:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69893
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A05:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 69894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A03:Ljava/io/InputStream;

    .line 69895
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bS;->A03:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 69896
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bS;->A03:Ljava/io/InputStream;

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 69897
    .local p1, "skipped":J
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    cmp-long v3, v4, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/bS;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 69898
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69899
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/bS;->A08:[Ljava/lang/String;

    const-string v1, "iO76s31fXqFvOM0OYTRIEsGTJvkob6S9"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ltz v3, :cond_6

    .line 69900
    :try_start_3
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const-wide/16 v4, -0x1

    sget-object v6, Lcom/facebook/ads/redexgen/X/bS;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v3, v6, v0

    const/4 v0, 0x4

    aget-object v6, v6, v0

    const/16 v0, 0x1d

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_1

    cmp-long v0, v1, v4

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/facebook/ads/redexgen/X/bS;->A08:[Ljava/lang/String;

    const-string v3, "iYapuwNl9CT51kyy49oka54a80smISGR"

    const/4 v0, 0x6

    aput-object v3, v6, v0

    cmp-long v0, v1, v4

    if-eqz v0, :cond_2

    .line 69901
    :goto_0
    :try_start_4
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:J

    goto :goto_2

    .line 69902
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    .line 69903
    .local v2, "assetFileDescriptorLength":J
    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 69904
    :goto_1
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:J

    goto :goto_2

    :cond_3
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    sub-long v4, v2, v0

    goto :goto_1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 69905
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/bS;
    .end local p1    # "skipped":J
    .end local v2    # "assetFileDescriptorLength":J
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A04:Z

    .line 69906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_4

    .line 69907
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hd;->ABs(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/HM;)V

    .line 69908
    :cond_4
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/bS;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/bS;->A08:[Ljava/lang/String;

    const-string v1, "n5p9WsPQY6g4RIkYg3MxwUQx7y8GGMEo"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "FE0x6EHBGO2WzlvUTu5UgpGPG3v39OZa"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-wide v3

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/bS;->A08:[Ljava/lang/String;

    const-string v1, "iRGOweuny9HsI73YGVQjG7u65oKi1WBQ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-wide v3

    .line 69909
    .restart local p0    # "this":Lcom/facebook/ads/redexgen/X/bS;
    .restart local p1    # "skipped":J
    :cond_6
    :try_start_5
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .end local v0
    throw v0

    .line 69910
    :catch_0
    const/4 v2, 0x0

    const/16 v1, 0x27

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bS;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/lang/String;)V

    .end local v0
    throw v0

    .line 69911
    :cond_7
    const/16 v2, 0x27

    const/16 v1, 0x1f

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bS;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/lang/String;)V

    .end local v0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 69912
    .restart local v0
    :catch_1
    move-exception v1

    .line 69913
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hc;
        }
    .end annotation

    .line 69914
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/bS;->A02:Landroid/net/Uri;

    .line 69915
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A03:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 69916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A03:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69917
    :cond_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/bS;->A03:Ljava/io/InputStream;

    .line 69918
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    .line 69919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69920
    :cond_1
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/bS;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 69921
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A04:Z

    if-eqz v0, :cond_2

    .line 69922
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/bS;->A04:Z

    .line 69923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_2

    .line 69924
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 69925
    :cond_2
    return-void

    .line 69926
    :catch_0
    move-exception v1

    .line 69927
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69928
    :catchall_0
    move-exception v1

    .end local v2    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/bS;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 69929
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A04:Z

    if-eqz v0, :cond_3

    .line 69930
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/bS;->A04:Z

    .line 69931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_3

    .line 69932
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 69933
    :cond_3
    throw v1

    .line 69934
    :catch_1
    move-exception v1

    .line 69935
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69936
    :catchall_1
    move-exception v1

    .end local v2    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/bS;->A03:Ljava/io/InputStream;

    .line 69937
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_4

    .line 69938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 69939
    :cond_4
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/bS;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 69940
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A04:Z

    if-eqz v0, :cond_5

    .line 69941
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/bS;->A04:Z

    .line 69942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_5

    .line 69943
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 69944
    :cond_5
    throw v1

    .line 69945
    :catch_2
    move-exception v1

    .line 69946
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 69947
    :catchall_2
    move-exception v1

    .end local v2    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/bS;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 69948
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A04:Z

    if-eqz v0, :cond_6

    .line 69949
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/bS;->A04:Z

    .line 69950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_6

    .line 69951
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 69952
    :cond_6
    throw v1
.end method

.method public final read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hc;
        }
    .end annotation

    .line 69953
    if-nez p3, :cond_0

    .line 69954
    const/4 v0, 0x0

    return v0

    .line 69955
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:J

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 69956
    return v5

    .line 69957
    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v2, v0, v6

    if-nez v2, :cond_2

    goto :goto_0

    .line 69958
    :cond_2
    int-to-long v2, p3

    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 69959
    .local p0, "bytesToRead":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A03:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 69960
    .local p0, "bytesRead":I
    if-ne v4, v5, :cond_4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69961
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:J

    cmp-long v0, v1, v6

    if-nez v0, :cond_3

    .line 69962
    return v5

    .line 69963
    :cond_3
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 69964
    :cond_4
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_5

    .line 69965
    int-to-long v0, v4

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:J

    .line 69966
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bS;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_6

    .line 69967
    invoke-interface {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/Hd;->A9f(Ljava/lang/Object;I)V

    .line 69968
    :cond_6
    return v4

    .line 69969
    .end local p0    # "bytesRead":I
    :catch_0
    move-exception v1

    .line 69970
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
