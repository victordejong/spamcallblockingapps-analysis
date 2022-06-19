.class public final Lcom/facebook/ads/redexgen/X/YK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/YJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/6l<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YK;->A03()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65762
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YK;->A03:Ljava/io/File;

    .line 65763
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A01:J

    .line 65764
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    :cond_0
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YK;->A02:J

    .line 65765
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YK;->A00(Ljava/io/File;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:I

    .line 65766
    return-void

    .line 65767
    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public static A00(Ljava/io/File;)I
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65768
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65769
    .end local p0    # null:Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 65770
    :cond_1
    const/4 v1, 0x0

    .line 65771
    .local p0, "fileAttribute":I
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65772
    or-int/lit8 v1, v1, 0x1

    .line 65773
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65774
    or-int/lit8 v1, v1, 0x2

    .line 65775
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65776
    or-int/lit8 v1, v1, 0x4

    .line 65777
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65778
    or-int/lit8 v1, v1, 0x8

    .line 65779
    :cond_5
    return v1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/YK;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A02(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65780
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 65781
    .local p0, "jsonObject":Lorg/json/JSONObject;
    iget v3, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:I

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65782
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/YK;->A02:J

    const/4 v4, 0x3

    const/4 v3, 0x3

    const/16 v0, 0x2d

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/YK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65783
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/YK;->A01:J

    const/4 v4, 0x6

    const/4 v3, 0x3

    const/16 v0, 0x2d

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/YK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65784
    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65785
    return-object p2
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YK;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x5et
        0x4bt
        0x4bt
        0x5dt
        0x54t
        0x5ft
        0x5dt
        0x5ct
        0x45t
    .end array-data
.end method


# virtual methods
.method public final A82(Ljava/lang/Object;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.io.File.getAbsolutePath"
        }
    .end annotation

    .line 65786
    check-cast p1, Lcom/facebook/ads/redexgen/X/YK;

    .line 65787
    .local p0, "newFileInfo":Lcom/facebook/ads/redexgen/X/YK;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YK;->A03:Ljava/io/File;

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/YK;->A03:Ljava/io/File;

    if-nez v0, :cond_1

    .line 65788
    :cond_0
    return v5

    .line 65789
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/YK;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/YK;->A00:I

    if-ne v1, v0, :cond_2

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/YK;->A02:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/YK;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/YK;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/YK;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5
.end method

.method public final AE0()I
    .locals 4

    .line 65790
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    .line 65791
    const/4 v2, 0x3

    const/4 v1, 0x3

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v3, v0

    .line 65792
    const/4 v2, 0x6

    const/4 v1, 0x3

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v3, 0x4

    add-int/lit8 v0, v0, 0x10

    .line 65793
    return v0
.end method

.method public final bridge synthetic AEM(Ljava/lang/Object;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65794
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YK;->A02(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
