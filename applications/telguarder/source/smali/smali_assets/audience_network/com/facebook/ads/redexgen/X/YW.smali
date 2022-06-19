.class public final Lcom/facebook/ads/redexgen/X/YW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/YV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuildConfigParams"
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Ljava/lang/Class;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Ljava/lang/Integer;
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

.field public final A05:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A06:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YW;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YW;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65911
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YW;->A01:Ljava/lang/Class;

    .line 65912
    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YW;->A02(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A03:Ljava/lang/String;

    .line 65913
    const/16 v2, 0xe

    const/16 v1, 0xa

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YW;->A02(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A04:Ljava/lang/String;

    .line 65914
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YW;->A00()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:Ljava/lang/Boolean;

    .line 65915
    const/16 v2, 0x1d

    const/4 v1, 0x6

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YW;->A02(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A05:Ljava/lang/String;

    .line 65916
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YW;->A01()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A02:Ljava/lang/Integer;

    .line 65917
    const/16 v2, 0x2f

    const/16 v1, 0xc

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YW;->A02(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A06:Ljava/lang/String;

    .line 65918
    return-void
.end method

.method private A00()Ljava/lang/Boolean;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65919
    const/16 v2, 0x18

    const/4 v1, 0x5

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YW;->A02(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 65920
    .local p0, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v0, v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 65921
    check-cast v1, Ljava/lang/Boolean;

    return-object v1

    .line 65922
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private A01()Ljava/lang/Integer;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65923
    const/16 v2, 0x23

    const/16 v1, 0xc

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YW;->A02(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 65924
    .local p0, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 65925
    check-cast v1, Ljava/lang/Integer;

    return-object v1

    .line 65926
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private A02(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A01:Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 65928
    return-object v2

    .line 65929
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 65930
    .local p0, "f":Ljava/lang/reflect/Field;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65931
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65932
    .local p0, "result":Ljava/lang/Object;
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65933
    .end local p0    # "result":Ljava/lang/Object;
    .local p0, "t":Ljava/lang/Throwable;
    :catchall_0
    const/4 v0, 0x0

    .line 65934
    .local p0, "result":Ljava/lang/Object;
    :goto_0
    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/YW;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x46

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YW;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x69t
        -0x5at
        -0x5at
        -0x5et
        -0x61t
        -0x67t
        -0x69t
        -0x56t
        -0x61t
        -0x5bt
        -0x5ct
        -0x4bt
        -0x61t
        -0x66t
        -0x6ft
        -0x5ct
        -0x68t
        -0x65t
        -0x6dt
        -0x52t
        -0x5dt
        -0x58t
        -0x61t
        -0x6ct
        -0x80t
        -0x7ft
        0x7et
        -0x6ft
        -0x7dt
        0x76t
        0x7ct
        0x71t
        -0x7at
        0x7ft
        -0x7et
        -0x17t
        -0x28t
        -0x1bt
        -0x1at
        -0x24t
        -0x1et
        -0x1ft
        -0xet
        -0x2at
        -0x1et
        -0x29t
        -0x28t
        -0x44t
        -0x55t
        -0x48t
        -0x47t
        -0x51t
        -0x4bt
        -0x4ct
        -0x3bt
        -0x4ct
        -0x59t
        -0x4dt
        -0x55t
        -0x23t
        -0x1bt
        -0x20t
        -0x4bt
        -0x39t
        -0x46t
        -0xct
        -0x3dt
        -0x50t
        -0x10t
        -0x18t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ANsm9U606iKzo8wpwLTIuv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "j"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Y9uOU2vB2jesgbE0l"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xyrRDmTKyxMMNHh3AZRaJT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "P9nql8uOmd99NEM6e"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "t7ocGiK0mXB1nkng1nKVF8iaPh2tZCIW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0QwVFYtFV5zT23F1vxjpuw4VQDcN852X"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fCX6RJoJICNTsK72nprTQoBVHEYSdDcQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YW;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A82(Ljava/lang/Object;)Z
    .locals 2

    .line 65935
    check-cast p1, Lcom/facebook/ads/redexgen/X/YW;

    .line 65936
    .local p0, "oldBuildConfigParams":Lcom/facebook/ads/redexgen/X/YW;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A03:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/YW;->A03:Ljava/lang/String;

    .line 65937
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A04:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/YW;->A04:Ljava/lang/String;

    .line 65938
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/YW;->A00:Ljava/lang/Boolean;

    .line 65939
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A05:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/YW;->A05:Ljava/lang/String;

    .line 65940
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A02:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/YW;->A02:Ljava/lang/Integer;

    .line 65941
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A06:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/YW;->A06:Ljava/lang/String;

    .line 65942
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 65943
    :goto_0
    return v0

    .line 65944
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AE0()I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.String.length"
        }
    .end annotation

    .line 65945
    const/16 v2, 0x3b

    const/4 v1, 0x3

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 65946
    const/16 v2, 0x3e

    const/4 v1, 0x2

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 65947
    const/16 v2, 0x40

    const/4 v1, 0x1

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 65948
    const/16 v2, 0x41

    const/4 v1, 0x1

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 65949
    const/16 v2, 0x42

    const/4 v1, 0x2

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 65950
    const/16 v2, 0x44

    const/4 v1, 0x2

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v3, 0x4

    add-int/lit8 v4, v0, 0x8

    .line 65951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A03:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/2addr v4, v0

    .line 65952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A04:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    add-int/2addr v4, v0

    .line 65953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A05:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    add-int/2addr v4, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/YW;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 65954
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 65955
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 65956
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/YW;->A08:[Ljava/lang/String;

    const-string v1, "nKJoUAtEl6h8d5YUDcpguaDpaShaxpfP"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "QhwYEDo4QsPTmdfU1cRPefVJDmJnS49G"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A06:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    :cond_4
    add-int/2addr v4, v3

    .line 65957
    return v4
.end method

.method public final AEL()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65958
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 65959
    .local p0, "jsonObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/YW;->A03:Ljava/lang/String;

    const/16 v2, 0x3b

    const/4 v1, 0x3

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65960
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/YW;->A04:Ljava/lang/String;

    const/16 v2, 0x3e

    const/4 v1, 0x2

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65961
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:Ljava/lang/Boolean;

    const/16 v2, 0x40

    const/4 v1, 0x1

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65962
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/YW;->A05:Ljava/lang/String;

    const/16 v2, 0x41

    const/4 v1, 0x1

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65963
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/YW;->A02:Ljava/lang/Integer;

    const/16 v2, 0x42

    const/4 v1, 0x2

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65964
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/YW;->A06:Ljava/lang/String;

    const/16 v2, 0x44

    const/4 v1, 0x2

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65965
    return-object v4
.end method
