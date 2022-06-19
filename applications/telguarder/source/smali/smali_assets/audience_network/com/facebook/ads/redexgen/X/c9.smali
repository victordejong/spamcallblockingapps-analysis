.class public Lcom/facebook/ads/redexgen/X/c9;
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

.field public A0E:Lcom/facebook/ads/redexgen/X/Wm;

.field public A0F:Lcom/facebook/ads/redexgen/X/JC;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0G:Lcom/facebook/ads/redexgen/X/JZ;

.field public A0H:Lcom/facebook/ads/redexgen/X/Ja;

.field public A0I:Lcom/facebook/ads/redexgen/X/Ja;

.field public A0J:Lcom/facebook/ads/redexgen/X/Ja;

.field public A0K:Lcom/facebook/ads/redexgen/X/Jb;

.field public A0L:Lcom/facebook/ads/redexgen/X/Jf;

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
            "Lcom/facebook/ads/redexgen/X/T6;",
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

    .line 70705
    invoke-static {}, Lcom/facebook/ads/redexgen/X/c9;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/c9;->A05()V

    const-class v0, Lcom/facebook/ads/redexgen/X/c9;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/c9;->A0g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70707
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0U:Ljava/util/HashMap;

    .line 70708
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A06:I

    .line 70709
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:I

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/c9;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 70710
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/c9;->A0e:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1b

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    const-string v1, "ypXQoKhxcHRWJrqojmqi5sMtZ7xfThaX"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "2LOy6kLjroQDrfbojOuFHdbjLd88ORkx"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/c9;)Ljava/lang/String;
    .locals 0

    .line 70711
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0N:Ljava/lang/String;

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

    .line 70712
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 70713
    .local p0, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x2dc

    const/4 v1, 0x4

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70714
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70715
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70716
    :cond_0
    const/16 v2, 0x218

    const/16 v1, 0x8

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70717
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70718
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70719
    :cond_1
    return-object v3
.end method

.method private A04()V
    .locals 5

    .line 70720
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0b:Z

    if-nez v0, :cond_3

    .line 70721
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/c9;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    if-eqz v4, :cond_1

    .line 70722
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/c9;->A0Q:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    const-string v1, "UyMHNGbcOaMZIG61Bx4Y7eI95duiNlx0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "GrkvjKrlZQ6RBIZv1J15ESJw4dFB55PB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/JC;->ACS(Ljava/lang/String;)V

    .line 70723
    :cond_1
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    const-string v1, "n7fESQtKkt4xg0KfjsCtlGytHzof1PL7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "IlOCdbA0HPoPXIXgjZShKH3vxKtFTGUt"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/c9;->A0b:Z

    .line 70724
    :cond_3
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x319

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/c9;->A0e:[B

    return-void

    :array_0
    .array-data 1
        0x37t
        0x12t
        0x35t
        0x1et
        0x19t
        0x1ft
        0x15t
        0x13t
        0x5t
        0x0t
        0x25t
        0x20t
        0x31t
        0x35t
        0x24t
        0x33t
        0x61t
        0x20t
        0x2dt
        0x33t
        0x24t
        0x20t
        0x25t
        0x38t
        0x61t
        0x2dt
        0x2et
        0x20t
        0x25t
        0x24t
        0x25t
        0x61t
        0x25t
        0x20t
        0x35t
        0x20t
        0x55t
        0x61t
        0x70t
        0x7dt
        0x71t
        0x7at
        0x77t
        0x71t
        0x34t
        0x5at
        0x71t
        0x60t
        0x63t
        0x7bt
        0x66t
        0x7ft
        0x34t
        0x58t
        0x7bt
        0x75t
        0x70t
        0x71t
        0x70t
        0x57t
        0x78t
        0x7dt
        0x77t
        0x7ft
        0x34t
        0x7ct
        0x75t
        0x64t
        0x64t
        0x71t
        0x7at
        0x71t
        0x70t
        0x34t
        0x7bt
        0x7at
        0x34t
        0x78t
        0x7bt
        0x77t
        0x7ft
        0x67t
        0x77t
        0x66t
        0x71t
        0x71t
        0x7at
        0x34t
        0x75t
        0x70t
        0xet
        0x21t
        0x24t
        0x2et
        0x26t
        0x6dt
        0x21t
        0x22t
        0x2at
        0x2at
        0x28t
        0x29t
        0x73t
        0x44t
        0x44t
        0x59t
        0x44t
        0x16t
        0x53t
        0x4et
        0x53t
        0x55t
        0x43t
        0x42t
        0x5ft
        0x58t
        0x51t
        0x16t
        0x57t
        0x55t
        0x42t
        0x5ft
        0x59t
        0x58t
        0x44t
        0x7ft
        0x70t
        0x73t
        0x7dt
        0x74t
        0x31t
        0x65t
        0x7et
        0x31t
        0x61t
        0x70t
        0x63t
        0x62t
        0x74t
        0x31t
        0x72t
        0x70t
        0x63t
        0x7et
        0x64t
        0x62t
        0x74t
        0x7dt
        0x31t
        0x75t
        0x70t
        0x65t
        0x70t
        0x3ft
        0x35t
        0x30t
        0xbt
        0x37t
        0x3ct
        0x3bt
        0x3dt
        0x37t
        0x31t
        0x27t
        0xbt
        0x3dt
        0x37t
        0x3bt
        0x3at
        0x1et
        0x1bt
        0x20t
        0x1ct
        0x17t
        0x10t
        0x16t
        0x1ct
        0x1at
        0xct
        0x20t
        0x13t
        0x16t
        0x11t
        0x14t
        0x20t
        0xat
        0xdt
        0x13t
        0x70t
        0x75t
        0x4et
        0x65t
        0x63t
        0x70t
        0x7ft
        0x62t
        0x7dt
        0x70t
        0x65t
        0x78t
        0x7et
        0x7ft
        0x36t
        0x33t
        0x21t
        0x32t
        0x25t
        0x23t
        0x3et
        0x24t
        0x32t
        0x25t
        0x8t
        0x39t
        0x36t
        0x3at
        0x32t
        0x7et
        0x71t
        0x40t
        0x73t
        0x70t
        0x78t
        0x70t
        0x40t
        0x6bt
        0x66t
        0x6ft
        0x7at
        0x1et
        0x13t
        0x18t
        0x5t
        0x27t
        0x25t
        0x28t
        0x28t
        0x1bt
        0x30t
        0x2bt
        0x1bt
        0x25t
        0x27t
        0x30t
        0x2dt
        0x2bt
        0x2at
        0x3bt
        0x39t
        0x2at
        0x3ct
        0x3bt
        0x36t
        0x2ct
        0x26t
        0x24t
        0x37t
        0x21t
        0x2ct
        0x2bt
        0x21t
        0x1t
        0x3t
        0x10t
        0xdt
        0x17t
        0x11t
        0x7t
        0xet
        0x5ft
        0x53t
        0x52t
        0x48t
        0x5dt
        0x55t
        0x52t
        0x59t
        0x4et
        0x63t
        0x4at
        0x55t
        0x59t
        0x4bt
        0x5dt
        0x5et
        0x55t
        0x50t
        0x55t
        0x48t
        0x45t
        0x63t
        0x5ft
        0x54t
        0x59t
        0x5ft
        0x57t
        0x63t
        0x55t
        0x52t
        0x48t
        0x59t
        0x4et
        0x4at
        0x5dt
        0x50t
        0x2ct
        0x20t
        0x21t
        0x3bt
        0x2et
        0x26t
        0x21t
        0x2at
        0x3dt
        0x10t
        0x39t
        0x26t
        0x2at
        0x38t
        0x2et
        0x2dt
        0x26t
        0x23t
        0x26t
        0x3bt
        0x36t
        0x10t
        0x2at
        0x21t
        0x2et
        0x2dt
        0x23t
        0x2at
        0x2bt
        0x60t
        0x77t
        0x75t
        0x74t
        0x65t
        0x74t
        0x72t
        0x65t
        0x78t
        0x7et
        0x7ft
        0x4et
        0x62t
        0x65t
        0x63t
        0x78t
        0x7ft
        0x76t
        0x62t
        0x3at
        0x31t
        0x3et
        0x3dt
        0x33t
        0x3at
        0x0t
        0x2ct
        0x31t
        0x3et
        0x2ft
        0x2ct
        0x37t
        0x30t
        0x2bt
        0x0t
        0x33t
        0x30t
        0x38t
        0x14t
        0x1ft
        0x10t
        0x13t
        0x1dt
        0x14t
        0x2et
        0x7t
        0x18t
        0x14t
        0x6t
        0x2et
        0x1dt
        0x1et
        0x16t
        0x74t
        0x7ft
        0x72t
        0x63t
        0x68t
        0x61t
        0x65t
        0x74t
        0x75t
        0x4et
        0x72t
        0x61t
        0x7ct
        0x77t
        0x73t
        0x70t
        0x75t
        0x4et
        0x72t
        0x7et
        0x7ct
        0x7ct
        0x70t
        0x7ft
        0x75t
        0x30t
        0x3dt
        0x39t
        0x3ct
        0x34t
        0x31t
        0x36t
        0x3dt
        0x40t
        0x4at
        0x46t
        0x47t
        0x42t
        0x46t
        0x4at
        0x4ct
        0x4et
        0x1ft
        0x18t
        0x0t
        0x17t
        0x1at
        0x1ft
        0x12t
        0x17t
        0x2t
        0x1ft
        0x19t
        0x18t
        0x29t
        0x14t
        0x13t
        0x1et
        0x17t
        0x0t
        0x1ft
        0x19t
        0x4t
        0x3bt
        0x3et
        0x39t
        0x3ct
        0x8t
        0x33t
        0x32t
        0x24t
        0x34t
        0x25t
        0x3et
        0x27t
        0x23t
        0x3et
        0x38t
        0x39t
        0x62t
        0x73t
        0x60t
        0x61t
        0x7bt
        0x7ct
        0x75t
        0xft
        0x1et
        0xat
        0xct
        0x1at
        0x20t
        0xbt
        0xdt
        0x1et
        0x11t
        0xct
        0x13t
        0x1et
        0xbt
        0x16t
        0x10t
        0x11t
        0x50t
        0x4ct
        0x41t
        0x59t
        0x7ft
        0x54t
        0x52t
        0x41t
        0x4et
        0x53t
        0x4ct
        0x41t
        0x54t
        0x49t
        0x4ft
        0x4et
        0x1et
        0x1ct
        0x1t
        0x3t
        0x1t
        0x1at
        0xbt
        0xat
        0x31t
        0x1at
        0x1ct
        0xft
        0x0t
        0x1dt
        0x2t
        0xft
        0x1at
        0x7t
        0x1t
        0x0t
        0x14t
        0x3t
        0x17t
        0x13t
        0x3t
        0x15t
        0x12t
        0x39t
        0xft
        0x2t
        0x24t
        0x39t
        0x36t
        0x27t
        0x24t
        0x3ft
        0x38t
        0x23t
        0xft
        0x12t
        0x1dt
        0xct
        0xft
        0x14t
        0x13t
        0x8t
        0x23t
        0x1ft
        0x13t
        0x11t
        0xct
        0xet
        0x19t
        0xft
        0xft
        0x23t
        0xdt
        0x9t
        0x1dt
        0x10t
        0x15t
        0x8t
        0x5t
        0x11t
        0xct
        0x3t
        0x12t
        0x11t
        0xat
        0xdt
        0x16t
        0x3dt
        0xet
        0xdt
        0x5t
        0x3dt
        0x6t
        0x7t
        0xet
        0x3t
        0x1bt
        0x3dt
        0x11t
        0x7t
        0x1t
        0xdt
        0xct
        0x6t
        0x28t
        0x34t
        0x38t
        0x32t
        0x3at
        0x37t
        0x4t
        0x38t
        0x34t
        0x35t
        0x2ft
        0x3et
        0x23t
        0x2ft
        0x67t
        0x64t
        0x7bt
        0x7at
        0x67t
        0x7bt
        0x66t
        0x71t
        0x70t
        0x4bt
        0x60t
        0x66t
        0x75t
        0x7at
        0x67t
        0x78t
        0x75t
        0x60t
        0x7dt
        0x7bt
        0x7at
        0x37t
        0x30t
        0x25t
        0x36t
        0x1bt
        0x36t
        0x25t
        0x30t
        0x2dt
        0x2at
        0x23t
        0x37t
        0x31t
        0x26t
        0x30t
        0x2dt
        0x30t
        0x28t
        0x21t
        0x8t
        0x15t
        0x8t
        0x10t
        0x19t
        0x62t
        0x64t
        0x72t
        0x73t
        0x48t
        0x65t
        0x72t
        0x67t
        0x78t
        0x65t
        0x63t
        0x48t
        0x62t
        0x65t
        0x7bt
        0x76t
        0x69t
        0x64t
        0x65t
        0x6ft
        0x5ft
        0x61t
        0x75t
        0x74t
        0x6ft
        0x70t
        0x6ct
        0x61t
        0x79t
        0x5ft
        0x65t
        0x6et
        0x61t
        0x62t
        0x6ct
        0x65t
        0x64t
        0x3et
        0x21t
        0x2ct
        0x2dt
        0x27t
        0x17t
        0x25t
        0x38t
        0x2ct
        0x2ft
        0x30t
        0x3dt
        0x3ct
        0x36t
        0x6t
        0x29t
        0x2bt
        0x3ct
        0x35t
        0x36t
        0x38t
        0x3dt
        0x6t
        0x2at
        0x30t
        0x23t
        0x3ct
        0x6t
        0x3bt
        0x20t
        0x2dt
        0x3ct
        0x2at
        0x7dt
        0x62t
        0x6ft
        0x6et
        0x64t
        0x54t
        0x7et
        0x79t
        0x67t
        0x28t
        0x37t
        0x3bt
        0x29t
        0x48t
        0x57t
        0x5bt
        0x49t
        0x5ft
        0x5ct
        0x57t
        0x52t
        0x57t
        0x4at
        0x47t
        0x61t
        0x5dt
        0x56t
        0x5bt
        0x5dt
        0x55t
        0x61t
        0x57t
        0x50t
        0x57t
        0x4at
        0x57t
        0x5ft
        0x52t
        0x61t
        0x5at
        0x5bt
        0x52t
        0x5ft
        0x47t
        0x50t
        0x4ft
        0x43t
        0x51t
        0x47t
        0x44t
        0x4ft
        0x4at
        0x4ft
        0x52t
        0x5ft
        0x79t
        0x45t
        0x4et
        0x43t
        0x45t
        0x4dt
        0x79t
        0x4ft
        0x48t
        0x52t
        0x43t
        0x54t
        0x50t
        0x47t
        0x4at
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "axrzCdv0FVVdCRJ2G5bzsKW6gzdnjkd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bTiRlDodVRVUvI5asAv5OrmPjdR2kQoL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0F0kzsbgf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9OhtkIX5JTQzZAf31yyS0L6RFdCICf7G"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "a5UohLNEI7iVSyxaj4LiJgBVL6R7sy1L"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7foeJoxu0TAivWs2uWCvQbVxkZa0ERHH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EHJaWrfXkxbvFmDXjSXoaOL8kiGJisUm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EwwWMCMqNj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/Wm;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;II)V
    .locals 1

    .line 70725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0a:Z

    .line 70726
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c9;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70727
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/c9;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    .line 70728
    iput p5, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:I

    .line 70729
    iput p6, p0, Lcom/facebook/ads/redexgen/X/c9;->A01:I

    .line 70730
    invoke-direct {p0, p2, p4}, Lcom/facebook/ads/redexgen/X/c9;->A09(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 70731
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

    .line 70732
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/c9;->A03(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 70733
    .local p0, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 70734
    .local p1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/facebook/ads/redexgen/X/cA;

    invoke-direct {v2, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/cA;-><init>(Lcom/facebook/ads/redexgen/X/c9;Ljava/util/Map;Ljava/util/Map;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A05:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70735
    :catch_0
    return-void
.end method

.method private A09(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 15

    .line 70736
    move-object v4, p0

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0X:Z

    if-nez v0, :cond_b

    .line 70737
    move-object/from16 v5, p1

    if-nez v5, :cond_0

    .line 70738
    return-void

    .line 70739
    :cond_0
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/c9;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    const/16 v2, 0x24

    const/16 v1, 0x17

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/L3;->A02(Landroid/content/Context;Ljava/lang/String;)V

    .line 70740
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0N:Ljava/lang/String;

    .line 70741
    const/16 v2, 0x20e

    const/16 v1, 0xa

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0P:Ljava/lang/String;

    .line 70742
    const/4 v3, 0x0

    const/16 v2, 0xd9

    const/16 v1, 0xc

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A00:I

    .line 70743
    const/16 v2, 0x183

    const/16 v1, 0xd

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0O:Ljava/lang/String;

    .line 70744
    const/16 v2, 0x190

    const/16 v1, 0xc

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/LI;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70745
    .local v5, "fbadCommand":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0A:Landroid/net/Uri;

    .line 70746
    const/16 v0, 0xc

    new-array v9, v0, [Ljava/lang/String;

    const/16 v2, 0xca

    const/16 v1, 0xf

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v3

    const/4 v6, 0x1

    const/16 v2, 0x288

    const/4 v1, 0x5

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v7, 0x2

    const/16 v6, 0x280

    sget-object v1, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70747
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    const-string v1, "TlQJd5WC0lASR9Q8MAbt7ktkUelwOYs1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v1, 0x8

    const/16 v0, 0x5f

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/4 v6, 0x3

    const/16 v2, 0x19c

    const/16 v1, 0x8

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v6, 0x4

    const/16 v2, 0xe5

    const/4 v1, 0x4

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v7, 0x5

    const/16 v2, 0x252

    const/16 v1, 0xe

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/4 v7, 0x6

    const/16 v2, 0x1c2

    const/16 v1, 0x10

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/4 v7, 0x7

    const/16 v2, 0x260

    const/16 v1, 0x15

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/16 v7, 0x8

    const/16 v2, 0xbc

    const/16 v1, 0xe

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/16 v7, 0x9

    const/16 v2, 0x1fa

    const/16 v1, 0x14

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/16 v7, 0xa

    const/16 v2, 0x1ea

    const/16 v1, 0x10

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    const/16 v7, 0xb

    const/16 v2, 0x1d9

    const/16 v1, 0x11

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 70748
    .local v0, "strKeys":[Ljava/lang/String;
    array-length v8, v9

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v2, v9, v7

    .line 70749
    .local v0, "key":Ljava/lang/String;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/c9;->A0U:Ljava/util/HashMap;

    invoke-static {v5, v2}, Lcom/facebook/ads/redexgen/X/LI;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70750
    .end local v0    # "key":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 70751
    :cond_3
    const/16 v2, 0xe9

    const/16 v1, 0xe

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/facebook/ads/redexgen/X/LI;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70752
    .local v0, "callToAction":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 70753
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0U:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70754
    :cond_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/bv;->A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/redexgen/X/bv;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 70755
    const/16 v2, 0x1a4

    const/4 v1, 0x4

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ja;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0I:Lcom/facebook/ads/redexgen/X/Ja;

    .line 70756
    const/16 v2, 0x1a8

    const/4 v1, 0x5

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ja;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0J:Lcom/facebook/ads/redexgen/X/Ja;

    .line 70757
    const/16 v2, 0x275

    const/16 v1, 0xb

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jb;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_6

    iput-object v7, v4, Lcom/facebook/ads/redexgen/X/c9;->A0K:Lcom/facebook/ads/redexgen/X/Jb;

    .line 70758
    const/16 v2, 0x28d

    const/16 v1, 0xf

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/LI;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0Q:Ljava/lang/String;

    .line 70759
    const/16 v2, 0x174

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0c:Z

    .line 70760
    const/16 v2, 0x161

    const/16 v1, 0x13

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0d:Z

    .line 70761
    const/16 v2, 0x239

    const/16 v1, 0x19

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A05:I

    .line 70762
    const/16 v2, 0x220

    const/16 v1, 0x19

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A04:I

    .line 70763
    const/16 v2, 0x2e0

    const/16 v1, 0x1f

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A07:I

    .line 70764
    const/16 v3, 0x3e8

    .line 70765
    const/16 v2, 0x2ff

    const/16 v1, 0x1a

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A08:I

    .line 70766
    const/16 v2, 0x9a

    const/16 v1, 0xf

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 70767
    .local v1, "adChoicesIconObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_5

    .line 70768
    :goto_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ja;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0H:Lcom/facebook/ads/redexgen/X/Ja;

    .line 70769
    :cond_5
    const/16 v2, 0xa9

    const/16 v1, 0x13

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/LI;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0M:Ljava/lang/String;

    .line 70770
    const/16 v2, 0x1ad

    const/16 v1, 0x15

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0h;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/0h;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0B:Lcom/facebook/ads/redexgen/X/0h;

    .line 70771
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    const-string v1, "X5CbMzGbwZ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-object v7, v4, Lcom/facebook/ads/redexgen/X/c9;->A0K:Lcom/facebook/ads/redexgen/X/Jb;

    .line 70772
    const/16 v2, 0x28d

    const/16 v1, 0xf

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/LI;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0Q:Ljava/lang/String;

    .line 70773
    const/16 v2, 0x174

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0c:Z

    .line 70774
    const/16 v2, 0x161

    const/16 v1, 0x13

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0d:Z

    .line 70775
    const/16 v2, 0x239

    const/16 v1, 0x19

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A05:I

    .line 70776
    const/16 v2, 0x220

    const/16 v1, 0x19

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A04:I

    .line 70777
    const/16 v2, 0x2e0

    const/16 v1, 0x1f

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A07:I

    .line 70778
    const/16 v3, 0x3e8

    .line 70779
    const/16 v2, 0x2ff

    const/16 v1, 0x1a

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A08:I

    .line 70780
    const/16 v2, 0x9a

    const/16 v1, 0xf

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 70781
    .local v1, "adChoicesIconObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_5

    goto/16 :goto_2

    .line 70782
    :goto_3
    :try_start_0
    const/16 v2, 0x150

    const/16 v1, 0x11

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70783
    :catch_0
    move-exception v0

    .line 70784
    .local p0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 70785
    :goto_4
    move-object v3, v0

    .line 70786
    .end local p0    # "e":Lorg/json/JSONException;
    :goto_5
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0j;->A01(Lorg/json/JSONArray;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0T:Ljava/util/Collection;

    .line 70787
    const/16 v2, 0x2d3

    const/16 v1, 0x9

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/LI;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0S:Ljava/lang/String;

    .line 70788
    const-wide/16 v1, -0x1

    .line 70789
    const/16 v6, 0x2bb

    const/16 v3, 0x18

    const/16 v0, 0x42

    invoke-static {v6, v3, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A09:J

    .line 70790
    const/16 v2, 0x2b2

    const/16 v1, 0x9

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/LI;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0R:Ljava/lang/String;

    .line 70791
    const/16 v2, 0x29c

    const/16 v1, 0x16

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 70792
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jf;->A03:Lcom/facebook/ads/redexgen/X/Jf;

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0L:Lcom/facebook/ads/redexgen/X/Jf;

    .line 70793
    :goto_6
    const/16 v2, 0x131

    const/16 v1, 0x1d

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0W:Z

    .line 70794
    const/16 v3, 0x64

    .line 70795
    const/16 v2, 0x10d

    const/16 v1, 0x24

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A03:I

    goto :goto_8

    .line 70796
    :cond_7
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 70797
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jf;->A05:Lcom/facebook/ads/redexgen/X/Jf;

    .line 70798
    :goto_7
    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0L:Lcom/facebook/ads/redexgen/X/Jf;

    goto :goto_6

    :cond_8
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jf;->A04:Lcom/facebook/ads/redexgen/X/Jf;

    goto :goto_7

    .line 70799
    :goto_8
    :try_start_1
    const/16 v2, 0x105

    const/16 v1, 0x8

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 70800
    .local p0, "carouselArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 70801
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 70802
    .local v0, "cardCount":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 70803
    .local v0, "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    const/4 v13, 0x0

    .local v0, "cardIndex":I
    :goto_9
    if-ge v13, v14, :cond_9

    .line 70804
    new-instance v8, Lcom/facebook/ads/redexgen/X/c9;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/c9;-><init>()V

    .line 70805
    .local v1, "adapter":Lcom/facebook/ads/redexgen/X/c9;
    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/c9;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70806
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/c9;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/c9;->A0N:Ljava/lang/String;

    .line 70807
    move-object v5, v8

    .end local v1    # "adapter":Lcom/facebook/ads/redexgen/X/c9;
    .local p0, "adapter":Lcom/facebook/ads/redexgen/X/c9;
    .local v1, "carouselArray":Lorg/json/JSONArray;
    .end local v0    # "cardIndex":I
    .local v0, "cardIndex":I
    .end local v0    # "cardIndex":I
    .local v0, "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/c9;->A07(Lcom/facebook/ads/redexgen/X/Wm;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;II)V

    .line 70808
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/c9;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/c9;->A0G:Lcom/facebook/ads/redexgen/X/JZ;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/c9;Lcom/facebook/ads/redexgen/X/8x;Lcom/facebook/ads/redexgen/X/JZ;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70809
    .end local p0    # "adapter":Lcom/facebook/ads/redexgen/X/c9;
    add-int/lit8 v13, v13, 0x1

    .end local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .restart local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    goto :goto_9

    .line 70810
    .end local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .end local v1    # "carouselArray":Lorg/json/JSONArray;
    .local p0, "carouselArray":Lorg/json/JSONArray;
    .restart local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .end local p0    # "carouselArray":Lorg/json/JSONArray;
    .end local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .end local v0
    .restart local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .restart local v1    # "carouselArray":Lorg/json/JSONArray;
    :cond_9
    iput-object v6, v4, Lcom/facebook/ads/redexgen/X/c9;->A0V:Ljava/util/List;

    goto :goto_a
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70811
    :catch_1
    move-exception v7

    .line 70812
    .local p0, "je":Lorg/json/JSONException;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70813
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/8e;->A1t:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v7}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 70814
    const/16 v2, 0x1d2

    const/4 v1, 0x7

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 70815
    sget-object v3, Lcom/facebook/ads/redexgen/X/c9;->A0g:Ljava/lang/String;

    const/16 v2, 0x7c

    const/16 v1, 0x1e

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70816
    .end local p0    # "je":Lorg/json/JSONException;
    :cond_a
    :goto_a
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0X:Z

    .line 70817
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0A()Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/c9;->A0Y:Z

    .line 70818
    return-void

    .line 70819
    .end local v5    # "fbadCommand":Ljava/lang/String;
    .end local v0    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    .end local v1    # "carouselArray":Lorg/json/JSONArray;
    .end local v0
    .end local v0
    :cond_b
    const/16 v2, 0x9

    const/16 v1, 0x1b

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0A()Z
    .locals 4

    .line 70820
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0a:Z

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/c9;->A0U:Ljava/util/HashMap;

    const/16 v2, 0xca

    const/16 v1, 0xf

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/c9;->A0U:Ljava/util/HashMap;

    .line 70821
    const/16 v2, 0x288

    const/4 v1, 0x5

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0a:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0I:Lcom/facebook/ads/redexgen/X/Ja;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0a:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0J:Lcom/facebook/ads/redexgen/X/Ja;

    if-nez v0, :cond_3

    .line 70822
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE_BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 70823
    :goto_0
    return v0

    .line 70824
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0B()I
    .locals 1

    .line 70825
    iget v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A00:I

    return v0
.end method

.method public final A0C()I
    .locals 1

    .line 70826
    iget v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A01:I

    return v0
.end method

.method public final A0D()I
    .locals 1

    .line 70827
    iget v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:I

    return v0
.end method

.method public final A0E()I
    .locals 1

    .line 70828
    iget v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A03:I

    return v0
.end method

.method public final A0F()I
    .locals 2

    .line 70829
    iget v1, p0, Lcom/facebook/ads/redexgen/X/c9;->A04:I

    if-ltz v1, :cond_0

    const/16 v0, 0x64

    if-le v1, v0, :cond_1

    .line 70830
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 70831
    :cond_1
    return v1
.end method

.method public final A0G()I
    .locals 1

    .line 70832
    iget v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A06:I

    return v0
.end method

.method public final A0H()I
    .locals 1

    .line 70833
    iget v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A07:I

    return v0
.end method

.method public final A0I()I
    .locals 1

    .line 70834
    iget v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A08:I

    return v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/16;
    .locals 1

    .line 70835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0D:Lcom/facebook/ads/redexgen/X/16;

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/Ja;
    .locals 1

    .line 70836
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70837
    const/4 v0, 0x0

    return-object v0

    .line 70838
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0H:Lcom/facebook/ads/redexgen/X/Ja;

    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/Ja;
    .locals 1

    .line 70839
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70840
    const/4 v0, 0x0

    return-object v0

    .line 70841
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0J:Lcom/facebook/ads/redexgen/X/Ja;

    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/Ja;
    .locals 1

    .line 70842
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70843
    const/4 v0, 0x0

    return-object v0

    .line 70844
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0I:Lcom/facebook/ads/redexgen/X/Ja;

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/Jb;
    .locals 4

    .line 70845
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70846
    const/4 v0, 0x0

    return-object v0

    .line 70847
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c9;->A04()V

    .line 70848
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/c9;->A0K:Lcom/facebook/ads/redexgen/X/Jb;

    sget-object v1, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    const-string v1, "bcTDr6dd93AawoZKcM1UEko53uDJFnAQ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/Jf;
    .locals 1

    .line 70849
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70850
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jf;->A03:Lcom/facebook/ads/redexgen/X/Jf;

    return-object v0

    .line 70851
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0L:Lcom/facebook/ads/redexgen/X/Jf;

    return-object v0
.end method

.method public final A0P()Ljava/lang/Long;
    .locals 4

    .line 70852
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70853
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/c9;->A0f:[Ljava/lang/String;

    const-string v1, "0casAsai3wAQSuMmrSTrXni5Wjyn98Oa"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3

    .line 70854
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A09:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final A0Q()Ljava/lang/String;
    .locals 4

    .line 70855
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70856
    const/4 v0, 0x0

    return-object v0

    .line 70857
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c9;->A04()V

    .line 70858
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/c9;->A0U:Ljava/util/HashMap;

    const/16 v2, 0xe5

    const/4 v1, 0x4

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0R()Ljava/lang/String;
    .locals 1

    .line 70859
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70860
    const/4 v0, 0x0

    return-object v0

    .line 70861
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0M:Ljava/lang/String;

    return-object v0
.end method

.method public final A0S()Ljava/lang/String;
    .locals 3

    .line 70862
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70863
    const/4 v0, 0x0

    return-object v0

    .line 70864
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0T()Ljava/lang/String;
    .locals 1

    .line 70865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0P:Ljava/lang/String;

    return-object v0
.end method

.method public final A0U()Ljava/lang/String;
    .locals 1

    .line 70866
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70867
    const/4 v0, 0x0

    return-object v0

    .line 70868
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0R:Ljava/lang/String;

    return-object v0
.end method

.method public final A0V()Ljava/lang/String;
    .locals 1

    .line 70869
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70870
    const/4 v0, 0x0

    return-object v0

    .line 70871
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0S:Ljava/lang/String;

    return-object v0
.end method

.method public final A0W(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 70872
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70873
    const/4 v0, 0x0

    return-object v0

    .line 70874
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c9;->A04()V

    .line 70875
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0U:Ljava/util/HashMap;

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
            "Lcom/facebook/ads/redexgen/X/T6;",
            ">;"
        }
    .end annotation

    .line 70876
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70877
    const/4 v0, 0x0

    return-object v0

    .line 70878
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0V:Ljava/util/List;

    return-object v0
.end method

.method public final A0Y()V
    .locals 2

    .line 70879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0V:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/T6;

    .line 70881
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/T6;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->unregisterView()V

    .line 70882
    .end local v0    # "internalNativeAd":Lcom/facebook/ads/redexgen/X/T6;
    goto :goto_0

    .line 70883
    :cond_0
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/11;)V
    .locals 0

    .line 70884
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c9;->A0C:Lcom/facebook/ads/redexgen/X/11;

    .line 70885
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/11;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/JZ;)V
    .locals 4

    .line 70886
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c9;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70887
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/c9;->A0C:Lcom/facebook/ads/redexgen/X/11;

    .line 70888
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/c9;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    .line 70889
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/c9;->A0G:Lcom/facebook/ads/redexgen/X/JZ;

    .line 70890
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1n;->A03()Lorg/json/JSONObject;

    move-result-object v3

    .line 70891
    .local p0, "dataObject":Lorg/json/JSONObject;
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1n;->A01()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    .line 70892
    .local p1, "definition":Lcom/facebook/ads/redexgen/X/8x;
    if-eqz v0, :cond_0

    .line 70893
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A06()I

    move-result v0

    .line 70894
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A06:I

    .line 70895
    const/16 v2, 0x14e

    const/4 v1, 0x2

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/LI;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/c9;->A09(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 70896
    invoke-static {p1, p0, p3}, Lcom/facebook/ads/redexgen/X/0j;->A04(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/0i;Lcom/facebook/ads/redexgen/X/JC;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70897
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A3y()V

    .line 70898
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jn;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/redexgen/X/11;->AAx(Lcom/facebook/ads/redexgen/X/c9;Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70899
    return-void

    .line 70900
    :cond_0
    const/16 v0, 0xc8

    goto :goto_0

    .line 70901
    :cond_1
    if-eqz p2, :cond_2

    .line 70902
    invoke-interface {p2, p0}, Lcom/facebook/ads/redexgen/X/11;->AAu(Lcom/facebook/ads/redexgen/X/c9;)V

    .line 70903
    :cond_2
    return-void
.end method

.method public final A0b(Ljava/util/Map;)V
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

    .line 70904
    .local v2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70905
    return-void

    .line 70906
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1G(Landroid/content/Context;)Z

    move-result v0

    .line 70907
    .local p0, "shouldBlockLockscreenClicks":Z
    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lk;->A03(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70908
    sget-object v3, Lcom/facebook/ads/redexgen/X/c9;->A0g:Ljava/lang/String;

    const/16 v2, 0x3b

    const/16 v1, 0x1f

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70909
    return-void

    .line 70910
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 70911
    .local p1, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 70912
    invoke-interface {v4, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 70913
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/c9;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    const/16 v2, 0x5a

    const/16 v1, 0xc

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/L3;->A02(Landroid/content/Context;Ljava/lang/String;)V

    .line 70914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0C:Lcom/facebook/ads/redexgen/X/11;

    if-eqz v0, :cond_3

    .line 70915
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/11;->AAt(Lcom/facebook/ads/redexgen/X/c9;)V

    .line 70916
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0a:Z

    if-eqz v0, :cond_4

    .line 70917
    iget v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xfe

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70918
    iget v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A01:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf7

    const/4 v1, 0x7

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70919
    :cond_4
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/c9;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/c9;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c9;->A0N:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0A:Landroid/net/Uri;

    .line 70920
    invoke-static {v3, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/0g;->A00(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    .line 70921
    .local v0, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    if-eqz v0, :cond_5

    .line 70922
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0f;->A0D()V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70923
    :catch_0
    move-exception v4

    .line 70924
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/c9;->A0g:Ljava/lang/String;

    const/16 v2, 0x66

    const/16 v1, 0x16

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70925
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_5
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

    .line 70926
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c9;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    if-eqz v1, :cond_0

    .line 70927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0N:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/JC;->A8T(Ljava/lang/String;Ljava/util/Map;)V

    .line 70928
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

    .line 70929
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70930
    return-void

    .line 70931
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0Z:Z

    if-nez v0, :cond_8

    .line 70932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0C:Lcom/facebook/ads/redexgen/X/11;

    if-eqz v0, :cond_1

    .line 70933
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/11;->AAv(Lcom/facebook/ads/redexgen/X/c9;)V

    .line 70934
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 70935
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 70936
    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 70937
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0a:Z

    if-eqz v0, :cond_3

    .line 70938
    iget v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0xfe

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70939
    iget v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A01:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0xf7

    const/4 v1, 0x7

    const/16 v0, 0x43

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/c9;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70940
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A5x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    if-eqz v0, :cond_5

    .line 70941
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0a:Z

    if-nez v0, :cond_4

    .line 70942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Z()V

    .line 70943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0O:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/24;->A01(Ljava/lang/String;)V

    .line 70944
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c9;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A5x()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JC;->A8c(Ljava/lang/String;Ljava/util/Map;)V

    .line 70945
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0l()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0m()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 70946
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/c9;->A08(Ljava/util/Map;Ljava/util/Map;)V

    .line 70947
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0Z:Z

    .line 70948
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

    .line 70949
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c9;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    if-eqz v1, :cond_0

    .line 70950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0N:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/JC;->A8s(Ljava/lang/String;Ljava/util/Map;)V

    .line 70951
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

    .line 70952
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c9;->A0F:Lcom/facebook/ads/redexgen/X/JC;

    if-eqz v1, :cond_0

    .line 70953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0N:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/JC;->A8t(Ljava/lang/String;Ljava/util/Map;)V

    .line 70954
    :cond_0
    return-void
.end method

.method public final A0g()Z
    .locals 1

    .line 70955
    const/4 v0, 0x1

    return v0
.end method

.method public final A0h()Z
    .locals 1

    .line 70956
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0A:Landroid/net/Uri;

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

    .line 70957
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0X:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0Y:Z

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

    .line 70958
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0W:Z

    return v0
.end method

.method public final A0k()Z
    .locals 1

    .line 70959
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0a:Z

    return v0
.end method

.method public final A0l()Z
    .locals 1

    .line 70960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70961
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 70962
    :goto_0
    return v0

    .line 70963
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0m()Z
    .locals 1

    .line 70964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70965
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c9;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 70966
    :goto_0
    return v0

    .line 70967
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A5x()Ljava/lang/String;
    .locals 1

    .line 70968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0N:Ljava/lang/String;

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

    .line 70969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0T:Ljava/util/Collection;

    return-object v0
.end method

.method public final A6e()Lcom/facebook/ads/redexgen/X/0h;
    .locals 1

    .line 70970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A0B:Lcom/facebook/ads/redexgen/X/0h;

    return-object v0
.end method

.method public A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 70971
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 0

    .line 70972
    return-void
.end method
