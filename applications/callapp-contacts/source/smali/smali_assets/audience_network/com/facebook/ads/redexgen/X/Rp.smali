.class public Lcom/facebook/ads/redexgen/X/Rp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0i;
.implements Lcom/facebook/ads/redexgen/X/0n;


# static fields
.field public static A0e:[B

.field public static A0f:[Ljava/lang/String;

.field public static final A0g:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:J

.field public A0A:Landroid/net/Uri;

.field public A0B:Lcom/facebook/ads/redexgen/X/0h;

.field public A0C:Lcom/facebook/ads/redexgen/X/11;

.field public A0D:Lcom/facebook/ads/redexgen/X/16;

.field public A0E:Lcom/facebook/ads/redexgen/X/XJ;

.field public A0F:Lcom/facebook/ads/redexgen/X/JC;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0G:Lcom/facebook/ads/redexgen/X/JX;

.field public A0H:Lcom/facebook/ads/redexgen/X/JY;

.field public A0I:Lcom/facebook/ads/redexgen/X/JY;

.field public A0J:Lcom/facebook/ads/redexgen/X/JY;

.field public A0K:Lcom/facebook/ads/redexgen/X/JZ;

.field public A0L:Lcom/facebook/ads/redexgen/X/Jd;

.field public A0M:Ljava/lang/String;

.field public A0N:Ljava/lang/String;

.field public A0O:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0P:Ljava/lang/String;

.field public A0Q:Ljava/lang/String;

.field public A0R:Ljava/lang/String;

.field public A0S:Ljava/lang/String;

.field public A0T:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0U:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cD;",
            ">;"
        }
    .end annotation
.end field

.field public A0W:Z

.field public A0X:Z

.field public A0Y:Z

.field public A0Z:Z

.field public A0a:Z

.field public A0b:Z

.field public A0c:Z

.field public A0d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 51353
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A05()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Rp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rp;->A0g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0U:Ljava/util/HashMap;

    .line 51356
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A06:I

    .line 51357
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A02:I

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Rp;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 51358
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rp;->A0e:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Rp;)Ljava/lang/String;
    .locals 0

    .line 51359
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0N:Ljava/lang/String;

    return-object p0
.end method

.method private A03(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51360
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 51361
    .local p0, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x2e3

    const/4 v1, 0x4

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51362
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51363
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51364
    :cond_0
    const/16 v2, 0x21f

    const/16 v1, 0x8

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51365
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51366
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51367
    :cond_1
    return-object v3
.end method

.method private A04()V
    .locals 4

    .line 51368
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0b:Z

    if-nez v0, :cond_2

    .line 51369
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const-string v1, "8ArINtb0xmmgo9NmELWQk3NiIhKYvaDc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 51370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0Q:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/JC;->ACS(Ljava/lang/String;)V

    .line 51371
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0b:Z

    .line 51372
    :cond_2
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x320

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rp;->A0e:[B

    return-void

    :array_0
    .array-data 1
        0x7ct
        0x59t
        0x7et
        0x55t
        0x52t
        0x54t
        0x5et
        0x58t
        0x4et
        0x5ft
        0x7at
        0x7ft
        0x6et
        0x6at
        0x7bt
        0x6ct
        0x3et
        0x7ft
        0x72t
        0x6ct
        0x7bt
        0x7ft
        0x7at
        0x67t
        0x3et
        0x72t
        0x71t
        0x7ft
        0x7at
        0x7bt
        0x7at
        0x3et
        0x7at
        0x7ft
        0x6at
        0x7ft
        0x6at
        0x5et
        0x4ft
        0x42t
        0x4et
        0x45t
        0x48t
        0x4et
        0xbt
        0x65t
        0x4et
        0x5ft
        0x5ct
        0x44t
        0x59t
        0x40t
        0xbt
        0x67t
        0x44t
        0x4at
        0x4ft
        0x4et
        0x4ft
        0x2bt
        0x4t
        0x1t
        0xbt
        0x3t
        0x48t
        0x0t
        0x9t
        0x18t
        0x18t
        0xdt
        0x6t
        0xdt
        0xct
        0x48t
        0x7t
        0x6t
        0x48t
        0x4t
        0x7t
        0xbt
        0x3t
        0x1bt
        0xbt
        0x1at
        0xdt
        0xdt
        0x6t
        0x48t
        0x9t
        0xct
        0x60t
        0x4ft
        0x4at
        0x40t
        0x48t
        0x3t
        0x4ft
        0x4ct
        0x44t
        0x44t
        0x46t
        0x47t
        0x10t
        0x27t
        0x27t
        0x3at
        0x27t
        0x75t
        0x30t
        0x2dt
        0x30t
        0x36t
        0x20t
        0x21t
        0x3ct
        0x3bt
        0x32t
        0x75t
        0x34t
        0x36t
        0x21t
        0x3ct
        0x3at
        0x3bt
        0x71t
        0x50t
        0x1ft
        0x79t
        0x56t
        0x53t
        0x53t
        0x16t
        0x2dt
        0x22t
        0x21t
        0x2ft
        0x26t
        0x63t
        0x37t
        0x2ct
        0x63t
        0x33t
        0x22t
        0x31t
        0x30t
        0x26t
        0x63t
        0x20t
        0x22t
        0x31t
        0x2ct
        0x36t
        0x30t
        0x26t
        0x2ft
        0x63t
        0x27t
        0x22t
        0x37t
        0x22t
        0x6dt
        0x55t
        0x50t
        0x6bt
        0x57t
        0x5ct
        0x5bt
        0x5dt
        0x57t
        0x51t
        0x47t
        0x6bt
        0x5dt
        0x57t
        0x5bt
        0x5at
        0x5dt
        0x58t
        0x63t
        0x5ft
        0x54t
        0x53t
        0x55t
        0x5ft
        0x59t
        0x4ft
        0x63t
        0x50t
        0x55t
        0x52t
        0x57t
        0x63t
        0x49t
        0x4et
        0x50t
        0x3t
        0x6t
        0x3dt
        0x16t
        0x10t
        0x3t
        0xct
        0x11t
        0xet
        0x3t
        0x16t
        0xbt
        0xdt
        0xct
        0x49t
        0x4ct
        0x5et
        0x4dt
        0x5at
        0x5ct
        0x41t
        0x5bt
        0x4dt
        0x5at
        0x77t
        0x46t
        0x49t
        0x45t
        0x4dt
        0x3t
        0xct
        0x3dt
        0xet
        0xdt
        0x5t
        0xdt
        0x3dt
        0x16t
        0x1bt
        0x12t
        0x7t
        0x1ct
        0x11t
        0x1at
        0x7t
        0x32t
        0x30t
        0x3dt
        0x3dt
        0xet
        0x25t
        0x3et
        0xet
        0x30t
        0x32t
        0x25t
        0x38t
        0x3et
        0x3ft
        0x4ft
        0x4dt
        0x5et
        0x48t
        0x4ft
        0x42t
        0x58t
        0x3et
        0x3ct
        0x2ft
        0x39t
        0x34t
        0x33t
        0x39t
        0x12t
        0x10t
        0x3t
        0x1et
        0x4t
        0x2t
        0x14t
        0x1dt
        0x6t
        0xat
        0xbt
        0x11t
        0x4t
        0xct
        0xbt
        0x0t
        0x17t
        0x3at
        0x13t
        0xct
        0x0t
        0x12t
        0x4t
        0x7t
        0xct
        0x9t
        0xct
        0x11t
        0x1ct
        0x3at
        0x6t
        0xdt
        0x0t
        0x6t
        0xet
        0x3at
        0xct
        0xbt
        0x11t
        0x0t
        0x17t
        0x13t
        0x4t
        0x9t
        0x7t
        0xbt
        0xat
        0x10t
        0x5t
        0xdt
        0xat
        0x1t
        0x16t
        0x3bt
        0x12t
        0xdt
        0x1t
        0x13t
        0x5t
        0x6t
        0xdt
        0x8t
        0xdt
        0x10t
        0x1dt
        0x3bt
        0x1t
        0xat
        0x5t
        0x6t
        0x8t
        0x1t
        0x0t
        0x23t
        0x34t
        0x7at
        0x7bt
        0x6at
        0x7bt
        0x7dt
        0x6at
        0x77t
        0x71t
        0x70t
        0x41t
        0x6dt
        0x6at
        0x6ct
        0x77t
        0x70t
        0x79t
        0x6dt
        0x12t
        0x19t
        0x16t
        0x15t
        0x1bt
        0x12t
        0x28t
        0x4t
        0x19t
        0x16t
        0x7t
        0x4t
        0x1ft
        0x18t
        0x3t
        0x28t
        0x1bt
        0x18t
        0x10t
        0x27t
        0x2ct
        0x23t
        0x20t
        0x2et
        0x27t
        0x1dt
        0x34t
        0x2bt
        0x27t
        0x35t
        0x1dt
        0x2et
        0x2dt
        0x25t
        0x22t
        0x29t
        0x24t
        0x35t
        0x3et
        0x37t
        0x33t
        0x22t
        0x23t
        0x18t
        0x24t
        0x37t
        0x2at
        0x41t
        0x45t
        0x46t
        0x43t
        0x78t
        0x44t
        0x48t
        0x4at
        0x4at
        0x46t
        0x49t
        0x43t
        0x44t
        0x49t
        0x4dt
        0x48t
        0x40t
        0x45t
        0x42t
        0x49t
        0x66t
        0x6ct
        0x60t
        0x61t
        0x19t
        0x1dt
        0x11t
        0x17t
        0x15t
        0x42t
        0x45t
        0x5dt
        0x4at
        0x47t
        0x42t
        0x4ft
        0x4at
        0x5ft
        0x42t
        0x44t
        0x45t
        0x74t
        0x49t
        0x4et
        0x43t
        0x4at
        0x5dt
        0x42t
        0x44t
        0x59t
        0x3t
        0x6t
        0x1t
        0x4t
        0x30t
        0xbt
        0xat
        0x1ct
        0xct
        0x1dt
        0x6t
        0x1ft
        0x1bt
        0x6t
        0x0t
        0x1t
        0x4bt
        0x5at
        0x49t
        0x48t
        0x52t
        0x55t
        0x5ct
        0x49t
        0x58t
        0x4ct
        0x4at
        0x5ct
        0x66t
        0x4dt
        0x4bt
        0x58t
        0x57t
        0x4at
        0x55t
        0x58t
        0x4dt
        0x50t
        0x56t
        0x57t
        0x49t
        0x55t
        0x58t
        0x40t
        0x66t
        0x4dt
        0x4bt
        0x58t
        0x57t
        0x4at
        0x55t
        0x58t
        0x4dt
        0x50t
        0x56t
        0x57t
        0x2t
        0x0t
        0x1dt
        0x1ft
        0x1dt
        0x6t
        0x17t
        0x16t
        0x2dt
        0x6t
        0x0t
        0x13t
        0x1ct
        0x1t
        0x1et
        0x13t
        0x6t
        0x1bt
        0x1dt
        0x1ct
        0x6ft
        0x78t
        0x6ct
        0x68t
        0x78t
        0x6et
        0x69t
        0x42t
        0x74t
        0x79t
        0x36t
        0x2bt
        0x24t
        0x35t
        0x36t
        0x2dt
        0x2at
        0x31t
        0x4t
        0x19t
        0x16t
        0x7t
        0x4t
        0x1ft
        0x18t
        0x3t
        0x28t
        0x14t
        0x18t
        0x1at
        0x7t
        0x5t
        0x12t
        0x4t
        0x4t
        0x28t
        0x6t
        0x2t
        0x16t
        0x1bt
        0x1et
        0x3t
        0xet
        0x70t
        0x6dt
        0x62t
        0x73t
        0x70t
        0x6bt
        0x6ct
        0x77t
        0x5ct
        0x6ft
        0x6ct
        0x64t
        0x5ct
        0x67t
        0x66t
        0x6ft
        0x62t
        0x7at
        0x5ct
        0x70t
        0x66t
        0x60t
        0x6ct
        0x6dt
        0x67t
        0x5t
        0x19t
        0x15t
        0x1ft
        0x17t
        0x1at
        0x29t
        0x15t
        0x19t
        0x18t
        0x2t
        0x13t
        0xet
        0x2t
        0x27t
        0x24t
        0x3bt
        0x3at
        0x27t
        0x3bt
        0x26t
        0x31t
        0x30t
        0xbt
        0x20t
        0x26t
        0x35t
        0x3at
        0x27t
        0x38t
        0x35t
        0x20t
        0x3dt
        0x3bt
        0x3at
        0x22t
        0x25t
        0x30t
        0x23t
        0xet
        0x23t
        0x30t
        0x25t
        0x38t
        0x3ft
        0x36t
        0x2dt
        0x2bt
        0x3ct
        0x2at
        0x37t
        0x2at
        0x32t
        0x3bt
        0x49t
        0x54t
        0x49t
        0x51t
        0x58t
        0x7at
        0x7ct
        0x6at
        0x6bt
        0x50t
        0x7dt
        0x6at
        0x7ft
        0x60t
        0x7dt
        0x7bt
        0x50t
        0x7at
        0x7dt
        0x63t
        0xct
        0x13t
        0x1et
        0x1ft
        0x15t
        0x25t
        0x1bt
        0xft
        0xet
        0x15t
        0xat
        0x16t
        0x1bt
        0x3t
        0x25t
        0x1ft
        0x14t
        0x1bt
        0x18t
        0x16t
        0x1ft
        0x1et
        0x24t
        0x3bt
        0x36t
        0x37t
        0x3dt
        0xdt
        0x3ft
        0x22t
        0x36t
        0x6bt
        0x74t
        0x79t
        0x78t
        0x72t
        0x42t
        0x6dt
        0x6ft
        0x78t
        0x71t
        0x72t
        0x7ct
        0x79t
        0x42t
        0x6et
        0x74t
        0x67t
        0x78t
        0x42t
        0x7ft
        0x64t
        0x69t
        0x78t
        0x6et
        0x3bt
        0x24t
        0x29t
        0x28t
        0x22t
        0x12t
        0x38t
        0x3ft
        0x21t
        0x69t
        0x76t
        0x7at
        0x68t
        0x57t
        0x48t
        0x44t
        0x56t
        0x40t
        0x43t
        0x48t
        0x4dt
        0x48t
        0x55t
        0x58t
        0x7et
        0x42t
        0x49t
        0x44t
        0x42t
        0x4at
        0x7et
        0x48t
        0x4ft
        0x48t
        0x55t
        0x48t
        0x40t
        0x4dt
        0x7et
        0x45t
        0x44t
        0x4dt
        0x40t
        0x58t
        0x7ft
        0x60t
        0x6ct
        0x7et
        0x68t
        0x6bt
        0x60t
        0x65t
        0x60t
        0x7dt
        0x70t
        0x56t
        0x6at
        0x61t
        0x6ct
        0x6at
        0x62t
        0x56t
        0x60t
        0x67t
        0x7dt
        0x6ct
        0x7bt
        0x7ft
        0x68t
        0x65t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OTBhn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "woE0GsYsDC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jJJsRhZ6eh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RbmDZKGZyk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MbYnCV2deeCvNEpfUSPgn7RvJuamywdV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "va4Mi1JJiq4w08mNkhVxy34L1bzftr4W"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QQZqW8pW387BdDH3gcXSwYVoWAeaIxNz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "E72k8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/XJ;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;II)V
    .locals 1

    .line 51373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0a:Z

    .line 51374
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0E:Lcom/facebook/ads/redexgen/X/XJ;

    .line 51375
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    .line 51376
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Rp;->A02:I

    .line 51377
    iput p6, p0, Lcom/facebook/ads/redexgen/X/Rp;->A01:I

    .line 51378
    invoke-direct {p0, p2, p4}, Lcom/facebook/ads/redexgen/X/Rp;->A09(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 51379
    return-void
.end method

.method private A08(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51380
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 51381
    .local p0, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 51382
    .local p1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/facebook/ads/redexgen/X/Ro;

    invoke-direct {v2, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/Ro;-><init>(Lcom/facebook/ads/redexgen/X/Rp;Ljava/util/Map;Ljava/util/Map;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A05:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51383
    :catch_0
    return-void
.end method

.method private A09(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 15

    .line 51384
    move-object v4, p0

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0X:Z

    if-nez v0, :cond_c

    .line 51385
    move-object/from16 v5, p1

    if-nez v5, :cond_0

    .line 51386
    return-void

    .line 51387
    :cond_0
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0E:Lcom/facebook/ads/redexgen/X/XJ;

    const/16 v2, 0x24

    const/16 v1, 0x17

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/L1;->A02(Landroid/content/Context;Ljava/lang/String;)V

    .line 51388
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0N:Ljava/lang/String;

    .line 51389
    const/16 v2, 0x215

    const/16 v1, 0xa

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0P:Ljava/lang/String;

    .line 51390
    const/4 v3, 0x0

    const/16 v2, 0xe0

    const/16 v1, 0xc

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A00:I

    .line 51391
    const/16 v2, 0x18a

    const/16 v1, 0xd

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0O:Ljava/lang/String;

    .line 51392
    const/16 v2, 0x197

    const/16 v1, 0xc

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/LG;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51393
    .local v5, "fbadCommand":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0A:Landroid/net/Uri;

    .line 51394
    const/16 v0, 0xc

    new-array v9, v0, [Ljava/lang/String;

    const/16 v2, 0xd1

    const/16 v1, 0xf

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v3

    const/4 v6, 0x1

    const/16 v2, 0x28f

    const/4 v1, 0x5

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v6, 0x2

    const/16 v2, 0x287

    const/16 v1, 0x8

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v6, 0x3

    const/16 v2, 0x1a3

    const/16 v1, 0x8

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v6, 0x4

    const/16 v2, 0xec

    const/4 v1, 0x4

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v7, 0x5

    const/16 v2, 0x259

    const/16 v1, 0xe

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/4 v8, 0x6

    const/16 v7, 0x1c9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const-string v1, "EgjH3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "aXmwT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v1, 0x10

    const/4 v0, 0x5

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8

    const/4 v7, 0x7

    const/16 v2, 0x267

    const/16 v1, 0x15

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/16 v7, 0x8

    const/16 v2, 0xc3

    const/16 v1, 0xe

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/16 v7, 0x9

    const/16 v2, 0x201

    const/16 v1, 0x14

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/16 v7, 0xa

    const/16 v2, 0x1f1

    const/16 v1, 0x10

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/16 v7, 0xb

    const/16 v2, 0x1e0

    const/16 v1, 0x11

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 51395
    .local v0, "strKeys":[Ljava/lang/String;
    array-length v8, v9

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_4

    aget-object v2, v9, v7

    .line 51396
    .local v0, "key":Ljava/lang/String;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0U:Ljava/util/HashMap;

    invoke-static {v5, v2}, Lcom/facebook/ads/redexgen/X/LG;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_2

    goto :goto_1

    .line 51397
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const-string v1, "eWhcqXkmKwACVp6tQL5WW3qntxITuvc7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 51398
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 51399
    :cond_4
    const/16 v2, 0xf0

    const/16 v1, 0xe

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/facebook/ads/redexgen/X/LG;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51400
    .local v0, "callToAction":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 51401
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0U:Ljava/util/HashMap;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const-string v1, "fJLCRXTMzJxf7DhTFL7Dp6MTDwlQmm1t"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51402
    :cond_5
    :goto_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0E:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/S3;->A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/XJ;)Lcom/facebook/ads/redexgen/X/S3;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 51403
    const/16 v2, 0x1ab

    const/4 v1, 0x4

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JY;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0I:Lcom/facebook/ads/redexgen/X/JY;

    .line 51404
    const/16 v2, 0x1af

    const/4 v1, 0x5

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JY;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0J:Lcom/facebook/ads/redexgen/X/JY;

    .line 51405
    const/16 v2, 0x27c

    const/16 v1, 0xb

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JZ;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/JZ;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0K:Lcom/facebook/ads/redexgen/X/JZ;

    .line 51406
    const/16 v2, 0x294

    const/16 v1, 0xf

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/LG;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0Q:Ljava/lang/String;

    .line 51407
    const/16 v2, 0x17b

    const/16 v1, 0xf

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0c:Z

    .line 51408
    const/16 v2, 0x168

    const/16 v1, 0x13

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0d:Z

    .line 51409
    const/16 v2, 0x240

    const/16 v1, 0x19

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A05:I

    .line 51410
    const/16 v2, 0x227

    const/16 v1, 0x19

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A04:I

    .line 51411
    const/16 v2, 0x2e7

    const/16 v1, 0x1f

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A07:I

    .line 51412
    const/16 v3, 0x3e8

    .line 51413
    const/16 v2, 0x306

    const/16 v1, 0x1a

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A08:I

    .line 51414
    const/16 v2, 0xa1

    const/16 v1, 0xf

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 51415
    .local v1, "adChoicesIconObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_6

    .line 51416
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JY;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0H:Lcom/facebook/ads/redexgen/X/JY;

    .line 51417
    :cond_6
    const/16 v2, 0xb0

    const/16 v1, 0x13

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/LG;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0M:Ljava/lang/String;

    .line 51418
    const/16 v2, 0x1b4

    const/16 v1, 0x15

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0h;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/0h;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0B:Lcom/facebook/ads/redexgen/X/0h;

    .line 51419
    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const-string v1, "EZfL37EHMq"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 51420
    :goto_4
    :try_start_0
    const/16 v2, 0x157

    const/16 v1, 0x11

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51421
    :catch_0
    move-exception v0

    .line 51422
    .local p0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 51423
    :goto_5
    move-object v3, v0

    .line 51424
    .end local p0    # "e":Lorg/json/JSONException;
    :goto_6
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0j;->A01(Lorg/json/JSONArray;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0T:Ljava/util/Collection;

    .line 51425
    const/16 v2, 0x2da

    const/16 v1, 0x9

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/LG;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0S:Ljava/lang/String;

    .line 51426
    const-wide/16 v1, -0x1

    .line 51427
    const/16 v6, 0x2c2

    const/16 v3, 0x18

    const/16 v0, 0x77

    invoke-static {v6, v3, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A09:J

    .line 51428
    const/16 v2, 0x2b9

    const/16 v1, 0x9

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/LG;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0R:Ljava/lang/String;

    .line 51429
    const/16 v2, 0x2a3

    const/16 v1, 0x16

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 51430
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A03:Lcom/facebook/ads/redexgen/X/Jd;

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0L:Lcom/facebook/ads/redexgen/X/Jd;

    .line 51431
    :goto_7
    const/16 v2, 0x138

    const/16 v1, 0x1d

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0W:Z

    .line 51432
    const/16 v3, 0x64

    .line 51433
    const/16 v2, 0x114

    const/16 v1, 0x24

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A03:I

    goto :goto_9

    .line 51434
    :cond_8
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 51435
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A05:Lcom/facebook/ads/redexgen/X/Jd;

    .line 51436
    :goto_8
    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0L:Lcom/facebook/ads/redexgen/X/Jd;

    goto :goto_7

    :cond_9
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Jd;

    goto :goto_8

    .line 51437
    :goto_9
    :try_start_1
    const/16 v2, 0x10c

    const/16 v1, 0x8

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 51438
    .local p0, "carouselArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 51439
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 51440
    .local v0, "cardCount":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 51441
    .local v0, "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    const/4 v13, 0x0

    .local v0, "cardIndex":I
    :goto_a
    if-ge v13, v14, :cond_a

    .line 51442
    new-instance v8, Lcom/facebook/ads/redexgen/X/Rp;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/Rp;-><init>()V

    .line 51443
    .local v1, "adapter":Lcom/facebook/ads/redexgen/X/Rp;
    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0E:Lcom/facebook/ads/redexgen/X/XJ;

    .line 51444
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0N:Ljava/lang/String;

    .line 51445
    move-object v5, v8

    .end local v1    # "adapter":Lcom/facebook/ads/redexgen/X/Rp;
    .local p0, "adapter":Lcom/facebook/ads/redexgen/X/Rp;
    .local v1, "carouselArray":Lorg/json/JSONArray;
    .end local v0    # "cardIndex":I
    .local v0, "cardIndex":I
    .end local v0    # "cardIndex":I
    .local v0, "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/Rp;->A07(Lcom/facebook/ads/redexgen/X/XJ;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;II)V

    .line 51446
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0E:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0G:Lcom/facebook/ads/redexgen/X/JX;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/cD;

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/facebook/ads/redexgen/X/cD;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Rp;Lcom/facebook/ads/redexgen/X/8x;Lcom/facebook/ads/redexgen/X/JX;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51447
    .end local p0    # "adapter":Lcom/facebook/ads/redexgen/X/Rp;
    add-int/lit8 v13, v13, 0x1

    .end local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .restart local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    goto :goto_a

    .line 51448
    .end local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .end local v1    # "carouselArray":Lorg/json/JSONArray;
    .local p0, "carouselArray":Lorg/json/JSONArray;
    .restart local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .end local p0    # "carouselArray":Lorg/json/JSONArray;
    .end local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .end local v0
    .restart local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .restart local v1    # "carouselArray":Lorg/json/JSONArray;
    :cond_a
    iput-object v6, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0V:Ljava/util/List;

    goto :goto_b
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51449
    :catch_1
    move-exception v7

    .line 51450
    .local p0, "je":Lorg/json/JSONException;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0E:Lcom/facebook/ads/redexgen/X/XJ;

    .line 51451
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/8e;->A1s:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v7}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 51452
    const/16 v2, 0x1d9

    const/4 v1, 0x7

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 51453
    sget-object v3, Lcom/facebook/ads/redexgen/X/Rp;->A0g:Ljava/lang/String;

    const/16 v2, 0x83

    const/16 v1, 0x1e

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51454
    .end local p0    # "je":Lorg/json/JSONException;
    :cond_b
    :goto_b
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0X:Z

    .line 51455
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0A()Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Rp;->A0Y:Z

    .line 51456
    return-void

    .line 51457
    .end local v5    # "fbadCommand":Ljava/lang/String;
    .end local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .end local v1    # "carouselArray":Lorg/json/JSONArray;
    .end local v0
    .end local v0
    :cond_c
    const/16 v2, 0x9

    const/16 v1, 0x1b

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0A()Z
    .locals 4

    .line 51458
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0a:Z

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0U:Ljava/util/HashMap;

    const/16 v2, 0xd1

    const/16 v1, 0xf

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0U:Ljava/util/HashMap;

    .line 51459
    const/16 v2, 0x28f

    const/4 v1, 0x5

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0a:Z

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0I:Lcom/facebook/ads/redexgen/X/JY;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0a:Z

    if-eqz v0, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0J:Lcom/facebook/ads/redexgen/X/JY;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const-string v1, "coz4LHwVNN2LSDndRSBnj9WvwXuRM5HO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_4

    .line 51460
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE_BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v1, v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 51461
    :goto_0
    return v0
.end method


# virtual methods
.method public final A0B()I
    .locals 1

    .line 51462
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A00:I

    return v0
.end method

.method public final A0C()I
    .locals 1

    .line 51463
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A01:I

    return v0
.end method

.method public final A0D()I
    .locals 1

    .line 51464
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A02:I

    return v0
.end method

.method public final A0E()I
    .locals 1

    .line 51465
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A03:I

    return v0
.end method

.method public final A0F()I
    .locals 2

    .line 51466
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Rp;->A04:I

    if-ltz v1, :cond_0

    const/16 v0, 0x64

    if-le v1, v0, :cond_1

    .line 51467
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 51468
    :cond_1
    return v1
.end method

.method public final A0G()I
    .locals 1

    .line 51469
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A06:I

    return v0
.end method

.method public final A0H()I
    .locals 1

    .line 51470
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A07:I

    return v0
.end method

.method public final A0I()I
    .locals 1

    .line 51471
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A08:I

    return v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/16;
    .locals 1

    .line 51472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0D:Lcom/facebook/ads/redexgen/X/16;

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/JY;
    .locals 1

    .line 51473
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51474
    const/4 v0, 0x0

    return-object v0

    .line 51475
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0H:Lcom/facebook/ads/redexgen/X/JY;

    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/JY;
    .locals 1

    .line 51476
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51477
    const/4 v0, 0x0

    return-object v0

    .line 51478
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0J:Lcom/facebook/ads/redexgen/X/JY;

    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/JY;
    .locals 1

    .line 51479
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51480
    const/4 v0, 0x0

    return-object v0

    .line 51481
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0I:Lcom/facebook/ads/redexgen/X/JY;

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/JZ;
    .locals 1

    .line 51482
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51483
    const/4 v0, 0x0

    return-object v0

    .line 51484
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A04()V

    .line 51485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0K:Lcom/facebook/ads/redexgen/X/JZ;

    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/Jd;
    .locals 1

    .line 51486
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51487
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A03:Lcom/facebook/ads/redexgen/X/Jd;

    return-object v0

    .line 51488
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0L:Lcom/facebook/ads/redexgen/X/Jd;

    return-object v0
.end method

.method public final A0P()Ljava/lang/Long;
    .locals 2

    .line 51489
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51490
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 51491
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A09:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final A0Q()Ljava/lang/String;
    .locals 4

    .line 51492
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51493
    const/4 v0, 0x0

    return-object v0

    .line 51494
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A04()V

    .line 51495
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0U:Ljava/util/HashMap;

    const/16 v2, 0xec

    const/4 v1, 0x4

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LS;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0R()Ljava/lang/String;
    .locals 1

    .line 51496
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51497
    const/4 v0, 0x0

    return-object v0

    .line 51498
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0M:Ljava/lang/String;

    return-object v0
.end method

.method public final A0S()Ljava/lang/String;
    .locals 4

    .line 51499
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51500
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const-string v1, "6LnlrboEXfVkWbJfSSNj7sObvXF9GrkL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    .line 51501
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0T()Ljava/lang/String;
    .locals 1

    .line 51502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0P:Ljava/lang/String;

    return-object v0
.end method

.method public final A0U()Ljava/lang/String;
    .locals 1

    .line 51503
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51504
    const/4 v0, 0x0

    return-object v0

    .line 51505
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0R:Ljava/lang/String;

    return-object v0
.end method

.method public final A0V()Ljava/lang/String;
    .locals 1

    .line 51506
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51507
    const/4 v0, 0x0

    return-object v0

    .line 51508
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0S:Ljava/lang/String;

    return-object v0
.end method

.method public final A0W(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51509
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51510
    const/4 v0, 0x0

    return-object v0

    .line 51511
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A04()V

    .line 51512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0U:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A0X()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cD;",
            ">;"
        }
    .end annotation

    .line 51513
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51514
    const/4 v0, 0x0

    return-object v0

    .line 51515
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0V:Ljava/util/List;

    return-object v0
.end method

.method public final A0Y()V
    .locals 5

    .line 51516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0V:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const-string v1, "kj4WnsmCok25qDrlf1kxSYggARLvW33C"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 51517
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0V:Ljava/util/List;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const-string v1, "0lb5BUzW8n1EJDWyWAqaA7d0lZJNpkzV"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/cD;

    .line 51518
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/cD;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->unregisterView()V

    .line 51519
    .end local v0    # "internalNativeAd":Lcom/facebook/ads/redexgen/X/cD;
    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const-string v1, "QJQdkpg5cmGOeaue26HVF3aLtsB2qwfM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const-string v1, "wGXHpE1nya"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_0

    .line 51520
    :cond_3
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/11;)V
    .locals 0

    .line 51521
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0C:Lcom/facebook/ads/redexgen/X/11;

    .line 51522
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/11;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/JX;)V
    .locals 4

    .line 51523
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0E:Lcom/facebook/ads/redexgen/X/XJ;

    .line 51524
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0C:Lcom/facebook/ads/redexgen/X/11;

    .line 51525
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    .line 51526
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0G:Lcom/facebook/ads/redexgen/X/JX;

    .line 51527
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1n;->A03()Lorg/json/JSONObject;

    move-result-object v3

    .line 51528
    .local p0, "dataObject":Lorg/json/JSONObject;
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1n;->A01()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    .line 51529
    .local p1, "definition":Lcom/facebook/ads/redexgen/X/8x;
    if-eqz v0, :cond_0

    .line 51530
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A06()I

    move-result v0

    .line 51531
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A06:I

    .line 51532
    const/16 v2, 0x155

    const/4 v1, 0x2

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/LG;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A09(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 51533
    invoke-static {p1, p0, p3}, Lcom/facebook/ads/redexgen/X/0j;->A04(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/0i;Lcom/facebook/ads/redexgen/X/JC;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51534
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A42()V

    .line 51535
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x7c

    const/4 v1, 0x7

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jl;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Jl;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/redexgen/X/11;->AAx(Lcom/facebook/ads/redexgen/X/Rp;Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 51536
    return-void

    .line 51537
    :cond_0
    const/16 v0, 0xc8

    goto :goto_0

    .line 51538
    :cond_1
    if-eqz p2, :cond_2

    .line 51539
    invoke-interface {p2, p0}, Lcom/facebook/ads/redexgen/X/11;->AAu(Lcom/facebook/ads/redexgen/X/Rp;)V

    .line 51540
    :cond_2
    return-void
.end method

.method public final A0b(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51541
    .local v5, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51542
    return-void

    .line 51543
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0E:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1E(Landroid/content/Context;)Z

    move-result v0

    .line 51544
    .local p0, "shouldBlockLockscreenClicks":Z
    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Li;->A04(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51545
    sget-object v6, Lcom/facebook/ads/redexgen/X/Rp;->A0g:Ljava/lang/String;

    const/16 v5, 0x3b

    const/16 v4, 0x1f

    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const-string v1, "D3JUlaax70Z19DqZX7Vx94n8SobUQcIP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51546
    return-void

    .line 51547
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 51548
    .local p1, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 51549
    invoke-interface {v4, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 51550
    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0E:Lcom/facebook/ads/redexgen/X/XJ;

    const/16 v2, 0x5a

    const/16 v1, 0xc

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/L1;->A02(Landroid/content/Context;Ljava/lang/String;)V

    .line 51551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0C:Lcom/facebook/ads/redexgen/X/11;

    if-eqz v0, :cond_4

    .line 51552
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/11;->AAt(Lcom/facebook/ads/redexgen/X/Rp;)V

    .line 51553
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0a:Z

    if-eqz v0, :cond_5

    .line 51554
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A02:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x105

    const/4 v1, 0x7

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51555
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A01:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xfe

    const/4 v1, 0x7

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51556
    :cond_5
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0E:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0N:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0A:Landroid/net/Uri;

    .line 51557
    invoke-static {v3, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/0g;->A00(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    .line 51558
    .local v0, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    if-eqz v0, :cond_6

    .line 51559
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0f;->A0D()V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51560
    :catch_0
    move-exception v4

    .line 51561
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/Rp;->A0g:Ljava/lang/String;

    const/16 v2, 0x66

    const/16 v1, 0x16

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51562
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_6
    :goto_0
    return-void
.end method

.method public final A0c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51563
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    if-eqz v1, :cond_0

    .line 51564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0N:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/JC;->A8R(Ljava/lang/String;Ljava/util/Map;)V

    .line 51565
    :cond_0
    return-void
.end method

.method public final A0d(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51566
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51567
    return-void

    .line 51568
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0Z:Z

    if-nez v0, :cond_8

    .line 51569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0C:Lcom/facebook/ads/redexgen/X/11;

    if-eqz v0, :cond_1

    .line 51570
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/11;->AAv(Lcom/facebook/ads/redexgen/X/Rp;)V

    .line 51571
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 51572
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 51573
    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 51574
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0a:Z

    if-eqz v0, :cond_3

    .line 51575
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A02:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x105

    const/4 v1, 0x7

    const/16 v0, 0x37

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51576
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A01:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0xfe

    const/4 v1, 0x7

    const/16 v0, 0x46

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51577
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A5x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    if-eqz v0, :cond_5

    .line 51578
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0a:Z

    if-nez v0, :cond_4

    .line 51579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0E:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a()V

    .line 51580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0O:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/24;->A00(Ljava/lang/String;)V

    .line 51581
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A5x()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JC;->A8a(Ljava/lang/String;Ljava/util/Map;)V

    .line 51582
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0l()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0m()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51583
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/Rp;->A08(Ljava/util/Map;Ljava/util/Map;)V

    .line 51584
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0Z:Z

    .line 51585
    .end local p0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    return-void
.end method

.method public final A0e(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51586
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    if-eqz v1, :cond_0

    .line 51587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0N:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/JC;->A8q(Ljava/lang/String;Ljava/util/Map;)V

    .line 51588
    :cond_0
    return-void
.end method

.method public final A0f(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51589
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    if-eqz v1, :cond_0

    .line 51590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0N:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/JC;->A8r(Ljava/lang/String;Ljava/util/Map;)V

    .line 51591
    :cond_0
    return-void
.end method

.method public final A0g()Z
    .locals 1

    .line 51592
    const/4 v0, 0x1

    return v0
.end method

.method public final A0h()Z
    .locals 1

    .line 51593
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0A:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0i()Z
    .locals 1

    .line 51594
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0X:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0Y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0j()Z
    .locals 1

    .line 51595
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0W:Z

    return v0
.end method

.method public final A0k()Z
    .locals 1

    .line 51596
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0a:Z

    return v0
.end method

.method public final A0l()Z
    .locals 4

    .line 51597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0E:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51598
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0c:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const-string v1, "hsrOxssvGH6abDOIeI9T6FJFSNjQSl4a"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 51599
    :goto_0
    return v0
.end method

.method public final A0m()Z
    .locals 4

    .line 51600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0E:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51601
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rp;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0d:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rp;->A0f:[Ljava/lang/String;

    const-string v1, "qputmJyOXU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 51602
    :goto_0
    return v0
.end method

.method public final A5x()Ljava/lang/String;
    .locals 1

    .line 51603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0N:Ljava/lang/String;

    return-object v0
.end method

.method public final A6F()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0T:Ljava/util/Collection;

    return-object v0
.end method

.method public final A6e()Lcom/facebook/ads/redexgen/X/0h;
    .locals 1

    .line 51605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A0B:Lcom/facebook/ads/redexgen/X/0h;

    return-object v0
.end method

.method public A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 51606
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 0

    .line 51607
    return-void
.end method
