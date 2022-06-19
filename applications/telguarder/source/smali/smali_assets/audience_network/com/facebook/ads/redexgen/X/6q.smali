.class public final Lcom/facebook/ads/redexgen/X/6q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/6p;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/6p;

.field public final A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A04:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 15652
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6q;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6q;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/6q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6q;->A07:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6p;)V
    .locals 1

    .line 15653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15654
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/6p;

    .line 15655
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6p;->A03()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:I

    .line 15656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A03:Ljava/lang/String;

    .line 15657
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A02:Ljava/lang/String;

    .line 15658
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A04:Ljava/lang/String;

    .line 15659
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.String.length"
        }
    .end annotation

    .line 15660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15661
    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A08:Lcom/facebook/ads/redexgen/X/6p;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/6p;

    .line 15662
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:I

    .line 15663
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A03:Ljava/lang/String;

    .line 15664
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A02:Ljava/lang/String;

    .line 15665
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 15666
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v0, 0x1

    if-le v1, v0, :cond_0

    .line 15667
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 15668
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 15669
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A04:Ljava/lang/String;

    .line 15670
    return-void

    .line 15671
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6q;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5d

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

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6q;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x3ct
        -0xft
        -0xft
        -0x12t
        -0xft
        -0x61t
        -0x3et
        -0xft
        -0x1ct
        -0x20t
        -0xdt
        -0x18t
        -0x13t
        -0x1at
        -0x61t
        -0x37t
        -0x2et
        -0x32t
        -0x33t
        0x36t
        0x34t
        0x2et
        0x36t
        -0x30t
        -0x27t
        -0x14t
        -0x6t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "T4NWBsehENvYtZut7Hqlenu9nIK53XLe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1thzO4mBZ8wqohkPnRDEXodln6ZwmKTg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FhnacTS8ImL6h5tfg4iHlZyM0XOa4oO4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WybZ9EQl3oiZ2anReEUb8s5C7XoRQ0G9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "RdJ9JNBZoyO3e6CZdB6L0yV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LpiuGQu1udUM5Ra5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HbBSOvRAfiRP9AaMgFlxbAGLWriR94WT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KJAWjyWFTguWRGGuFRV0C6iNS6oo1ALH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6q;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03()I
    .locals 1

    .line 15672
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:I

    return v0
.end method

.method public final A04()I
    .locals 6

    .line 15673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A03:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    :goto_0
    add-int/lit8 v5, v0, 0x4

    .line 15674
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/6q;->A02:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/6q;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/6q;->A06:[Ljava/lang/String;

    const-string v1, "ZAFEoladMk9iV1z2lXP0QuXbu3NeS95O"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    :goto_1
    add-int/2addr v5, v0

    .line 15675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A04:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/6q;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/6q;->A06:[Ljava/lang/String;

    const-string v1, "7HloGlk4uuvEg3XLTYPc8hljEqzRtbxD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    array-length v3, v3

    :cond_0
    add-int/2addr v5, v3

    .line 15676
    .local p0, "size":I
    return v5

    .line 15677
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 15678
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/6p;
    .locals 1

    .line 15679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/6p;

    return-object v0
.end method

.method public final A06()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 15680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A07()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 15681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final A08()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 15682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A04:Ljava/lang/String;

    return-object v0
.end method

.method public final A09()Lorg/json/JSONObject;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .line 15683
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 15684
    .local p0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/6o;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6p;->ordinal()I

    move-result v0

    aget v4, v1, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const/16 v2, 0x13

    const/4 v1, 0x2

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6q;->A00(III)Ljava/lang/String;

    move-result-object v1

    if-eq v4, v3, :cond_0

    .line 15685
    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:I

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 15686
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:I

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15687
    const/16 v2, 0x17

    const/4 v1, 0x2

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6q;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A03:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15688
    const/16 v2, 0x15

    const/4 v1, 0x2

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6q;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A02:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15689
    const/16 v2, 0x19

    const/4 v1, 0x2

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6q;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A04:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15690
    :catch_0
    move-exception v4

    .line 15691
    .local v5, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/6q;->A07:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6q;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15692
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v5
.end method
