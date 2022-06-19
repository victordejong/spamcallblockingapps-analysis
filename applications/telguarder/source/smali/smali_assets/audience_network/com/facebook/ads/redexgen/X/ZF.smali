.class public final Lcom/facebook/ads/redexgen/X/ZF;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ZG;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/media/AudioManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZF;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZF;->A05()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 3

    .line 66176
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 66177
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A00:Landroid/media/AudioManager;

    .line 66178
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/ZF;)Landroid/media/AudioManager;
    .locals 0

    .line 66179
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A00:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/ZF;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 0

    .line 66180
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZF;->A03(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object p0

    return-object p0
.end method

.method private A03(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;
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
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/ZG;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6t;"
        }
    .end annotation

    .line 66181
    .local v4, "streamVolumeResultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/AudioManagerSignalCollector$AudioStreamVolume;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wv;

    .line 66182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 66183
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v3

    sget-object v5, Lcom/facebook/ads/redexgen/X/6s;->A07:Lcom/facebook/ads/redexgen/X/6s;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Wv;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/util/HashMap;Lcom/facebook/ads/redexgen/X/6s;)V

    .line 66184
    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZF;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZF;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZF;->A02:[Ljava/lang/String;

    const-string v1, "bZ8WxQTk9JPKX78l193B1dLg4yw3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6c

    int-to-byte v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZF;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZF;->A02:[Ljava/lang/String;

    const-string v1, "L6R0Fp8i0o6QY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

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

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZF;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x26t
        0x32t
        0x23t
        0x2et
        0x28t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uqi3C8mcF0R22"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "tJXshGF0rEIoBlTyRX8vXh5t7Kem0c07"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "85d9spwt2cNVQeQ3fHQNvWS7skvIBaqH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kTEVtISZdAWj77r3S8fzjyNu6LhsrekS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Cv8efrrUuGbjs3ZamTX4oTmcuQoDmlQa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EFYKQ2l05DCWjTMNRxHsBSxS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C7Cb81HCZKPGkB7VVgFIjVfILwET"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tO8stW5toW6Av8fgWVhNhfJMlW5VSmUa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZF;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66185
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZI;-><init>(Lcom/facebook/ads/redexgen/X/ZF;)V

    .line 66186
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66187
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZL;-><init>(Lcom/facebook/ads/redexgen/X/ZF;)V

    .line 66188
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66189
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZK;-><init>(Lcom/facebook/ads/redexgen/X/ZF;)V

    .line 66190
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66191
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZJ;-><init>(Lcom/facebook/ads/redexgen/X/ZF;)V

    .line 66192
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0L(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6e;
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

    .line 66193
    .local v0, "bundledSignalMetadataList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/BundledSignalMetadata;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZH;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/ZH;-><init>(Lcom/facebook/ads/redexgen/X/ZF;Ljava/util/List;)V

    .line 66194
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method
