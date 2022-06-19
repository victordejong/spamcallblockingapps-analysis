.class public final Lcom/facebook/ads/redexgen/X/50;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;
.implements Lcom/facebook/ads/internal/api/Repairable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4x;,
        Lcom/facebook/ads/redexgen/X/Eh;,
        Lcom/facebook/ads/redexgen/X/ab;,
        Lcom/facebook/ads/redexgen/X/4z;,
        Lcom/facebook/ads/redexgen/X/4y;
    }
.end annotation


# static fields
.field public static A0P:[B

.field public static A0Q:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Landroid/content/Intent;

.field public A06:Landroid/widget/RelativeLayout;

.field public A07:Lcom/facebook/ads/redexgen/X/JK;

.field public A08:Lcom/facebook/ads/redexgen/X/KM;

.field public A09:Lcom/facebook/ads/redexgen/X/M8;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/Me;

.field public A0B:Lcom/facebook/ads/redexgen/X/NV;

.field public A0C:Lcom/facebook/ads/redexgen/X/Ow;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0D:Ljava/lang/String;

.field public A0E:Ljava/lang/String;

.field public A0F:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public final A0L:Lcom/facebook/ads/AudienceNetworkActivity;

.field public final A0M:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

.field public final A0N:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/4y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/50;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/50;->A07()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;)V
    .locals 1

    .line 12560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0O:Ljava/util/List;

    .line 12562
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:I

    .line 12563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0G:Z

    .line 12564
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    .line 12565
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/50;->A0M:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    .line 12566
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A01(Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    .line 12567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Wm;->A0D(Lcom/facebook/ads/internal/api/Repairable;)V

    .line 12568
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/50;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 12569
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private A01(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/M8;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v6

    .line 12571
    .local p0, "adEventManager":Lcom/facebook/ads/redexgen/X/JC;
    new-instance v3, Lcom/facebook/ads/redexgen/X/4x;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/4x;-><init>(Lcom/facebook/ads/redexgen/X/50;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12572
    .local v5, "audienceNetworkViewFactory":Lcom/facebook/ads/redexgen/X/4x;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KM;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 12573
    return-object v2

    .line 12574
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/4w;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KM;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 12575
    return-object v2

    .line 12576
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4x;->A0L(Lcom/facebook/ads/redexgen/X/4x;Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    return-object v0

    .line 12577
    :pswitch_1
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0F(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    return-object v0

    .line 12578
    :pswitch_2
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0G(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    return-object v0

    .line 12579
    :pswitch_3
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0H(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    return-object v0

    .line 12580
    :pswitch_4
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0I(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    return-object v0

    .line 12581
    :pswitch_5
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0J(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    return-object v0

    .line 12582
    :pswitch_6
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0K(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    return-object v0

    .line 12583
    :pswitch_7
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0C(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    return-object v0

    .line 12584
    :pswitch_8
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0D(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    return-object v0

    .line 12585
    :pswitch_9
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0E(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/NV;
    .locals 0

    .line 12586
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/NV;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/Ow;
    .locals 0

    .line 12587
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/50;->A0C:Lcom/facebook/ads/redexgen/X/Ow;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/50;->A0P:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x22

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()V
    .locals 3

    .line 12588
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0F:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    .line 12590
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ov;->A01(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ow;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0C:Lcom/facebook/ads/redexgen/X/Ow;

    .line 12591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0C:Lcom/facebook/ads/redexgen/X/Ow;

    if-eqz v0, :cond_0

    .line 12592
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12593
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0C:Lcom/facebook/ads/redexgen/X/Ow;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12594
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A06()V
    .locals 3

    .line 12595
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0J:Z

    if-nez v0, :cond_0

    .line 12596
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/50;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12597
    sget-object v0, Lcom/facebook/ads/redexgen/X/PM;->A03:Lcom/facebook/ads/redexgen/X/PM;

    .line 12598
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PM;->A02()Ljava/lang/String;

    move-result-object v0

    .line 12599
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    .line 12600
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0J:Z

    .line 12601
    :cond_0
    return-void

    .line 12602
    :cond_1
    const/16 v2, 0x8b

    const/16 v1, 0x30

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x207

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/50;->A0P:[B

    return-void

    :array_0
    .array-data 1
        0x17t
        0x12t
        0x33t
        0x34t
        0x23t
        0x31t
        0x1et
        0x25t
        0x2at
        0x29t
        0x27t
        0x2et
        0x6bt
        0x3ft
        0x24t
        0x6bt
        0x22t
        0x25t
        0x2dt
        0x2et
        0x39t
        0x6bt
        0x3dt
        0x22t
        0x2et
        0x3ct
        0x1ft
        0x32t
        0x3bt
        0x2et
        0x6bt
        0x2dt
        0x39t
        0x24t
        0x26t
        0x6bt
        0x22t
        0x25t
        0x3ft
        0x2et
        0x25t
        0x3ft
        0x6bt
        0x24t
        0x39t
        0x6bt
        0x38t
        0x2at
        0x3dt
        0x2et
        0x2ft
        0x2t
        0x25t
        0x38t
        0x3ft
        0x2at
        0x25t
        0x28t
        0x2et
        0x18t
        0x3ft
        0x2at
        0x3ft
        0x2et
        0x78t
        0x77t
        0x46t
        0x78t
        0x7at
        0x6dt
        0x70t
        0x6ft
        0x70t
        0x6dt
        0x60t
        0x79t
        0x76t
        0x73t
        0x7ft
        0x74t
        0x6et
        0x4et
        0x75t
        0x71t
        0x7ft
        0x74t
        0x74t
        0x78t
        0x7at
        0x39t
        0x71t
        0x76t
        0x74t
        0x72t
        0x75t
        0x78t
        0x78t
        0x7ct
        0x39t
        0x76t
        0x73t
        0x64t
        0x39t
        0x76t
        0x73t
        0x65t
        0x72t
        0x67t
        0x78t
        0x65t
        0x63t
        0x7et
        0x79t
        0x70t
        0x39t
        0x51t
        0x5et
        0x59t
        0x5et
        0x44t
        0x5ft
        0x48t
        0x56t
        0x53t
        0x48t
        0x45t
        0x52t
        0x47t
        0x58t
        0x45t
        0x43t
        0x5et
        0x59t
        0x50t
        0x48t
        0x51t
        0x5bt
        0x58t
        0x40t
        0x61t
        0x6dt
        0x6ft
        0x2ct
        0x64t
        0x63t
        0x61t
        0x67t
        0x60t
        0x6dt
        0x6dt
        0x69t
        0x2ct
        0x63t
        0x66t
        0x71t
        0x2ct
        0x6bt
        0x6ct
        0x76t
        0x67t
        0x70t
        0x71t
        0x76t
        0x6bt
        0x76t
        0x6bt
        0x63t
        0x6et
        0x2ct
        0x63t
        0x61t
        0x76t
        0x6bt
        0x74t
        0x6bt
        0x76t
        0x7bt
        0x5dt
        0x66t
        0x67t
        0x71t
        0x76t
        0x70t
        0x6dt
        0x7bt
        0x67t
        0x66t
        0x33t
        0x3ft
        0x3dt
        0x7et
        0x36t
        0x31t
        0x33t
        0x35t
        0x32t
        0x3ft
        0x3ft
        0x3bt
        0x7et
        0x31t
        0x34t
        0x23t
        0x7et
        0x39t
        0x3et
        0x24t
        0x35t
        0x22t
        0x23t
        0x24t
        0x39t
        0x24t
        0x39t
        0x31t
        0x3ct
        0x7et
        0x34t
        0x39t
        0x23t
        0x3dt
        0x39t
        0x23t
        0x23t
        0x35t
        0x34t
        0x3dt
        0x31t
        0x33t
        0x70t
        0x38t
        0x3ft
        0x3dt
        0x3bt
        0x3ct
        0x31t
        0x31t
        0x35t
        0x70t
        0x3ft
        0x3at
        0x2dt
        0x70t
        0x37t
        0x30t
        0x2at
        0x3bt
        0x2ct
        0x2dt
        0x2at
        0x37t
        0x2at
        0x37t
        0x3ft
        0x32t
        0x70t
        0x3at
        0x37t
        0x2dt
        0x2et
        0x32t
        0x3ft
        0x27t
        0x3bt
        0x3at
        0x3dt
        0x31t
        0x33t
        0x70t
        0x38t
        0x3ft
        0x3dt
        0x3bt
        0x3ct
        0x31t
        0x31t
        0x35t
        0x70t
        0x3ft
        0x3at
        0x2dt
        0x70t
        0x37t
        0x30t
        0x2at
        0x3bt
        0x2ct
        0x2dt
        0x2at
        0x37t
        0x2at
        0x37t
        0x3ft
        0x32t
        0x70t
        0x3bt
        0x2ct
        0x2ct
        0x31t
        0x2ct
        0x14t
        0x18t
        0x1at
        0x59t
        0x11t
        0x16t
        0x14t
        0x12t
        0x15t
        0x18t
        0x18t
        0x1ct
        0x59t
        0x16t
        0x13t
        0x4t
        0x59t
        0x1et
        0x19t
        0x3t
        0x12t
        0x5t
        0x4t
        0x3t
        0x1et
        0x3t
        0x1et
        0x16t
        0x1bt
        0x59t
        0x11t
        0x1et
        0x19t
        0x1et
        0x4t
        0x1ft
        0x28t
        0x16t
        0x14t
        0x3t
        0x1et
        0x1t
        0x1et
        0x3t
        0xet
        0x5ft
        0x53t
        0x51t
        0x12t
        0x5at
        0x5dt
        0x5ft
        0x59t
        0x5et
        0x53t
        0x53t
        0x57t
        0x12t
        0x5dt
        0x58t
        0x4ft
        0x12t
        0x55t
        0x52t
        0x48t
        0x59t
        0x4et
        0x4ft
        0x48t
        0x55t
        0x48t
        0x55t
        0x5dt
        0x50t
        0x12t
        0x55t
        0x51t
        0x4ct
        0x4et
        0x59t
        0x4ft
        0x4ft
        0x55t
        0x53t
        0x52t
        0x12t
        0x50t
        0x53t
        0x5bt
        0x5bt
        0x59t
        0x58t
        0x6bt
        0x78t
        0x6bt
        0x60t
        0x7at
        0x69t
        0x64t
        0x6bt
        0x61t
        0x76t
        0x66t
        0x64t
        0x75t
        0x60t
        0x15t
        0x1dt
        0x1ct
        0x11t
        0x19t
        0xct
        0x11t
        0x17t
        0x16t
        0x3ct
        0x19t
        0xct
        0x19t
        0x61t
        0x7dt
        0x70t
        0x72t
        0x74t
        0x7ct
        0x74t
        0x7ft
        0x65t
        0x58t
        0x75t
        0x4t
        0x1bt
        0x6t
        0x0t
        0x6t
        0x15t
        0x1dt
        0x0t
        0xft
        0xdt
        0x1at
        0x1bt
        0x1at
        0x19t
        0x16t
        0x11t
        0x1at
        0x1bt
        0x30t
        0xdt
        0x16t
        0x1at
        0x11t
        0xbt
        0x1et
        0xbt
        0x16t
        0x10t
        0x11t
        0x34t
        0x1at
        0x6t
        0x6bt
        0x7ct
        0x68t
        0x6ct
        0x7ct
        0x6at
        0x6dt
        0x4dt
        0x70t
        0x74t
        0x7ct
        0x7ft
        0x67t
        0x65t
        0x7ct
        0x4dt
        0x6at
        0x78t
        0x69t
        0x7et
        0x5ft
        0x69t
        0x6ft
        0x63t
        0x62t
        0x68t
        0x7ft
        0x2ct
        0x37t
        0x7t
        0x37t
        0x2at
        0x31t
        0x3dt
        0x36t
        0x2ct
        0x39t
        0x2ct
        0x31t
        0x37t
        0x36t
        0x69t
        0x72t
        0x75t
        0x6dt
        0x69t
        0x79t
        0x55t
        0x78t
        0x35t
        0x2at
        0x26t
        0x34t
        0x17t
        0x3at
        0x33t
        0x26t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4LY4lS0Dtnhb2OiQyA5efrKIFR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dGupKpVCMt4qg9mKwPVhImHWchSaWcIC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZyPDBV2Dgn506ClNEjHAvEDIkGgGqxcu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6d7pmCocDfQ9ggh3dWvmWW2CO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "v0AhzTtfFBaqfNNgAD9Hm9U40nGOHxVb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UIU6rcdX7ZqD4Xq5NwRFZisMuquIGFkO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tB8Uz7UMZA3JApFIn70Qu6pSbr2GCqXd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GRU7Zt0cjyIBsRz9MT2AF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    return-void
.end method

.method private A09(Landroid/content/Intent;)V
    .locals 6

    .line 12603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A02:Lcom/facebook/ads/redexgen/X/KM;

    if-eq v1, v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_2

    .line 12604
    new-instance v0, Lcom/facebook/ads/redexgen/X/NV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/NV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/NV;

    .line 12605
    const/16 v2, 0x1a3

    const/16 v1, 0xb

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12606
    .local p0, "placementId":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/NV;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/NV;->A0D(Ljava/lang/String;)V

    .line 12607
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/NV;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->A0C(Ljava/lang/String;)V

    .line 12608
    const-wide/16 v1, 0x0

    const/16 v4, 0x1ce

    const/16 v3, 0xb

    const/16 v0, 0x3b

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 12609
    .local v0, "requestTimeMs":J
    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 12610
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/NV;

    sget-object v1, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "zUS0KKJGAWVZbyisMwYLAnJPxJ8oR8Yh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v5, v3, v4}, Lcom/facebook/ads/redexgen/X/NV;->A0A(J)V

    .line 12611
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12612
    .local p1, "debugTriggerView":Landroid/widget/TextView;
    const/4 v2, 0x1

    const/4 v1, 0x5

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12613
    const/4 v2, -0x1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12614
    const/16 v1, 0xa0

    const/4 v0, 0x0

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 12615
    const/4 v0, 0x5

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 12616
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12617
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 12618
    const/16 v0, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 12619
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12620
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/4z;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/4z;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12621
    .local v0, "debugOverlayToggle":Lcom/facebook/ads/redexgen/X/4z;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 12622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 12623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/NV;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 12624
    .end local p0    # "placementId":Ljava/lang/String;
    .end local p1    # "debugTriggerView":Landroid/widget/TextView;
    .end local v0    # "debugOverlayToggle":Lcom/facebook/ads/redexgen/X/4z;
    .end local v0
    .end local v0
    :cond_2
    return-void
.end method

.method private A0A(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12625
    const/16 v2, 0x1ff

    const/16 v1, 0x8

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x1f7

    const/16 v1, 0x8

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v5

    const/4 v3, -0x1

    const/16 v2, 0x1b6

    const/16 v1, 0x18

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 12626
    const-class v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;

    .line 12627
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 12628
    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A02(Landroid/os/Bundle;Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    .line 12629
    .local v1, "adnwSavedStateBundle":Landroid/os/Bundle;
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:I

    .line 12630
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0D:Ljava/lang/String;

    .line 12631
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KM;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KM;

    .line 12632
    return-void

    .line 12633
    .end local v1    # "adnwSavedStateBundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:I

    .line 12634
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0D:Ljava/lang/String;

    .line 12635
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KM;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KM;

    .line 12636
    const/4 v3, 0x0

    const/16 v2, 0x1d9

    const/16 v1, 0x10

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/50;->A02:I

    .line 12637
    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/50;Ljava/lang/String;)V
    .locals 0

    .line 12638
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/50;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 0

    .line 12639
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/50;->A0F(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V

    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/50;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 12640
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/50;->A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    return-void
.end method

.method private A0E(Ljava/lang/String;)V
    .locals 4

    .line 12641
    const/16 v2, 0x159

    const/16 v1, 0x2f

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/PM;->A0A:Lcom/facebook/ads/redexgen/X/PM;

    .line 12642
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PM;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12643
    :cond_0
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/50;->A0I:Z

    .line 12644
    :cond_1
    const/16 v2, 0x109

    const/16 v1, 0x23

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/facebook/ads/redexgen/X/PM;->A09:Lcom/facebook/ads/redexgen/X/PM;

    .line 12645
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PM;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12646
    :cond_2
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/50;->A0H:Z

    .line 12647
    :cond_3
    const/16 v2, 0x56

    const/16 v1, 0x35

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12648
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 12649
    return-void

    .line 12650
    :cond_4
    const/16 v2, 0x12c

    const/16 v1, 0x2d

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12651
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 12652
    return-void

    .line 12653
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/50;->A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 12654
    return-void
.end method

.method private A0F(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 7

    .line 12655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/M8;

    if-nez v0, :cond_0

    .line 12656
    return-void

    .line 12657
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A0A:Lcom/facebook/ads/redexgen/X/Me;

    sget-object v1, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "nOOhjPgmgj4ymGbfbhDfGuv2YA"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 12658
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    .line 12659
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v2

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/M8;

    const/4 v0, 0x0

    new-instance v6, Lcom/facebook/ads/redexgen/X/ab;

    invoke-direct {v6, p0, v0}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12660
    move-object v4, p2

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Mf;->A02(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/M8;Lcom/facebook/ads/redexgen/X/M7;)Lcom/facebook/ads/redexgen/X/Me;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0A:Lcom/facebook/ads/redexgen/X/Me;

    .line 12661
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12662
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0A:Lcom/facebook/ads/redexgen/X/Me;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Me;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12663
    .end local p0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0A:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 12664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    .line 12665
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0A:Lcom/facebook/ads/redexgen/X/Me;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 12666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0A:Lcom/facebook/ads/redexgen/X/Me;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Me;->A0K()V

    .line 12667
    return-void
.end method

.method private A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 4
    .param p2    # Lcom/facebook/ads/redexgen/X/9E;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0D:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12669
    .local p0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 12670
    const/16 v2, 0x188

    const/4 v1, 0x5

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 12671
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2K;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2K;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2K;->A08(Landroid/content/Intent;)Z

    .line 12672
    return-void
.end method

.method private A0H()Z
    .locals 2

    .line 12673
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A0B:Lcom/facebook/ads/redexgen/X/KM;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A0A:Lcom/facebook/ads/redexgen/X/KM;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A04:Lcom/facebook/ads/redexgen/X/KM;

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0I()Lcom/facebook/ads/AudienceNetworkActivity;
    .locals 1

    .line 12674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/Wm;
    .locals 1

    .line 12675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    return-object v0
.end method

.method public final A0K()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 12676
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/50;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12677
    sget-object v0, Lcom/facebook/ads/redexgen/X/PM;->A09:Lcom/facebook/ads/redexgen/X/PM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PM;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    .line 12678
    :goto_0
    return-void

    .line 12679
    :cond_0
    const/16 v2, 0x109

    const/16 v1, 0x23

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/4y;)V
    .locals 1

    .line 12680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12681
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/4y;)V
    .locals 1

    .line 12682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12683
    return-void
.end method

.method public final finish(I)V
    .locals 4

    .line 12684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A2R(Ljava/lang/String;I)V

    .line 12685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12686
    return-void

    .line 12687
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12688
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0I:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0H:Z

    if-nez v0, :cond_1

    .line 12689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A9B()V

    .line 12690
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0K()V

    .line 12691
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/50;->A0H()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0G:Z

    if-nez v0, :cond_3

    .line 12692
    sget-object v3, Lcom/facebook/ads/redexgen/X/PM;->A05:Lcom/facebook/ads/redexgen/X/PM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "aKr9nEsLo3sy9RHNghfDRuWnztPSExey"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "uIkYfs9grt0Hx69LL2s0ShAsw1OMdxMD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/PM;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    goto :goto_0

    .line 12693
    :cond_3
    const/16 v2, 0xbb

    const/16 v1, 0x27

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    .line 12694
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/50;->A06()V

    .line 12695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0M:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->finish(I)V

    .line 12696
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 12697
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/SA;->A0B(IILandroid/content/Intent;)V

    .line 12698
    return-void
.end method

.method public final onBackPressed()V
    .locals 8

    .line 12699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 12700
    .local p0, "currentTime":J
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/50;->A03:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/50;->A04:J

    sub-long v0, v6, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/50;->A03:J

    .line 12701
    iput-wide v6, p0, Lcom/facebook/ads/redexgen/X/50;->A04:J

    .line 12702
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/50;->A03:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/50;->A02:I

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 12703
    const/4 v2, 0x0

    .line 12704
    .local v2, "shouldIntercept":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4y;

    .line 12705
    .local v4, "interceptor":Lcom/facebook/ads/redexgen/X/4y;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4y;->A7w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12706
    const/4 v2, 0x1

    goto :goto_0

    .line 12707
    :cond_1
    if-nez v2, :cond_2

    .line 12708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0M:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onBackPressed()V

    .line 12709
    .end local v2    # "shouldIntercept":Z
    :cond_2
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 12710
    iget v1, p0, Lcom/facebook/ads/redexgen/X/50;->A00:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_0

    .line 12711
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 12712
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    const/16 v2, 0x1e9

    const/16 v1, 0xe

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v3

    if-ne v6, v5, :cond_1

    .line 12713
    const/16 v2, 0x1ae

    const/16 v1, 0x8

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12714
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A07:Lcom/facebook/ads/redexgen/X/JK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0J:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 12715
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/50;->A00:I

    .line 12716
    .end local p0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 12717
    :cond_1
    const/16 v2, 0x18d

    const/16 v1, 0x9

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12718
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ll;->A02()V

    .line 12719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 12720
    .local p0, "intent":Landroid/content/Intent;
    const-class v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;

    .line 12721
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A01(Landroid/content/Intent;Ljava/lang/ClassLoader;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    .line 12722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kr;->A03(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v2

    .line 12723
    .local p1, "startAdContext":Lcom/facebook/ads/redexgen/X/Wm;
    if-eqz v2, :cond_0

    .line 12724
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0C(Lcom/facebook/ads/redexgen/X/0R;)V

    .line 12725
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8D;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8D;->A09(Ljava/lang/String;)V

    .line 12726
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2S(Ljava/lang/String;)V

    .line 12727
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->requestWindowFeature(I)Z

    .line 12728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    .line 12729
    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 12730
    const/16 v0, 0x400

    invoke-virtual {v1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 12731
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    .line 12732
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 12733
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/50;->A0A(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 12735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A01(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/M8;

    .line 12736
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/M8;

    if-nez v1, :cond_1

    .line 12737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    .line 12738
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A02:I

    const/4 v2, 0x6

    const/16 v1, 0x3a

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 12739
    const/16 v2, 0x40

    const/16 v1, 0xb

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 12740
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0K()V

    .line 12741
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 12742
    return-void

    .line 12743
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    invoke-interface {v1, v0, p1, p0}, Lcom/facebook/ads/redexgen/X/M8;->A8L(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V

    .line 12744
    const/16 v2, 0xe2

    const/16 v1, 0x27

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    .line 12745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/50;->A04:J

    .line 12746
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    const/16 v2, 0x196

    const/16 v1, 0xd

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0F:Ljava/lang/String;

    .line 12747
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/50;->A05()V

    .line 12748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A09(Landroid/content/Intent;)V

    .line 12749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/50;->A00:I

    .line 12750
    const/16 v2, 0x4b

    const/16 v1, 0xb

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 12751
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0E:Ljava/lang/String;

    .line 12752
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/50;->A0E:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    .line 12753
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A07:Lcom/facebook/ads/redexgen/X/JK;

    .line 12754
    return-void

    .line 12755
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0E:Ljava/lang/String;

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 4

    .line 12756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2T(Ljava/lang/String;)V

    .line 12757
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/50;->A06()V

    .line 12758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 12759
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 12760
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/M8;

    if-eqz v0, :cond_1

    .line 12761
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/M8;->onDestroy()V

    .line 12762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/M8;

    .line 12763
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/NV;

    sget-object v1, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "3yBcEH8sYDqTUUkxjXqOG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/NV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NV;->A08()V

    .line 12765
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0A:Lcom/facebook/ads/redexgen/X/Me;

    if-eqz v0, :cond_4

    .line 12766
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Me;->A0J()V

    .line 12767
    :cond_4
    return-void
.end method

.method public final onPause()V
    .locals 6

    .line 12768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2U(Ljava/lang/String;)V

    .line 12769
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/50;->A03:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/50;->A04:J

    sub-long/2addr v2, v0

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/50;->A03:J

    .line 12770
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/M8;

    if-eqz v1, :cond_0

    .line 12771
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M8;->AB2(Z)V

    .line 12772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12773
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/50;->A07:Lcom/facebook/ads/redexgen/X/JK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0D:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 12774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0K:Z

    .line 12775
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 12776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2V(Ljava/lang/String;)V

    .line 12777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/50;->A04:J

    .line 12778
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/M8;

    if-eqz v1, :cond_1

    .line 12779
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M8;->ABR(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12780
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "WHwDulcP2dZca7YA0PmotSPySBaz7ZXD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0K:Z

    if-eqz v0, :cond_1

    .line 12781
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/50;->A07:Lcom/facebook/ads/redexgen/X/JK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0E:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 12782
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 12783
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 12784
    .local p0, "adnwSavedState":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/M8;

    if-eqz v0, :cond_0

    .line 12785
    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/M8;->ADU(Landroid/os/Bundle;)V

    .line 12786
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/50;->A01:I

    const/16 v2, 0x1b6

    const/16 v1, 0x18

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12787
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A0D:Ljava/lang/String;

    const/16 v2, 0x1f7

    const/16 v1, 0x8

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12788
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A0E:Ljava/lang/String;

    const/16 v2, 0x4b

    const/16 v1, 0xb

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12789
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KM;

    const/16 v2, 0x1ff

    const/16 v1, 0x8

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 12790
    invoke-static {p1, v4}, Lcom/facebook/ads/redexgen/X/Kr;->A09(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 12791
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 12792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2W(Ljava/lang/String;)V

    .line 12793
    iget v2, p0, Lcom/facebook/ads/redexgen/X/50;->A01:I

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    .line 12794
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/M2;->A03(Landroid/app/Activity;ILcom/facebook/ads/redexgen/X/Wm;)V

    .line 12795
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 12796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2X(Ljava/lang/String;)V

    .line 12797
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 12798
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/5r;->A03(Landroid/app/Activity;Landroid/view/MotionEvent;)V

    .line 12799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0M:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 1

    .line 12800
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0K()V

    .line 12801
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 12802
    return-void
.end method
