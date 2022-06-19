.class public final Lcom/facebook/ads/redexgen/X/AN;
.super Lcom/facebook/ads/redexgen/X/Oj;
.source ""


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:Ljava/lang/String;


# instance fields
.field public A00:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/NativeAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/JC;

.field public A03:Lcom/facebook/ads/redexgen/X/MF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/7y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Lcom/facebook/ads/redexgen/X/14;

.field public final A09:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0A:Lcom/facebook/ads/redexgen/X/L6;

.field public final A0B:Lcom/facebook/ads/redexgen/X/KS;

.field public final A0C:Lcom/facebook/ads/redexgen/X/KN;

.field public final A0D:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 21346
    invoke-static {}, Lcom/facebook/ads/redexgen/X/AN;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AN;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AN;->A0G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1

    .line 21347
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 21348
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A0D:Ljava/lang/String;

    .line 21349
    new-instance v0, Lcom/facebook/ads/redexgen/X/AX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AX;-><init>(Lcom/facebook/ads/redexgen/X/AN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A0C:Lcom/facebook/ads/redexgen/X/KN;

    .line 21350
    new-instance v0, Lcom/facebook/ads/redexgen/X/AR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AR;-><init>(Lcom/facebook/ads/redexgen/X/AN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A0B:Lcom/facebook/ads/redexgen/X/KS;

    .line 21351
    new-instance v0, Lcom/facebook/ads/redexgen/X/AP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AP;-><init>(Lcom/facebook/ads/redexgen/X/AN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A0A:Lcom/facebook/ads/redexgen/X/L6;

    .line 21352
    new-instance v0, Lcom/facebook/ads/redexgen/X/14;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/14;-><init>(Lcom/facebook/ads/redexgen/X/AN;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A08:Lcom/facebook/ads/redexgen/X/14;

    .line 21353
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AN;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    .line 21354
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AN;->A02()V

    .line 21355
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21356
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;)V

    .line 21357
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A0D:Ljava/lang/String;

    .line 21358
    new-instance v0, Lcom/facebook/ads/redexgen/X/AX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AX;-><init>(Lcom/facebook/ads/redexgen/X/AN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A0C:Lcom/facebook/ads/redexgen/X/KN;

    .line 21359
    new-instance v0, Lcom/facebook/ads/redexgen/X/AR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AR;-><init>(Lcom/facebook/ads/redexgen/X/AN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A0B:Lcom/facebook/ads/redexgen/X/KS;

    .line 21360
    new-instance v0, Lcom/facebook/ads/redexgen/X/AP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AP;-><init>(Lcom/facebook/ads/redexgen/X/AN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A0A:Lcom/facebook/ads/redexgen/X/L6;

    .line 21361
    new-instance v0, Lcom/facebook/ads/redexgen/X/14;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/14;-><init>(Lcom/facebook/ads/redexgen/X/AN;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A08:Lcom/facebook/ads/redexgen/X/14;

    .line 21362
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AN;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    .line 21363
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AN;->A02()V

    .line 21364
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 21365
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V

    .line 21366
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A0D:Ljava/lang/String;

    .line 21367
    new-instance v0, Lcom/facebook/ads/redexgen/X/AX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AX;-><init>(Lcom/facebook/ads/redexgen/X/AN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A0C:Lcom/facebook/ads/redexgen/X/KN;

    .line 21368
    new-instance v0, Lcom/facebook/ads/redexgen/X/AR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AR;-><init>(Lcom/facebook/ads/redexgen/X/AN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A0B:Lcom/facebook/ads/redexgen/X/KS;

    .line 21369
    new-instance v0, Lcom/facebook/ads/redexgen/X/AP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AP;-><init>(Lcom/facebook/ads/redexgen/X/AN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A0A:Lcom/facebook/ads/redexgen/X/L6;

    .line 21370
    new-instance v0, Lcom/facebook/ads/redexgen/X/14;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/14;-><init>(Lcom/facebook/ads/redexgen/X/AN;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A08:Lcom/facebook/ads/redexgen/X/14;

    .line 21371
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AN;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    .line 21372
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AN;->A02()V

    .line 21373
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/AN;)Lcom/facebook/ads/redexgen/X/MF;
    .locals 0

    .line 21374
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/AN;->A03:Lcom/facebook/ads/redexgen/X/MF;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/AN;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v3, p1, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/AN;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/AN;->A0F:[Ljava/lang/String;

    const-string v1, "GV7dEmS9dQikFIsLGq03TvmmBp0PGqms"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    xor-int/2addr v3, p2

    xor-int/lit8 v0, v3, 0x4

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 4

    .line 21375
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AN;->A0C:Lcom/facebook/ads/redexgen/X/KN;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AN;->A0B:Lcom/facebook/ads/redexgen/X/KS;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AN;->A0A:Lcom/facebook/ads/redexgen/X/L6;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A03([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 21376
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x14a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AN;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x20t
        0x2t
        0xdt
        0x44t
        0x17t
        0x43t
        0x10t
        0x17t
        0x2t
        0x11t
        0x17t
        0x43t
        0x22t
        0x16t
        0x7t
        0xat
        0x6t
        0xdt
        0x0t
        0x6t
        0x2dt
        0x6t
        0x17t
        0x14t
        0xct
        0x11t
        0x8t
        0x22t
        0x0t
        0x17t
        0xat
        0x15t
        0xat
        0x17t
        0x1at
        0x4dt
        0x43t
        0x2et
        0x2t
        0x8t
        0x6t
        0x43t
        0x10t
        0x16t
        0x11t
        0x6t
        0x43t
        0x17t
        0xbt
        0x2t
        0x17t
        0x43t
        0xat
        0x17t
        0x44t
        0x10t
        0x43t
        0xat
        0xdt
        0x43t
        0x1at
        0xct
        0x16t
        0x11t
        0x43t
        0x22t
        0xdt
        0x7t
        0x11t
        0xct
        0xat
        0x7t
        0x2et
        0x2t
        0xdt
        0xat
        0x5t
        0x6t
        0x10t
        0x17t
        0x4dt
        0x1bt
        0xet
        0xft
        0x43t
        0x5t
        0xat
        0xft
        0x6t
        0x4dt
        0x1dt
        0x2at
        0x2at
        0x37t
        0x2at
        0x62t
        0x78t
        0x23t
        0x27t
        0x24t
        0x10t
        0x1t
        0xct
        0x0t
        0xbt
        0x6t
        0x0t
        0x2bt
        0x0t
        0x11t
        0x12t
        0xat
        0x17t
        0xet
        0x15t
        0x2dt
        0x2bt
        0x2ct
        0x78t
        0x2bt
        0x3dt
        0x2ct
        0x1bt
        0x34t
        0x31t
        0x3dt
        0x36t
        0x2ct
        0xct
        0x37t
        0x33t
        0x3dt
        0x36t
        0x78t
        0x3et
        0x31t
        0x2at
        0x2bt
        0x2ct
        0x3t
        0x3bt
        0x3dt
        0x3at
        0x6et
        0x3dt
        0x2bt
        0x3at
        0x18t
        0x27t
        0x2at
        0x2bt
        0x21t
        0x1bt
        0x1ct
        0x7t
        0x6et
        0x21t
        0x3ct
        0x6et
        0x3dt
        0x2bt
        0x3at
        0x18t
        0x27t
        0x2at
        0x2bt
        0x21t
        0x3t
        0x1et
        0xat
        0x6et
        0x28t
        0x27t
        0x3ct
        0x3dt
        0x3at
        0x1et
        0x11t
        0x20t
        0x1et
        0x1ct
        0xbt
        0x16t
        0x9t
        0x16t
        0xbt
        0x6t
        0x33t
        0x3ct
        0x39t
        0x35t
        0x3et
        0x24t
        0x4t
        0x3ft
        0x3bt
        0x35t
        0x3et
        0x3et
        0x2ft
        0x3ct
        0x3dt
        0x27t
        0x20t
        0x29t
        0x17t
        0x15t
        0x2t
        0x3t
        0x2t
        0x1t
        0xet
        0x9t
        0x2t
        0x3t
        0x28t
        0x15t
        0xet
        0x2t
        0x9t
        0x13t
        0x6t
        0x13t
        0xet
        0x8t
        0x9t
        0x2ct
        0x2t
        0x1et
        0x56t
        0x4dt
        0x4at
        0x52t
        0x56t
        0x46t
        0x6at
        0x47t
        0x2at
        0x2ct
        0x3at
        0x11t
        0x3et
        0x2bt
        0x36t
        0x29t
        0x3at
        0x1ct
        0x2bt
        0x3et
        0x1dt
        0x2at
        0x2bt
        0x2bt
        0x30t
        0x31t
        0x75t
        0x6at
        0x67t
        0x66t
        0x6ct
        0x4ft
        0x6ct
        0x64t
        0x64t
        0x66t
        0x71t
        0x55t
        0x4at
        0x47t
        0x46t
        0x4ct
        0x6et
        0x73t
        0x67t
        0x42t
        0x5dt
        0x50t
        0x51t
        0x5bt
        0x67t
        0x51t
        0x51t
        0x5ft
        0x60t
        0x5dt
        0x59t
        0x51t
        0x63t
        0x7ct
        0x71t
        0x70t
        0x7at
        0x40t
        0x47t
        0x59t
        0x11t
        0xet
        0x3t
        0x2t
        0x8t
        0x38t
        0x13t
        0xet
        0xat
        0x2t
        0x38t
        0x17t
        0x8t
        0xbt
        0xbt
        0xet
        0x9t
        0x0t
        0x38t
        0xet
        0x9t
        0x13t
        0x2t
        0x15t
        0x11t
        0x6t
        0xbt
        0x13t
        0xct
        0x0t
        0x12t
        0x31t
        0x1ct
        0x15t
        0x0t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Cb7nBOTqt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Uv90YERdy9SZ9btNePue9j4WSufKww0d"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5tFdsnJl1aHC8QazlewrqKxrXvRcdsO5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4XUHzfDXngka"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6zmG8GCKaenNI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iTvfTfiU680tAW5ZUJpNe0fUcB62AaOp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iIjhxtVkNHrsB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9VdyyBhNHsky"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AN;->A0F:[Ljava/lang/String;

    return-void
.end method

.method private A05(Landroid/content/Intent;)V
    .locals 6

    .line 21377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A04:Lcom/facebook/ads/redexgen/X/7y;

    if-nez v0, :cond_0

    .line 21378
    const/16 v2, 0x72

    const/16 v1, 0x19

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AN;->A06(Ljava/lang/String;)V

    .line 21379
    return-void

    .line 21380
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Landroid/net/Uri;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A07:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 21381
    const/16 v2, 0x8b

    const/16 v1, 0x25

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AN;->A06(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/AN;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21382
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/AN;->A0F:[Ljava/lang/String;

    const-string v1, "rwc2"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    .line 21383
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AN;->A06:Ljava/lang/String;

    const/16 v2, 0xed

    const/16 v1, 0x12

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21384
    sget-object v3, Lcom/facebook/ads/redexgen/X/KM;->A05:Lcom/facebook/ads/redexgen/X/KM;

    const/16 v2, 0x142

    const/16 v1, 0x8

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11f

    const/16 v1, 0x8

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21386
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AN;->A05:Ljava/lang/String;

    if-nez v3, :cond_3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v3

    .line 21387
    :cond_3
    const/16 v2, 0xbb

    const/16 v1, 0xb

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21388
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AN;->A07:Ljava/lang/String;

    const/16 v2, 0x10a

    const/16 v1, 0x8

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21389
    const/16 v3, 0xd

    const/16 v2, 0xcd

    const/16 v1, 0x18

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21390
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oj;->getCurrentPositionInMillis()I

    move-result v3

    const/16 v2, 0x112

    const/16 v1, 0xd

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21391
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/AN;->A0D:Ljava/lang/String;

    const/16 v5, 0xe5

    const/16 v3, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/AN;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/AN;->A0F:[Ljava/lang/String;

    const-string v1, "bFTSk0Gp6QusC65PcsD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v0, 0x27

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21392
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A04:Lcom/facebook/ads/redexgen/X/7y;

    .line 21393
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0W()Landroid/os/Bundle;

    move-result-object v3

    .line 21394
    const/16 v2, 0xff

    const/16 v1, 0xb

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 21395
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oj;->getVideoProgressReportIntervalMs()I

    move-result v3

    .line 21396
    const/16 v2, 0x127

    const/16 v1, 0x1b

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21397
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21398
    return-void
.end method

.method private A06(Ljava/lang/String;)V
    .locals 7

    .line 21399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    .line 21400
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/8e;->A1r:I

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 21401
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5a

    const/4 v1, 0x7

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21402
    const/16 v2, 0xc6

    const/4 v1, 0x7

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 21403
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21404
    sget-object v0, Lcom/facebook/ads/redexgen/X/AN;->A0G:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21405
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0j()V
    .locals 1

    .line 21406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A01:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 21407
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->onCtaBroadcast()V

    .line 21408
    :cond_0
    return-void
.end method

.method public final A0k()V
    .locals 7

    .line 21409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kr;->A04(Lcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v2

    .line 21410
    .local p0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/AN;->A05(Landroid/content/Intent;)V

    .line 21411
    const/4 v1, 0x0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0c(ZI)V

    .line 21412
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/AN;->setVisibility(I)V

    .line 21413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Kr;->A0A(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21414
    :catch_0
    move-exception v5

    .line 21415
    .local v0, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    .line 21416
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A05:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 21417
    const/16 v2, 0xb0

    const/16 v1, 0xb

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 21418
    const/16 v2, 0x61

    const/16 v1, 0x11

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21419
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getListener()Lcom/facebook/ads/redexgen/X/MF;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A03:Lcom/facebook/ads/redexgen/X/MF;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 21421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A0D:Ljava/lang/String;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 21422
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Oj;->onAttachedToWindow()V

    .line 21423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A08:Lcom/facebook/ads/redexgen/X/14;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/14;->A03()V

    .line 21424
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 21425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A08:Lcom/facebook/ads/redexgen/X/14;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/14;->A04()V

    .line 21426
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Oj;->onDetachedFromWindow()V

    .line 21427
    return-void
.end method

.method public setAdEventManager(Lcom/facebook/ads/redexgen/X/JC;)V
    .locals 0

    .line 21428
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AN;->A02:Lcom/facebook/ads/redexgen/X/JC;

    .line 21429
    return-void
.end method

.method public setClientToken(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A04:Lcom/facebook/ads/redexgen/X/7y;

    if-eqz v0, :cond_0

    .line 21431
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7y;->A0h()V

    .line 21432
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AN;->A05:Ljava/lang/String;

    .line 21433
    if-eqz p1, :cond_1

    .line 21434
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AN;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AN;->A02:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v2, v1, p0, p1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Oj;Ljava/lang/String;)V

    .line 21435
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A04:Lcom/facebook/ads/redexgen/X/7y;

    .line 21436
    return-void

    .line 21437
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableBackgroundVideo(Z)V
    .locals 1

    .line 21438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q4;->setBackgroundPlaybackEnabled(Z)V

    .line 21439
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/MF;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/MF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21440
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AN;->A03:Lcom/facebook/ads/redexgen/X/MF;

    .line 21441
    return-void
.end method

.method public setNativeAd(Lcom/facebook/ads/NativeAd;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/NativeAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21442
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AN;->A01:Lcom/facebook/ads/NativeAd;

    .line 21443
    return-void
.end method

.method public setVideoCTA(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21444
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AN;->A06:Ljava/lang/String;

    .line 21445
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21446
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A04:Lcom/facebook/ads/redexgen/X/7y;

    if-nez v0, :cond_0

    .line 21447
    const/16 v2, 0x72

    const/16 v1, 0x19

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AN;->A06(Ljava/lang/String;)V

    .line 21448
    return-void

    .line 21449
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AN;->A07:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/AN;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21450
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/AN;->A0F:[Ljava/lang/String;

    const-string v1, "ao7Mn74HmNnh4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "E6rOC8IWnX5Ja"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Oj;->setVideoMPD(Ljava/lang/String;)V

    .line 21451
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21452
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A04:Lcom/facebook/ads/redexgen/X/7y;

    if-nez v0, :cond_0

    .line 21453
    const/16 v2, 0x72

    const/16 v1, 0x19

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AN;->A06(Ljava/lang/String;)V

    .line 21454
    return-void

    .line 21455
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Landroid/net/Uri;

    .line 21456
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Oj;->setVideoURI(Landroid/net/Uri;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/AN;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 21457
    sget-object v2, Lcom/facebook/ads/redexgen/X/AN;->A0F:[Ljava/lang/String;

    const-string v1, "z2OQUaNXEwktMvnJ8h1OzGBt0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
