.class public final Lcom/facebook/ads/redexgen/X/HO;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/redexgen/X/Q9;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;

.field public static final A0P:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Landroid/net/Uri;

.field public A08:Landroid/view/Surface;

.field public A09:Landroid/view/View;

.field public A0A:Landroid/widget/MediaController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0B:Lcom/facebook/ads/redexgen/X/PO;

.field public A0C:Lcom/facebook/ads/redexgen/X/QB;

.field public A0D:Lcom/facebook/ads/redexgen/X/QB;

.field public A0E:Lcom/facebook/ads/redexgen/X/QC;

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public final A0K:J

.field public final A0L:Landroid/widget/MediaController$MediaPlayerControl;

.field public final A0M:Lcom/facebook/ads/redexgen/X/XJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 35764
    invoke-static {}, Lcom/facebook/ads/redexgen/X/HO;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HO;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/HO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HO;->A0P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 2

    .line 35765
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 35766
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    .line 35767
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    .line 35768
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0I:Z

    .line 35769
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    .line 35770
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A05:I

    .line 35771
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A04:I

    .line 35772
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A00:F

    .line 35773
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0H:Z

    .line 35774
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A01:I

    .line 35775
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0F:Z

    .line 35776
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0J:Z

    .line 35777
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A02:I

    .line 35778
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0G:Z

    .line 35779
    sget-object v0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/redexgen/X/PO;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    .line 35780
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q6;-><init>(Lcom/facebook/ads/redexgen/X/HO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    .line 35781
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    .line 35782
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;)V
    .locals 2

    .line 35783
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35784
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    .line 35785
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    .line 35786
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0I:Z

    .line 35787
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    .line 35788
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A05:I

    .line 35789
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A04:I

    .line 35790
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A00:F

    .line 35791
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0H:Z

    .line 35792
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A01:I

    .line 35793
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0F:Z

    .line 35794
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0J:Z

    .line 35795
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A02:I

    .line 35796
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0G:Z

    .line 35797
    sget-object v0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/redexgen/X/PO;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    .line 35798
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q6;-><init>(Lcom/facebook/ads/redexgen/X/HO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    .line 35799
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    .line 35800
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 35801
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35802
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    .line 35803
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    .line 35804
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0I:Z

    .line 35805
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    .line 35806
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A05:I

    .line 35807
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A04:I

    .line 35808
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A00:F

    .line 35809
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0H:Z

    .line 35810
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A01:I

    .line 35811
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0F:Z

    .line 35812
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0J:Z

    .line 35813
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A02:I

    .line 35814
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0G:Z

    .line 35815
    sget-object v0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/redexgen/X/PO;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    .line 35816
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q6;-><init>(Lcom/facebook/ads/redexgen/X/HO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    .line 35817
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    .line 35818
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/HO;)Landroid/media/MediaPlayer;
    .locals 0

    .line 35819
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/HO;)Landroid/widget/MediaController;
    .locals 0

    .line 35820
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0A:Landroid/widget/MediaController;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/HO;)Lcom/facebook/ads/redexgen/X/QC;
    .locals 0

    .line 35821
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0E:Lcom/facebook/ads/redexgen/X/QC;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/HO;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x72

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

    const/16 v0, 0x1a0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HO;->A0N:[B

    return-void

    :array_0
    .array-data 1
        0x59t
        0x57t
        0x5bt
        0x59t
        0x1et
        0x3t
        0xft
        0x9t
        0x1at
        0x59t
        0x5bt
        0x41t
        0x5bt
        0x59t
        0x39t
        0x66t
        0x69t
        0x4bt
        0x44t
        0x44t
        0x45t
        0x5et
        0xat
        0x5at
        0x58t
        0x4ft
        0x5at
        0x4bt
        0x58t
        0x4ft
        0xat
        0x47t
        0x4ft
        0x4et
        0x43t
        0x4bt
        0xat
        0x5at
        0x46t
        0x4bt
        0x53t
        0x4ft
        0x58t
        0xat
        0x5dt
        0x43t
        0x5et
        0x42t
        0xat
        0x79t
        0x5ft
        0x58t
        0x4ct
        0x4bt
        0x49t
        0x4ft
        0x7et
        0x4ft
        0x52t
        0x5et
        0x5ft
        0x58t
        0x4ft
        0x10t
        0xat
        0x2dt
        0x1t
        0x1bt
        0x2t
        0xat
        0x0t
        0x49t
        0x1at
        0x4et
        0x1ct
        0xbt
        0x1at
        0x1ct
        0x7t
        0xbt
        0x18t
        0xbt
        0x4et
        0x18t
        0x7t
        0xat
        0xbt
        0x1t
        0x4et
        0x7t
        0x0t
        0x8t
        0x1t
        0x1ct
        0x3t
        0xft
        0x1at
        0x7t
        0x1t
        0x0t
        0x5dt
        0x7at
        0x72t
        0x77t
        0x7et
        0x7ft
        0x3bt
        0x6ft
        0x74t
        0x3bt
        0x74t
        0x6bt
        0x7et
        0x75t
        0x3bt
        0x7at
        0x68t
        0x68t
        0x7et
        0x6ft
        0x68t
        0x3bt
        0xft
        0x27t
        0x27t
        0x2ft
        0x24t
        0x2dt
        0x68t
        0x29t
        0x24t
        0x3ft
        0x29t
        0x31t
        0x3bt
        0x68t
        0x3ct
        0x20t
        0x3at
        0x27t
        0x3ft
        0x68t
        0x29t
        0x26t
        0x68t
        0x2dt
        0x30t
        0x2bt
        0x2dt
        0x38t
        0x3ct
        0x21t
        0x27t
        0x26t
        0x68t
        0x3ft
        0x21t
        0x3ct
        0x20t
        0x68t
        0x3bt
        0x2dt
        0x3ct
        0xat
        0x29t
        0x2bt
        0x23t
        0x2ft
        0x3at
        0x27t
        0x3dt
        0x26t
        0x2ct
        0xct
        0x3at
        0x29t
        0x3ft
        0x29t
        0x2at
        0x24t
        0x2dt
        0x68t
        0x27t
        0x26t
        0x68t
        0x6t
        0x27t
        0x3dt
        0x2ft
        0x29t
        0x3ct
        0x68t
        0x29t
        0x2at
        0x27t
        0x3et
        0x2dt
        0x66t
        0x68t
        0x3bt
        0x27t
        0x68t
        0x3ft
        0x2dt
        0x68t
        0x3bt
        0x21t
        0x24t
        0x2dt
        0x26t
        0x3ct
        0x24t
        0x31t
        0x68t
        0x21t
        0x2ft
        0x26t
        0x27t
        0x3at
        0x2dt
        0x68t
        0x21t
        0x3ct
        0x66t
        0x32t
        0x1at
        0x1at
        0x12t
        0x19t
        0x10t
        0x55t
        0x14t
        0x19t
        0x2t
        0x14t
        0xct
        0x6t
        0x55t
        0x1t
        0x1dt
        0x7t
        0x1at
        0x2t
        0x55t
        0x14t
        0x1bt
        0x55t
        0x10t
        0xdt
        0x16t
        0x10t
        0x5t
        0x1t
        0x1ct
        0x1at
        0x1bt
        0x55t
        0x2t
        0x1ct
        0x1t
        0x1dt
        0x55t
        0x6t
        0x10t
        0x1t
        0x33t
        0x1at
        0x7t
        0x10t
        0x12t
        0x7t
        0x1at
        0x0t
        0x1bt
        0x11t
        0x55t
        0x1at
        0x1bt
        0x55t
        0x3bt
        0x1at
        0x0t
        0x12t
        0x14t
        0x1t
        0x55t
        0x14t
        0x17t
        0x1at
        0x3t
        0x10t
        0x5bt
        0x55t
        0x6t
        0x1at
        0x55t
        0x2t
        0x10t
        0x55t
        0x6t
        0x1ct
        0x19t
        0x10t
        0x1bt
        0x1t
        0x19t
        0xct
        0x55t
        0x1ct
        0x12t
        0x1bt
        0x1at
        0x7t
        0x10t
        0x55t
        0x1ct
        0x1t
        0x5bt
        0x1ft
        0x36t
        0x25t
        0x33t
        0x20t
        0x36t
        0x25t
        0x32t
        0x77t
        0x36t
        0x34t
        0x34t
        0x32t
        0x3bt
        0x32t
        0x25t
        0x36t
        0x23t
        0x3et
        0x38t
        0x39t
        0x77t
        0x22t
        0x39t
        0x36t
        0x21t
        0x36t
        0x3et
        0x3bt
        0x36t
        0x35t
        0x3bt
        0x32t
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
        0x20t
        0x2ft
        0x2ct
        0x30t
        0x26t
        0x35t
        0xat
        0x7t
        0x6t
        0xct
        0x43t
        0x10t
        0x17t
        0x2t
        0x17t
        0x6t
        0x43t
        0x0t
        0xbt
        0x2t
        0xdt
        0x4t
        0x6t
        0x7t
        0x43t
        0x17t
        0xct
        0x43t
        0x61t
        0x73t
        0x73t
        0x65t
        0x74t
        0x53t
        0x4ft
        0x42t
        0x5at
        0x46t
        0x51t
        0x73t
        0x6ct
        0x61t
        0x60t
        0x6at
        0x5et
        0x7t
        0x52t
        0x4dt
        0x44t
        0x51t
        0x7t
        0x5t
        0x1ft
        0x5t
        0x7t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "w6W1Pn4pGSy1veXw7fNic4Q20vJelJ2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "acNB2lhq8cVPZLtYghlcj8euurSBcqdx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "I2BPPFoGG3lXsTKKPy2FKKasdsM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uMMu8699SI696vicAGdUyhB1Kjcnsg5D"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "S7aPtd9QGtmzyQ9VrNW20IwmaDF5p1Ml"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zS648UlhjTBJXulz7NmFsyAIwaw2iCpI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZyXsHo9oibpczWLkt42IpHWLTZevRgPI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "euMEykkwaXnS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    return-void
.end method

.method private A06()Z
    .locals 2

    .line 35822
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A08:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A07:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A07()Z
    .locals 2

    .line 35823
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A07:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A06:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A08()Z
    .locals 2

    .line 35824
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A08:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A07:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A09()Z
    .locals 7

    .line 35825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 35826
    return v6

    .line 35827
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 35828
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35829
    :catch_0
    move-exception v1

    .line 35830
    .local p0, "e":Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    .line 35831
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1x:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 35832
    const/16 v2, 0x18a

    const/4 v1, 0x6

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 35833
    return v6
.end method

.method private A0A(Landroid/view/Surface;)Z
    .locals 7
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 35835
    return v6

    .line 35836
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 35837
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35838
    :catch_0
    move-exception v1

    .line 35839
    .local p0, "e":Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    .line 35840
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1y:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 35841
    const/16 v2, 0x18a

    const/4 v1, 0x6

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 35842
    return v6
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/HO;)Z
    .locals 0

    .line 35843
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0G:Z

    return p0
.end method

.method private setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V
    .locals 4

    .line 36068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    if-eq p1, v0, :cond_1

    .line 36069
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36070
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16e

    const/16 v1, 0x17

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36071
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    .line 36072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0E:Lcom/facebook/ads/redexgen/X/QC;

    if-eqz v0, :cond_1

    .line 36073
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QC;->AC8(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 36074
    :cond_1
    return-void
.end method


# virtual methods
.method public final A7T()V
    .locals 2

    .line 35844
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0F:Z

    if-nez v0, :cond_0

    .line 35845
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->ACK(ZI)V

    .line 35846
    :cond_0
    return-void
.end method

.method public final A7d()Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 35847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge v1, v0, :cond_1

    .line 35848
    .end local v0
    :cond_0
    return v9

    .line 35849
    :cond_1
    const/4 v8, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v7

    array-length v6, v7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v0, v7, v5

    .line 35850
    .local v8, "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v0}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v3, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const-string v1, "iSqF26gJBktCMb0RObgKl91oEThpz7Z0"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_3

    .line 35851
    return v8

    .line 35852
    .end local v8    # "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 35853
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35854
    :cond_4
    return v9

    .line 35855
    :catch_0
    move-exception v4

    .line 35856
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/HO;->A0P:Ljava/lang/String;

    const/16 v2, 0x41

    const/16 v1, 0x23

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35857
    return v8
.end method

.method public final A7e()Z
    .locals 1

    .line 35858
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0J:Z

    return v0
.end method

.method public final A88()Z
    .locals 1

    .line 35859
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0I:Z

    return v0
.end method

.method public final ACK(ZI)V
    .locals 2

    .line 35860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2v(I)V

    .line 35861
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    .line 35862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 35863
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HO;->A06()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35864
    return-void

    .line 35865
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    goto :goto_0

    .line 35866
    :cond_1
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0I:Z

    .line 35867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 35868
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A06:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_2

    .line 35869
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 35870
    :cond_2
    :goto_0
    return-void
.end method

.method public final AE1(I)V
    .locals 1

    .line 35871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A94(I)V

    .line 35872
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A09:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 35873
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->AEC(I)V

    .line 35874
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    .line 35875
    return-void
.end method

.method public final AE5(Lcom/facebook/ads/redexgen/X/PO;I)V
    .locals 5

    .line 35876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A36(I)V

    .line 35877
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/HO;->A0I:Z

    .line 35878
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    .line 35879
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    .line 35880
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A07:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v1, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const-string v1, "NTKGPTGyq7PSuZ6pDxSrkOD3BAS3oRMw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v4, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A06:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_1

    .line 35881
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    if-nez v1, :cond_4

    .line 35882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A07:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setup(Landroid/net/Uri;)V

    .line 35883
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HO;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35884
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HO;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const-string v1, "Wn6W9Nu3dNfA4pP49CdphRQGwehyl3Rd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3, v3}, Lcom/facebook/ads/redexgen/X/HO;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 35885
    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const-string v1, "pXleF17jKjib"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3, v3}, Lcom/facebook/ads/redexgen/X/HO;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_1

    .line 35886
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    if-lez v0, :cond_5

    .line 35887
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 35888
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 35889
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A07:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0J:Z

    if-eqz v0, :cond_1

    .line 35890
    :cond_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEC(I)V
    .locals 3

    .line 35891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A38(I)V

    .line 35892
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    .line 35893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 35894
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 35895
    .local p0, "currentPosition":I
    if-lez v0, :cond_0

    .line 35896
    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    .line 35897
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_2

    .line 35898
    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const-string v1, "KulxFUFqA4xnUTvaQLfyg7cstmOjzycv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HO;->A09()Z

    .line 35899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 35900
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    .line 35901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0A:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 35902
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 35903
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0A:Landroid/widget/MediaController;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 35904
    .end local p0    # "currentPosition":I
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 35905
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final destroy()V
    .locals 2

    .line 35906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 35907
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/HO;->A0A(Landroid/view/Surface;)Z

    .line 35908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 35909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 35910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 35911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 35912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 35913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 35914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 35915
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HO;->A09()Z

    .line 35916
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    .line 35917
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 35918
    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 35919
    const/4 v1, 0x0

    .line 35920
    .local p0, "position":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HO;->A07()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 35922
    :cond_0
    return v1
.end method

.method public getDuration()I
    .locals 4

    .line 35923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HO;->A07()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const-string v1, "tqb6wmVqQGZxPylUtz2fkCIx7Bf2WilJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 35924
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 35925
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 35926
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0K:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/redexgen/X/PO;
    .locals 1

    .line 35927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/QB;
    .locals 1

    .line 35928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/redexgen/X/QB;
    .locals 1

    .line 35929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 35930
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A04:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 35931
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A05:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 35932
    return-object p0
.end method

.method public getVolume()F
    .locals 1

    .line 35933
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A00:F

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 6

    .line 35934
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 35935
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HO;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35936
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A03:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 35937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    .line 35938
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x5

    .line 35939
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2z(I)V

    .line 35940
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->AEC(I)V

    .line 35941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    .line 35942
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A2F:I

    const/16 v2, 0x13e

    const/16 v1, 0x21

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 35943
    const/16 v2, 0x190

    const/4 v1, 0x5

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 35944
    :cond_0
    return-void
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 35945
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 35946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 35947
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 35948
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A06:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 35949
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->seekTo(I)V

    .line 35950
    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    .line 35951
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .line 35952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    .line 35953
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x195

    const/16 v1, 0xb

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/4 v1, 0x2

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35954
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A93(Ljava/lang/String;)V

    .line 35955
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A01:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HO;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_0

    .line 35956
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A01:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A01:I

    .line 35957
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->AEC(I)V

    .line 35958
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    const/16 v0, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->AE5(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 35959
    :goto_0
    return v2

    .line 35960
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A03:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 35961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    .line 35962
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    .line 35963
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/0R;->A2z(I)V

    .line 35964
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->AEC(I)V

    goto :goto_0
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .line 35965
    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    const/16 v0, 0x2bd

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2be

    if-eq p2, v0, :cond_1

    .line 35966
    :cond_0
    :goto_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35967
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HO;->A08()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35968
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    goto :goto_0

    .line 35969
    :cond_2
    sget-object v3, Lcom/facebook/ads/redexgen/X/QB;->A02:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v1, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const-string v1, "iL0L5EQxu2M5tvy2sZDjl5tOkB9wsg4Q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "qEr4cYtmjtQdjlZthk5xBRgssZbq5gW6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 35970
    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const-string v1, "BctcOQJYgBcKf8RdBMRoW9O8jkER1gO3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "NFF5b4NOHp1wMQpQtAU8ibXMpYWuxgZg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    .line 35971
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/HO;->A0J:Z

    .line 35972
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_6

    .line 35973
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 35974
    :cond_6
    return v2
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 35975
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A07:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 35976
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0H:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0G:Z

    if-nez v0, :cond_3

    .line 35977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A09()Landroid/app/Activity;

    move-result-object v1

    .line 35978
    .local p0, "activityContext":Landroid/app/Activity;
    if-eqz v1, :cond_2

    .line 35979
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0A:Landroid/widget/MediaController;

    .line 35980
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0A:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A09:Landroid/view/View;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 35981
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/HO;->A0A:Landroid/widget/MediaController;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/HO;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    sget-object v1, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const-string v1, "fPjFRSSzuUrY85KdwEQXHAUI7gq3zgJX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "QlnNj2Zi0n3XZkktRetea07zoE6PUgNL"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 35982
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0A:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    goto :goto_0

    .line 35983
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0A:Landroid/widget/MediaController;

    .line 35984
    .end local p0    # "activityContext":Landroid/app/Activity;
    :cond_3
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A00:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setRequestedVolume(F)V

    .line 35985
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A05:I

    .line 35986
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A04:I

    .line 35987
    iget v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    if-lez v1, :cond_5

    .line 35988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    const/4 v2, 0x0

    if-lt v1, v0, :cond_4

    .line 35989
    iput v2, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    .line 35990
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 35991
    iput v2, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    .line 35992
    :cond_5
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/HO;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v3, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const-string v1, "i4HMjCzdRtS7Zf5jyUfqsJgJBFC3Hgk3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "nPyigXhxANl12gOwrMulZJ84NGYQcgH1"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_6

    .line 35993
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->AE5(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 35994
    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 35995
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/HO;->A0E:Lcom/facebook/ads/redexgen/X/QC;

    if-nez v2, :cond_0

    .line 35996
    return-void

    .line 35997
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QC;->ABZ(II)V

    .line 35998
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    .line 35999
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 36000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A08:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 36001
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A08:Landroid/view/Surface;

    .line 36002
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A08:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->A0A(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36003
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A03:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 36004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    .line 36005
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x4

    .line 36006
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2z(I)V

    .line 36007
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HO;->destroy()V

    .line 36008
    return-void

    .line 36009
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0I:Z

    if-nez v0, :cond_2

    .line 36010
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->AE5(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 36011
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .line 36012
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/HO;->A0A(Landroid/view/Surface;)Z

    .line 36013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A08:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 36014
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 36015
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A08:Landroid/view/Surface;

    .line 36016
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_1

    .line 36017
    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->ACK(ZI)V

    .line 36018
    :cond_1
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const-string v1, "wJEag4Up5dB02EoPbWjrYUJlPYnnpJPt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 36019
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 36020
    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 36021
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A05:I

    .line 36022
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A04:I

    .line 36023
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A05:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A04:I

    if-eqz v0, :cond_0

    .line 36024
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HO;->requestLayout()V

    .line 36025
    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 36026
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    .line 36027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 36028
    return-void

    .line 36029
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0A:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36030
    return-void

    .line 36031
    :cond_1
    if-nez p1, :cond_3

    .line 36032
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_2

    .line 36033
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HO;->A7T()V

    .line 36034
    :cond_2
    :goto_0
    return-void

    .line 36035
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0I:Z

    if-nez v0, :cond_2

    .line 36036
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    const/16 v0, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->AE5(Lcom/facebook/ads/redexgen/X/PO;I)V

    goto :goto_0
.end method

.method public final seekTo(I)V
    .locals 1

    .line 36037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HO;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36038
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HO;->getDuration()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 36039
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HO;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A02:I

    .line 36040
    iput p1, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    .line 36041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 36042
    :cond_0
    :goto_0
    return-void

    .line 36043
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/HO;->A03:I

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 36044
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 36045
    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36046
    :cond_0
    :goto_0
    return-void

    .line 36047
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36048
    sget-object v3, Lcom/facebook/ads/redexgen/X/HO;->A0P:Ljava/lang/String;

    const/16 v2, 0x7a

    const/16 v1, 0x66

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .locals 0

    .line 36049
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0F:Z

    .line 36050
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 36051
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HO;->A09:Landroid/view/View;

    .line 36052
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q8;-><init>(Lcom/facebook/ads/redexgen/X/HO;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36053
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 36054
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 36055
    invoke-super {p0, p1}, Landroid/view/TextureView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 36056
    :cond_0
    :goto_0
    return-void

    .line 36057
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36058
    sget-object v3, Lcom/facebook/ads/redexgen/X/HO;->A0P:Ljava/lang/String;

    const/16 v2, 0xe0

    const/16 v1, 0x5e

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 36059
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0H:Z

    .line 36060
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0G:Z

    if-nez v0, :cond_0

    .line 36061
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q7;-><init>(Lcom/facebook/ads/redexgen/X/HO;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36062
    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 2

    .line 36063
    iput p1, p0, Lcom/facebook/ads/redexgen/X/HO;->A00:F

    .line 36064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A08:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0C:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    .line 36065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 36066
    :cond_0
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36067
    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/QC;)V
    .locals 0

    .line 36075
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HO;->A0E:Lcom/facebook/ads/redexgen/X/QC;

    .line 36076
    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 15

    .line 36077
    const/16 v2, 0x15f

    const/16 v1, 0xf

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2y()V

    .line 36078
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/HO;->A0J:Z

    .line 36079
    move-object/from16 v6, p1

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/HO;->A07:Landroid/net/Uri;

    .line 36080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 36081
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HO;->A09()Z

    .line 36082
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->A0A(Landroid/view/Surface;)Z

    .line 36083
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    .line 36084
    .local v2, "mMediaPlayer":Landroid/media/MediaPlayer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    goto :goto_0

    .line 36085
    .end local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    :cond_0
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V

    .line 36086
    .restart local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x185

    const/4 v1, 0x5

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36087
    const/4 v8, 0x0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 36088
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HO;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36089
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_2
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v11

    .line 36090
    .local v3, "start":J
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v13

    .line 36091
    .local v0, "end":J
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual/range {v9 .. v14}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36092
    :try_start_3
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto/16 :goto_6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 36093
    :catch_0
    move-exception v2

    goto/16 :goto_5

    .line 36094
    :catchall_0
    move-exception v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const-string v1, "jmeNgRjQ2jv"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    goto :goto_3

    .line 36095
    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v7

    :goto_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/HO;->A0O:[Ljava/lang/String;

    const-string v1, "vDexTJGknhfX1yfKKY4uPeWNY7BUXXsv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_2

    :catch_4
    move-exception v7

    .line 36096
    .local v0, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    sget-object v6, Lcom/facebook/ads/redexgen/X/HO;->A0P:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x64

    const/16 v1, 0x16

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36097
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A03:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 36098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    .line 36099
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x2

    .line 36100
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2z(I)V

    .line 36101
    .end local v0    # "ex":Ljava/lang/Exception;
    if-eqz v8, :cond_5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 36102
    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 36103
    :catch_5
    move-exception v2

    .line 36104
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v1, Lcom/facebook/ads/redexgen/X/HO;->A0P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 36105
    .end local v0    # "e":Ljava/io/IOException;
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :catchall_1
    move-exception v5

    .restart local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_3
    if-eqz v8, :cond_3

    .line 36106
    :try_start_7
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 36107
    :catch_6
    move-exception v2

    .line 36108
    .local v3, "e":Ljava/io/IOException;
    :try_start_8
    sget-object v1, Lcom/facebook/ads/redexgen/X/HO;->A0P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36109
    .end local v3    # "e":Ljava/io/IOException;
    .end local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    .end local v9
    :cond_3
    :goto_4
    throw v5

    .line 36110
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    .restart local v9
    :cond_4
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_6

    .line 36111
    .local v1, "e":Ljava/io/IOException;
    :goto_5
    sget-object v1, Lcom/facebook/ads/redexgen/X/HO;->A0P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36112
    :cond_5
    :goto_6
    invoke-virtual {v9, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 36113
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 36114
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 36115
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 36116
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 36117
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 36118
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 36119
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 36120
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 36121
    iput-object v9, p0, Lcom/facebook/ads/redexgen/X/HO;->A06:Landroid/media/MediaPlayer;

    .line 36122
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A08:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    goto :goto_7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 36123
    :catch_7
    move-exception v6

    .line 36124
    .local p0, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A03:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HO;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 36125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HO;->A0M:Lcom/facebook/ads/redexgen/X/XJ;

    .line 36126
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x3

    .line 36127
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2z(I)V

    .line 36128
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V

    .line 36129
    sget-object v5, Lcom/facebook/ads/redexgen/X/HO;->A0P:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    const/16 v1, 0x31

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36130
    .end local p0    # "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/HO;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 36131
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HO;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36132
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HO;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v4}, Lcom/facebook/ads/redexgen/X/HO;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 36133
    :cond_6
    return-void
.end method
