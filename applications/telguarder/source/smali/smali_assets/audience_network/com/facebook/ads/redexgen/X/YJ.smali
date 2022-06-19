.class public final Lcom/facebook/ads/redexgen/X/YJ;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/YK;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 65720
    invoke-static {}, Lcom/facebook/ads/redexgen/X/YJ;->A0A()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YJ;->A09()V

    const-class v0, Lcom/facebook/ads/redexgen/X/YJ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YJ;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 0

    .line 65721
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 65722
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/YJ;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 0

    .line 65723
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YJ;->A02(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object p0

    return-object p0
.end method

.method private A02(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Nullable Dereference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/YK;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6t;"
        }
    .end annotation

    .line 65724
    .local v4, "streamFileInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/FileInfoSignalCollector$FileInfo;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wv;

    .line 65725
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 65726
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v3

    sget-object v5, Lcom/facebook/ads/redexgen/X/6s;->A0D:Lcom/facebook/ads/redexgen/X/6s;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Wv;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/util/HashMap;Lcom/facebook/ads/redexgen/X/6s;)V

    .line 65727
    return-object v0
.end method

.method public static A03(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException",
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65728
    const/4 v5, 0x0

    .line 65729
    .local p0, "file":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 65730
    .local v5, "filePath":Ljava/lang/String;
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 65731
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 65732
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65733
    :catch_0
    move-exception v4

    .line 65734
    .local v5, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/YJ;->A02:Ljava/lang/String;

    const/16 v2, 0xe

    const/16 v1, 0x1a

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 65735
    :goto_0
    move-object v5, v0

    .line 65736
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v5
    :goto_1
    return-object v5
.end method

.method public static synthetic A04(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 65737
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YJ;->A03(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/YJ;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x30

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 65738
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v0, 0x35cb1913

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 65739
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65740
    :cond_1
    const/4 v2, 0x6

    const/16 v1, 0x8

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 65741
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A07(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .line 65742
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 65743
    .local p0, "regex":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 65744
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 65745
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 65746
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/YJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/YJ;->A01:[Ljava/lang/String;

    const-string v1, "vanO7Cbb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 65747
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 65748
    .local v0, "matchedPattern":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YJ;->A06(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65749
    .local v5, "replacement":Ljava/lang/String;
    invoke-virtual {v4, v5, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 65750
    .end local v0    # "matchedPattern":Ljava/lang/String;
    .end local v5    # "replacement":Ljava/lang/String;
    goto :goto_0

    .line 65751
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 65752
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65753
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 65754
    goto :goto_1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65755
    :catch_0
    move-exception v4

    .line 65756
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/YJ;->A02:Ljava/lang/String;

    const/16 v2, 0x28

    const/16 v1, 0x12

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65757
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-object v5
.end method

.method public static synthetic A08(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65758
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YJ;->A07(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YJ;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x72t
        0x64t
        0x60t
        0x75t
        -0x6et
        0x74t
        -0x37t
        -0x2et
        -0x1bt
        -0x1ft
        -0x14t
        -0x20t
        -0x2ft
        -0x35t
        -0x14t
        0x19t
        0x19t
        0x16t
        0x19t
        -0x39t
        0x9t
        0x1ct
        0x10t
        0x13t
        0xbt
        0x10t
        0x15t
        0xet
        -0x39t
        0xdt
        0x10t
        0x13t
        0xct
        -0x39t
        -0xat
        0x9t
        0x11t
        0xct
        0xat
        0x1bt
        -0x24t
        -0x13t
        -0x2t
        -0x1t
        -0xft
        -0x54t
        -0x2ft
        -0x6t
        0x2t
        -0x54t
        -0x1et
        -0x13t
        -0x2t
        -0xbt
        -0x13t
        -0x12t
        -0x8t
        -0xft
    .end array-data
.end method

.method public static A0A()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XDMWBxbM3xr739Jat5NpJLSTZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "E9BlHhF0K6ourw7o0L4DV2yLyHSeOGX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CkhZTPGOqNVmu5YOuwTbra4PQKtP77Y4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RDCu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kto1O"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rfjZMISbV0qfbEUqVMps3uCKhVynsfii"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CTyrF9bXcPWAvyitgV9WofenfV00ZWg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "yvljr0I9bU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YJ;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0H(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/6d;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6e;"
        }
    .end annotation

    .line 65759
    .local v0, "bundledSignalMetadataList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/BundledSignalMetadata;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/YL;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/YL;-><init>(Lcom/facebook/ads/redexgen/X/YJ;Ljava/util/List;)V

    .line 65760
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method
