.class public final Lcom/facebook/ads/redexgen/X/L5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/L4;
    }
.end annotation


# static fields
.field public static A00:I

.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static volatile A03:Lcom/facebook/ads/redexgen/X/L4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 42173
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L5;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/L5;->A07()V

    const/4 v0, -0x1

    sput v0, Lcom/facebook/ads/redexgen/X/L5;->A00:I

    .line 42174
    sget-object v0, Lcom/facebook/ads/redexgen/X/L4;->A04:Lcom/facebook/ads/redexgen/X/L4;

    sput-object v0, Lcom/facebook/ads/redexgen/X/L5;->A03:Lcom/facebook/ads/redexgen/X/L4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00(I)I
    .locals 0

    .line 42176
    sput p0, Lcom/facebook/ads/redexgen/X/L5;->A00:I

    return p0
.end method

.method public static A01(Landroid/content/Context;)I
    .locals 2

    .line 42177
    sget-object v1, Lcom/facebook/ads/redexgen/X/L5;->A03:Lcom/facebook/ads/redexgen/X/L4;

    sget-object v0, Lcom/facebook/ads/redexgen/X/L4;->A04:Lcom/facebook/ads/redexgen/X/L4;

    if-ne v1, v0, :cond_0

    .line 42178
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L5;->A09(Landroid/content/Context;)V

    .line 42179
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/L5;->A00:I

    return v0
.end method

.method public static A02(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 42180
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L5;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 42181
    .local p0, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L5;->A05(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42182
    .end local p0    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static A03(Landroid/content/Context;)I
    .locals 3

    .line 42183
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 42184
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 42185
    return v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42186
    :catch_0
    return v2
.end method

.method public static synthetic A04(Landroid/content/Context;)I
    .locals 0

    .line 42187
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L5;->A03(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static A05(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 42188
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    .line 42189
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x20

    const/16 v1, 0x8

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L5;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42190
    const/4 v4, 0x0

    .local p0, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 42191
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x13

    const/16 v1, 0xd

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L5;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42192
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/L5;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/L5;->A02:[Ljava/lang/String;

    const-string v1, "E9WdjcV1cB"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 42193
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42194
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/L5;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x28

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/L5;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x7et
        -0x55t
        -0x5ft
        -0x51t
        -0x54t
        -0x5at
        -0x5ft
        -0x76t
        -0x62t
        -0x55t
        -0x5at
        -0x5dt
        -0x5et
        -0x50t
        -0x4ft
        0x6bt
        -0x4bt
        -0x56t
        -0x57t
        -0x11t
        -0x15t
        -0x10t
        -0x2bt
        -0x1at
        -0x13t
        -0x28t
        -0x19t
        -0xct
        -0xbt
        -0x15t
        -0xft
        -0x10t
        -0x4ct
        -0x4et
        -0x5ct
        -0x4et
        0x6ct
        -0x4et
        -0x5dt
        -0x56t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "u9Ssvniz27TlV85K0pYswnvngpWD7UTv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yLtbvA2Xz23YXdIWqrcyb7jywu5SSFGZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "scrB43nD9W"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wsEo4KD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NKrjwyp9F68gvgrQJDNYzVT8tQP7WanP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VznZXKKoMO4DiuN4LwEwkvbHVlMTJ38P"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0a9nN5zxgtKrFfFA5lDM9YM14l5DBDtv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nZC8h8R09gEqYECwHp8yIoQ586Dae6j4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/L5;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static A09(Landroid/content/Context;)V
    .locals 1

    .line 42195
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L5;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42196
    return-void

    .line 42197
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L5;->A0A(Landroid/content/Context;)V

    .line 42198
    return-void
.end method

.method public static A0A(Landroid/content/Context;)V
    .locals 2

    .line 42199
    sget-object v1, Lcom/facebook/ads/redexgen/X/L5;->A03:Lcom/facebook/ads/redexgen/X/L4;

    sget-object v0, Lcom/facebook/ads/redexgen/X/L4;->A04:Lcom/facebook/ads/redexgen/X/L4;

    if-eq v1, v0, :cond_0

    .line 42200
    return-void

    .line 42201
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/L4;->A03:Lcom/facebook/ads/redexgen/X/L4;

    sput-object v0, Lcom/facebook/ads/redexgen/X/L5;->A03:Lcom/facebook/ads/redexgen/X/L4;

    .line 42202
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/So;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/So;-><init>(Landroid/content/Context;)V

    .line 42203
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 42204
    return-void
.end method

.method public static A0B()Z
    .locals 2

    .line 42205
    sget-object v1, Lcom/facebook/ads/redexgen/X/L5;->A03:Lcom/facebook/ads/redexgen/X/L4;

    sget-object v0, Lcom/facebook/ads/redexgen/X/L4;->A02:Lcom/facebook/ads/redexgen/X/L4;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
