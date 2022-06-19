.class public final Lcom/facebook/ads/redexgen/X/HK;
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
.implements Lcom/facebook/ads/redexgen/X/Q4;


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

.field public A0B:Lcom/facebook/ads/redexgen/X/PJ;

.field public A0C:Lcom/facebook/ads/redexgen/X/Q6;

.field public A0D:Lcom/facebook/ads/redexgen/X/Q6;

.field public A0E:Lcom/facebook/ads/redexgen/X/Q7;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public final A0K:J

.field public final A0L:Landroid/widget/MediaController$MediaPlayerControl;

.field public final A0M:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 35821
    invoke-static {}, Lcom/facebook/ads/redexgen/X/HK;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HK;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/HK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HK;->A0P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 2

    .line 35822
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 35823
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    .line 35824
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    .line 35825
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0I:Z

    .line 35826
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    .line 35827
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A05:I

    .line 35828
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A04:I

    .line 35829
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A00:F

    .line 35830
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0H:Z

    .line 35831
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A01:I

    .line 35832
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0F:Z

    .line 35833
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0J:Z

    .line 35834
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A02:I

    .line 35835
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0G:Z

    .line 35836
    sget-object v0, Lcom/facebook/ads/redexgen/X/PJ;->A04:Lcom/facebook/ads/redexgen/X/PJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    .line 35837
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q1;-><init>(Lcom/facebook/ads/redexgen/X/HK;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    .line 35838
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    .line 35839
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;)V
    .locals 2

    .line 35840
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35841
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    .line 35842
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    .line 35843
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0I:Z

    .line 35844
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    .line 35845
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A05:I

    .line 35846
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A04:I

    .line 35847
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A00:F

    .line 35848
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0H:Z

    .line 35849
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A01:I

    .line 35850
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0F:Z

    .line 35851
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0J:Z

    .line 35852
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A02:I

    .line 35853
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0G:Z

    .line 35854
    sget-object v0, Lcom/facebook/ads/redexgen/X/PJ;->A04:Lcom/facebook/ads/redexgen/X/PJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    .line 35855
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q1;-><init>(Lcom/facebook/ads/redexgen/X/HK;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    .line 35856
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    .line 35857
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 35858
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35859
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    .line 35860
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    .line 35861
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0I:Z

    .line 35862
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    .line 35863
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A05:I

    .line 35864
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A04:I

    .line 35865
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A00:F

    .line 35866
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0H:Z

    .line 35867
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A01:I

    .line 35868
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0F:Z

    .line 35869
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0J:Z

    .line 35870
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A02:I

    .line 35871
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0G:Z

    .line 35872
    sget-object v0, Lcom/facebook/ads/redexgen/X/PJ;->A04:Lcom/facebook/ads/redexgen/X/PJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    .line 35873
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q1;-><init>(Lcom/facebook/ads/redexgen/X/HK;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    .line 35874
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    .line 35875
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/HK;)Landroid/media/MediaPlayer;
    .locals 0

    .line 35876
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/HK;)Landroid/widget/MediaController;
    .locals 0

    .line 35877
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0A:Landroid/widget/MediaController;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/HK;)Lcom/facebook/ads/redexgen/X/Q7;
    .locals 0

    .line 35878
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0E:Lcom/facebook/ads/redexgen/X/Q7;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/HK;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/HK;->A0N:[B

    return-void

    :array_0
    .array-data 1
        0x73t
        0x7dt
        0x71t
        0x73t
        -0x4at
        -0x37t
        -0x3bt
        -0x3dt
        -0x4et
        0x73t
        0x71t
        -0x75t
        0x71t
        0x73t
        -0x36t
        0x25t
        -0x73t
        -0x55t
        -0x48t
        -0x48t
        -0x47t
        -0x42t
        0x6at
        -0x46t
        -0x44t
        -0x51t
        -0x46t
        -0x55t
        -0x44t
        -0x51t
        0x6at
        -0x49t
        -0x51t
        -0x52t
        -0x4dt
        -0x55t
        0x6at
        -0x46t
        -0x4at
        -0x55t
        -0x3dt
        -0x51t
        -0x44t
        0x6at
        -0x3ft
        -0x4dt
        -0x42t
        -0x4et
        0x6at
        -0x63t
        -0x41t
        -0x44t
        -0x50t
        -0x55t
        -0x53t
        -0x51t
        -0x62t
        -0x51t
        -0x3et
        -0x42t
        -0x41t
        -0x44t
        -0x51t
        -0x7ct
        0x6at
        -0x46t
        -0x1at
        -0x14t
        -0x1dt
        -0x25t
        -0x1bt
        -0x62t
        -0x15t
        -0x69t
        -0x17t
        -0x24t
        -0x15t
        -0x17t
        -0x20t
        -0x24t
        -0x13t
        -0x24t
        -0x69t
        -0x13t
        -0x20t
        -0x25t
        -0x24t
        -0x1at
        -0x69t
        -0x20t
        -0x1bt
        -0x23t
        -0x1at
        -0x17t
        -0x1ct
        -0x28t
        -0x15t
        -0x20t
        -0x1at
        -0x1bt
        -0x2ft
        -0x14t
        -0xct
        -0x9t
        -0x10t
        -0x11t
        -0x55t
        -0x1t
        -0x6t
        -0x55t
        -0x6t
        -0x5t
        -0x10t
        -0x7t
        -0x55t
        -0x14t
        -0x2t
        -0x2t
        -0x10t
        -0x1t
        -0x2t
        -0x55t
        -0x68t
        -0x40t
        -0x40t
        -0x48t
        -0x43t
        -0x4at
        0x71t
        -0x4et
        -0x43t
        -0x38t
        -0x4et
        -0x36t
        -0x3ct
        0x71t
        -0x3bt
        -0x47t
        -0x3dt
        -0x40t
        -0x38t
        0x71t
        -0x4et
        -0x41t
        0x71t
        -0x4at
        -0x37t
        -0x4ct
        -0x4at
        -0x3ft
        -0x3bt
        -0x46t
        -0x40t
        -0x41t
        0x71t
        -0x38t
        -0x46t
        -0x3bt
        -0x47t
        0x71t
        -0x3ct
        -0x4at
        -0x3bt
        -0x6dt
        -0x4et
        -0x4ct
        -0x44t
        -0x48t
        -0x3dt
        -0x40t
        -0x3at
        -0x41t
        -0x4bt
        -0x6bt
        -0x3dt
        -0x4et
        -0x38t
        -0x4et
        -0x4dt
        -0x43t
        -0x4at
        0x71t
        -0x40t
        -0x41t
        0x71t
        -0x61t
        -0x40t
        -0x3at
        -0x48t
        -0x4et
        -0x3bt
        0x71t
        -0x4et
        -0x4dt
        -0x40t
        -0x39t
        -0x4at
        0x7ft
        0x71t
        -0x3ct
        -0x40t
        0x71t
        -0x38t
        -0x4at
        0x71t
        -0x3ct
        -0x46t
        -0x43t
        -0x4at
        -0x41t
        -0x3bt
        -0x43t
        -0x36t
        0x71t
        -0x46t
        -0x48t
        -0x41t
        -0x40t
        -0x3dt
        -0x4at
        0x71t
        -0x46t
        -0x3bt
        0x7ft
        -0x17t
        0x11t
        0x11t
        0x9t
        0xet
        0x7t
        -0x3et
        0x3t
        0xet
        0x19t
        0x3t
        0x1bt
        0x15t
        -0x3et
        0x16t
        0xat
        0x14t
        0x11t
        0x19t
        -0x3et
        0x3t
        0x10t
        -0x3et
        0x7t
        0x1at
        0x5t
        0x7t
        0x12t
        0x16t
        0xbt
        0x11t
        0x10t
        -0x3et
        0x19t
        0xbt
        0x16t
        0xat
        -0x3et
        0x15t
        0x7t
        0x16t
        -0x18t
        0x11t
        0x14t
        0x7t
        0x9t
        0x14t
        0x11t
        0x17t
        0x10t
        0x6t
        -0x3et
        0x11t
        0x10t
        -0x3et
        -0x10t
        0x11t
        0x17t
        0x9t
        0x3t
        0x16t
        -0x3et
        0x3t
        0x4t
        0x11t
        0x18t
        0x7t
        -0x30t
        -0x3et
        0x15t
        0x11t
        -0x3et
        0x19t
        0x7t
        -0x3et
        0x15t
        0xbt
        0xet
        0x7t
        0x10t
        0x16t
        0xet
        0x1bt
        -0x3et
        0xbt
        0x9t
        0x10t
        0x11t
        0x14t
        0x7t
        -0x3et
        0xbt
        0x16t
        -0x30t
        -0x3ct
        -0x23t
        -0x12t
        -0x20t
        -0xdt
        -0x23t
        -0x12t
        -0x1ft
        -0x64t
        -0x23t
        -0x21t
        -0x21t
        -0x1ft
        -0x18t
        -0x1ft
        -0x12t
        -0x23t
        -0x10t
        -0x1bt
        -0x15t
        -0x16t
        -0x64t
        -0xft
        -0x16t
        -0x23t
        -0xet
        -0x23t
        -0x1bt
        -0x18t
        -0x23t
        -0x22t
        -0x18t
        -0x1ft
        -0xdt
        0xct
        -0x1t
        0x0t
        0xat
        0x3t
        -0x42t
        0x12t
        0xdt
        -0x42t
        0x1t
        0xat
        0xdt
        0x11t
        0x3t
        -0x4t
        0xft
        0xat
        0xbt
        0x15t
        -0x3at
        0x19t
        0x1at
        0x7t
        0x1at
        0xbt
        -0x3at
        0x9t
        0xet
        0x7t
        0x14t
        0xdt
        0xbt
        0xat
        -0x3at
        0x1at
        0x15t
        -0x3at
        -0x61t
        -0x4ft
        -0x4ft
        -0x5dt
        -0x4et
        0x1at
        0x16t
        0xbt
        0x23t
        0xft
        0x1ct
        0x7t
        -0x6t
        -0xbt
        -0xat
        0x0t
        -0x27t
        -0x80t
        -0x2bt
        -0x3at
        -0x41t
        -0x2et
        -0x80t
        0x7et
        -0x68t
        0x7et
        -0x80t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8kg0gsxxraVcY9760AfDDdqqLp5YK9AT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "N8j2Ddyx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HVNw4PtkXrEg8LlUN7XWbo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "maxPy5SeUtgOYTWaW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FkAKyJNQQf2eCz2ilXM7tuAli1jbjSs3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vA9Mb9Xk6BXUb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TQHC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vy65DpAohCvDmaIHVnToJ2EB52e80kqi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HK;->A0O:[Ljava/lang/String;

    return-void
.end method

.method private A06()Z
    .locals 2

    .line 35879
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A08:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A07:Lcom/facebook/ads/redexgen/X/Q6;

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

    .line 35880
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A07:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A06:Lcom/facebook/ads/redexgen/X/Q6;

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

    .line 35881
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A08:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A07:Lcom/facebook/ads/redexgen/X/Q6;

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

    .line 35882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 35883
    return v6

    .line 35884
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 35885
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35886
    :catch_0
    move-exception v1

    .line 35887
    .local p0, "e":Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    .line 35888
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1z:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 35889
    const/16 v2, 0x18a

    const/4 v1, 0x6

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 35890
    return v6
.end method

.method private A0A(Landroid/view/Surface;)Z
    .locals 7
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 35892
    return v6

    .line 35893
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 35894
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35895
    :catch_0
    move-exception v1

    .line 35896
    .local p0, "e":Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    .line 35897
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A20:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 35898
    const/16 v2, 0x18a

    const/4 v1, 0x6

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 35899
    return v6
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/HK;)Z
    .locals 0

    .line 35900
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0G:Z

    return p0
.end method

.method private setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V
    .locals 4

    .line 36124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq p1, v0, :cond_1

    .line 36125
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16e

    const/16 v1, 0x17

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36127
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    .line 36128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0E:Lcom/facebook/ads/redexgen/X/Q7;

    if-eqz v0, :cond_1

    .line 36129
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q7;->AC8(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36130
    :cond_1
    return-void
.end method


# virtual methods
.method public final A7V()V
    .locals 2

    .line 35901
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0F:Z

    if-nez v0, :cond_0

    .line 35902
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->ACK(ZI)V

    .line 35903
    :cond_0
    return-void
.end method

.method public final A7f()Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 35904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge v1, v0, :cond_1

    .line 35905
    .end local v0
    :cond_0
    return v6

    .line 35906
    :cond_1
    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v4

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v4, v2

    .line 35907
    .local v5, "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v0}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 35908
    .end local v5    # "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35909
    :goto_1
    return v5

    .line 35910
    :cond_3
    return v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35911
    :catch_0
    move-exception v4

    .line 35912
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/HK;->A0P:Ljava/lang/String;

    const/16 v2, 0x41

    const/16 v1, 0x23

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35913
    return v5
.end method

.method public final A7g()Z
    .locals 1

    .line 35914
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0J:Z

    return v0
.end method

.method public final A8A()Z
    .locals 1

    .line 35915
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0I:Z

    return v0
.end method

.method public final ACK(ZI)V
    .locals 2

    .line 35916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2r(I)V

    .line 35917
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    .line 35918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 35919
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HK;->A06()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35920
    return-void

    .line 35921
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    goto :goto_0

    .line 35922
    :cond_1
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0I:Z

    .line 35923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 35924
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A06:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_2

    .line 35925
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 35926
    :cond_2
    :goto_0
    return-void
.end method

.method public final AE2(I)V
    .locals 1

    .line 35927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A96(I)V

    .line 35928
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A09:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 35929
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->AEE(I)V

    .line 35930
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    .line 35931
    return-void
.end method

.method public final AE7(Lcom/facebook/ads/redexgen/X/PJ;I)V
    .locals 3

    .line 35932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A32(I)V

    .line 35933
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/HK;->A0I:Z

    .line 35934
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    .line 35935
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    .line 35936
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A07:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A06:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_1

    .line 35937
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    if-nez v1, :cond_3

    .line 35938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A07:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setup(Landroid/net/Uri;)V

    .line 35939
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HK;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35940
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HK;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lcom/facebook/ads/redexgen/X/HK;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 35941
    :cond_2
    return-void

    .line 35942
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    if-lez v0, :cond_4

    .line 35943
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 35944
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 35945
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A07:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0J:Z

    if-eqz v0, :cond_1

    .line 35946
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    goto :goto_0
.end method

.method public final AEE(I)V
    .locals 2

    .line 35947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A34(I)V

    .line 35948
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    .line 35949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 35950
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 35951
    .local p0, "currentPosition":I
    if-lez v0, :cond_0

    .line 35952
    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    .line 35953
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 35954
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HK;->A09()Z

    .line 35955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 35956
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    .line 35957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0A:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 35958
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 35959
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0A:Landroid/widget/MediaController;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 35960
    .end local p0    # "currentPosition":I
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 35961
    return-void
.end method

.method public final destroy()V
    .locals 5

    .line 35962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 35963
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/HK;->A0A(Landroid/view/Surface;)Z

    .line 35964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 35965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 35966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 35967
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/HK;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/HK;->A0O:[Ljava/lang/String;

    const-string v1, "r7bVcQo0vwDc4SuX1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 35968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 35969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 35970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 35971
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HK;->A09()Z

    .line 35972
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    .line 35973
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 35974
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 35975
    const/4 v1, 0x0

    .line 35976
    .local p0, "position":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HK;->A07()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 35978
    :cond_0
    return v1
.end method

.method public getDuration()I
    .locals 1

    .line 35979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HK;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35980
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 35981
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 35982
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0K:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/redexgen/X/PJ;
    .locals 1

    .line 35983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/Q6;
    .locals 1

    .line 35984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/redexgen/X/Q6;
    .locals 1

    .line 35985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 35986
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A04:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 35987
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A05:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 35988
    return-object p0
.end method

.method public getVolume()F
    .locals 1

    .line 35989
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A00:F

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 6

    .line 35990
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 35991
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HK;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35992
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 35993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    .line 35994
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x5

    .line 35995
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2v(I)V

    .line 35996
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->AEE(I)V

    .line 35997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    .line 35998
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A2H:I

    const/16 v2, 0x13e

    const/16 v1, 0x21

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 35999
    const/16 v2, 0x190

    const/4 v1, 0x5

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 36000
    :cond_0
    return-void
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 36001
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 36002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 36003
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 36004
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A06:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36005
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->seekTo(I)V

    .line 36006
    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    .line 36007
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .line 36008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    .line 36009
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x195

    const/16 v1, 0xb

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/4 v1, 0x2

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36010
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A95(Ljava/lang/String;)V

    .line 36011
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A01:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HK;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_0

    .line 36012
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A01:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A01:I

    .line 36013
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->AEE(I)V

    .line 36014
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    const/16 v0, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->AE7(Lcom/facebook/ads/redexgen/X/PJ;I)V

    .line 36015
    :goto_0
    return v2

    .line 36016
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    .line 36018
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    .line 36019
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/0R;->A2v(I)V

    .line 36020
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->AEE(I)V

    goto :goto_0
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 36021
    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/16 v0, 0x2bd

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2be

    if-eq p2, v0, :cond_1

    .line 36022
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 36023
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HK;->A08()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36024
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    goto :goto_0

    .line 36025
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A02:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36026
    goto :goto_0

    .line 36027
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/HK;->A0J:Z

    .line 36028
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_4

    .line 36029
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36030
    :cond_4
    return v2
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 36031
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A07:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36032
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0H:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0G:Z

    if-nez v0, :cond_1

    .line 36033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0A()Landroid/app/Activity;

    move-result-object v1

    .line 36034
    .local p0, "activityContext":Landroid/app/Activity;
    if-eqz v1, :cond_2

    .line 36035
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0A:Landroid/widget/MediaController;

    .line 36036
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0A:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A09:Landroid/view/View;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 36037
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0A:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 36038
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0A:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 36039
    .end local p0    # "activityContext":Landroid/app/Activity;
    :cond_1
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A00:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setRequestedVolume(F)V

    .line 36040
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A05:I

    .line 36041
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A04:I

    .line 36042
    iget v4, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    if-lez v4, :cond_5

    .line 36043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/HK;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36044
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0A:Landroid/widget/MediaController;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/HK;->A0O:[Ljava/lang/String;

    const-string v1, "vYKpudhGuKF00mC0lqJEZv1Z"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v2, 0x0

    if-lt v4, v3, :cond_4

    .line 36045
    iput v2, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    .line 36046
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 36047
    iput v2, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    .line 36048
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_6

    .line 36049
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->AE7(Lcom/facebook/ads/redexgen/X/PJ;I)V

    .line 36050
    :cond_6
    return-void
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 36051
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/HK;->A0E:Lcom/facebook/ads/redexgen/X/Q7;

    if-nez v2, :cond_0

    .line 36052
    return-void

    .line 36053
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q7;->ABZ(II)V

    .line 36054
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    .line 36055
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 36056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A08:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 36057
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A08:Landroid/view/Surface;

    .line 36058
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A08:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->A0A(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36059
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    .line 36061
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x4

    .line 36062
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2v(I)V

    .line 36063
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HK;->destroy()V

    .line 36064
    return-void

    .line 36065
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0I:Z

    if-nez v0, :cond_2

    .line 36066
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->AE7(Lcom/facebook/ads/redexgen/X/PJ;I)V

    .line 36067
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 36068
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/HK;->A0A(Landroid/view/Surface;)Z

    .line 36069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A08:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 36070
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 36071
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A08:Landroid/view/Surface;

    .line 36072
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_1

    .line 36073
    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->ACK(ZI)V

    .line 36074
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 36075
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 36076
    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 36077
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A05:I

    .line 36078
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A04:I

    .line 36079
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A05:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A04:I

    if-eqz v0, :cond_0

    .line 36080
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HK;->requestLayout()V

    .line 36081
    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 5

    .line 36082
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    .line 36083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 36084
    return-void

    .line 36085
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0A:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36086
    return-void

    .line 36087
    :cond_1
    if-nez p1, :cond_3

    .line 36088
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_2

    .line 36089
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HK;->A7V()V

    .line 36090
    :cond_2
    :goto_0
    return-void

    .line 36091
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0I:Z

    if-nez v0, :cond_2

    .line 36092
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/HK;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    const/16 v3, 0x9

    sget-object v1, Lcom/facebook/ads/redexgen/X/HK;->A0O:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/HK;->A0O:[Ljava/lang/String;

    const-string v1, "iX"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/HK;->AE7(Lcom/facebook/ads/redexgen/X/PJ;I)V

    goto :goto_0
.end method

.method public final seekTo(I)V
    .locals 1

    .line 36093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HK;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36094
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HK;->getDuration()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 36095
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HK;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A02:I

    .line 36096
    iput p1, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    .line 36097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 36098
    :cond_0
    :goto_0
    return-void

    .line 36099
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/HK;->A03:I

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 36100
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 36101
    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36102
    :cond_0
    :goto_0
    return-void

    .line 36103
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36104
    sget-object v3, Lcom/facebook/ads/redexgen/X/HK;->A0P:Ljava/lang/String;

    const/16 v2, 0x7a

    const/16 v1, 0x66

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .locals 0

    .line 36105
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0F:Z

    .line 36106
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 36107
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HK;->A09:Landroid/view/View;

    .line 36108
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q3;-><init>(Lcom/facebook/ads/redexgen/X/HK;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36109
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 36110
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 36111
    invoke-super {p0, p1}, Landroid/view/TextureView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 36112
    :cond_0
    :goto_0
    return-void

    .line 36113
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36114
    sget-object v3, Lcom/facebook/ads/redexgen/X/HK;->A0P:Ljava/lang/String;

    const/16 v2, 0xe0

    const/16 v1, 0x5e

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 36115
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0H:Z

    .line 36116
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0G:Z

    if-nez v0, :cond_0

    .line 36117
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q2;-><init>(Lcom/facebook/ads/redexgen/X/HK;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36118
    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 4

    .line 36119
    iput p1, p0, Lcom/facebook/ads/redexgen/X/HK;->A00:F

    .line 36120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A08:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/HK;->A0C:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v2, Lcom/facebook/ads/redexgen/X/HK;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/HK;->A0O:[Ljava/lang/String;

    const-string v1, "xC5rxgqNbqLUjjPrr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v3, v0, :cond_0

    .line 36121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 36122
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36123
    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/Q7;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Q7;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36131
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HK;->A0E:Lcom/facebook/ads/redexgen/X/Q7;

    .line 36132
    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 15

    .line 36133
    const/16 v2, 0x15f

    const/16 v1, 0xf

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2u()V

    .line 36134
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/HK;->A0J:Z

    .line 36135
    move-object/from16 v6, p1

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/HK;->A07:Landroid/net/Uri;

    .line 36136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 36137
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HK;->A09()Z

    .line 36138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->A0A(Landroid/view/Surface;)Z

    .line 36139
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    .line 36140
    .local v2, "mMediaPlayer":Landroid/media/MediaPlayer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    goto :goto_0

    .line 36141
    .end local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    :cond_0
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V

    .line 36142
    .restart local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x185

    const/4 v1, 0x5

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36143
    const/4 v8, 0x0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 36144
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HK;->getContext()Landroid/content/Context;

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
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36145
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_2
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v11

    .line 36146
    .local v5, "start":J
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v13

    .line 36147
    .local v0, "end":J
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual/range {v9 .. v14}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36148
    :try_start_3
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto/16 :goto_5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 36149
    :catch_0
    move-exception v2

    goto :goto_4

    .line 36150
    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_1

    :catch_4
    move-exception v7

    .line 36151
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    sget-object v6, Lcom/facebook/ads/redexgen/X/HK;->A0P:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x64

    const/16 v1, 0x16

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36152
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    .line 36154
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x2

    .line 36155
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2v(I)V

    .line 36156
    .end local v0    # "ex":Ljava/lang/Exception;
    if-eqz v8, :cond_3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 36157
    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 36158
    :catch_5
    move-exception v2

    .line 36159
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v1, Lcom/facebook/ads/redexgen/X/HK;->A0P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 36160
    .end local v0    # "e":Ljava/io/IOException;
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v3

    .restart local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_2
    if-eqz v8, :cond_1

    .line 36161
    :try_start_7
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 36162
    :catch_6
    move-exception v2

    .line 36163
    .local v5, "e":Ljava/io/IOException;
    :try_start_8
    sget-object v1, Lcom/facebook/ads/redexgen/X/HK;->A0P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36164
    .end local v5    # "e":Ljava/io/IOException;
    .end local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    .end local v9
    :cond_1
    :goto_3
    throw v3

    .line 36165
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v2    # "mMediaPlayer":Landroid/media/MediaPlayer;
    .restart local v9
    :cond_2
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_5

    .line 36166
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/HK;->A0P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36167
    :cond_3
    :goto_5
    invoke-virtual {v9, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 36168
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 36169
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 36170
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 36171
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 36172
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 36173
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 36174
    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 36175
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 36176
    iput-object v9, p0, Lcom/facebook/ads/redexgen/X/HK;->A06:Landroid/media/MediaPlayer;

    .line 36177
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A08:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    goto :goto_6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 36178
    :catch_7
    move-exception v6

    .line 36179
    .local p0, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HK;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HK;->A0M:Lcom/facebook/ads/redexgen/X/Wm;

    .line 36181
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    const/4 v0, 0x3

    .line 36182
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2v(I)V

    .line 36183
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V

    .line 36184
    sget-object v5, Lcom/facebook/ads/redexgen/X/HK;->A0P:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    const/16 v1, 0x31

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36185
    .end local p0    # "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/HK;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 36186
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HK;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36187
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HK;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v4}, Lcom/facebook/ads/redexgen/X/HK;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 36188
    :cond_4
    return-void
.end method
