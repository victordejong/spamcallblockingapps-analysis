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
        Lcom/facebook/ads/redexgen/X/Eo;,
        Lcom/facebook/ads/redexgen/X/TU;,
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

.field public A07:Lcom/facebook/ads/redexgen/X/JJ;

.field public A08:Lcom/facebook/ads/redexgen/X/KK;

.field public A09:Lcom/facebook/ads/redexgen/X/MA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/Mj;

.field public A0B:Lcom/facebook/ads/redexgen/X/Na;

.field public A0C:Lcom/facebook/ads/redexgen/X/P1;
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

.field public final A0N:Lcom/facebook/ads/redexgen/X/XJ;

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

    .line 12466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0O:Ljava/util/List;

    .line 12468
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:I

    .line 12469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0G:Z

    .line 12470
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    .line 12471
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/50;->A0M:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    .line 12472
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A01(Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    .line 12473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/XJ;->A0C(Lcom/facebook/ads/internal/api/Repairable;)V

    .line 12474
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/50;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 12475
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private A01(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/MA;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v6

    .line 12477
    .local p0, "adEventManager":Lcom/facebook/ads/redexgen/X/JC;
    new-instance v3, Lcom/facebook/ads/redexgen/X/4x;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/4x;-><init>(Lcom/facebook/ads/redexgen/X/50;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12478
    .local v5, "audienceNetworkViewFactory":Lcom/facebook/ads/redexgen/X/4x;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KK;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 12479
    return-object v2

    .line 12480
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/4w;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KK;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 12481
    return-object v2

    .line 12482
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4x;->A0L(Lcom/facebook/ads/redexgen/X/4x;Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v0

    return-object v0

    .line 12483
    :pswitch_1
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0F(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v0

    return-object v0

    .line 12484
    :pswitch_2
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0G(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v0

    return-object v0

    .line 12485
    :pswitch_3
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0H(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v0

    return-object v0

    .line 12486
    :pswitch_4
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0I(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "wwrXZHO6We2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "bd05r2lrBXgQHiU8zhW56DndFWzJq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 12487
    :pswitch_5
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0J(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v0

    return-object v0

    .line 12488
    :pswitch_6
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0K(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "st3v0TpfdqXoPWlO02nQcse4uCAIapoF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12489
    :pswitch_7
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0C(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v0

    return-object v0

    .line 12490
    :pswitch_8
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0D(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "x"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12491
    :pswitch_9
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A0E(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v0

    return-object v0

    nop

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

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/Na;
    .locals 0

    .line 12492
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/Na;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/P1;
    .locals 0

    .line 12493
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/50;->A0C:Lcom/facebook/ads/redexgen/X/P1;

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

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6f

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

    .line 12494
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0F:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    .line 12496
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/P0;->A01(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/P1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0C:Lcom/facebook/ads/redexgen/X/P1;

    .line 12497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0C:Lcom/facebook/ads/redexgen/X/P1;

    if-eqz v0, :cond_0

    .line 12498
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12499
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0C:Lcom/facebook/ads/redexgen/X/P1;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12500
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A06()V
    .locals 3

    .line 12501
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0J:Z

    if-nez v0, :cond_0

    .line 12502
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/50;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12503
    sget-object v0, Lcom/facebook/ads/redexgen/X/PR;->A03:Lcom/facebook/ads/redexgen/X/PR;

    .line 12504
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PR;->A02()Ljava/lang/String;

    move-result-object v0

    .line 12505
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    .line 12506
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0J:Z

    .line 12507
    :cond_0
    return-void

    .line 12508
    :cond_1
    const/16 v2, 0x8b

    const/16 v1, 0x30

    const/16 v0, 0x2f

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
        -0x25t
        0x7t
        0x28t
        0x25t
        0x38t
        0x2at
        0x37t
        0x50t
        0x43t
        0x44t
        0x4et
        0x47t
        0x2t
        0x56t
        0x51t
        0x2t
        0x4bt
        0x50t
        0x48t
        0x47t
        0x54t
        0x2t
        0x58t
        0x4bt
        0x47t
        0x59t
        0x36t
        0x5bt
        0x52t
        0x47t
        0x2t
        0x48t
        0x54t
        0x51t
        0x4ft
        0x2t
        0x4bt
        0x50t
        0x56t
        0x47t
        0x50t
        0x56t
        0x2t
        0x51t
        0x54t
        0x2t
        0x55t
        0x43t
        0x58t
        0x47t
        0x46t
        0x2bt
        0x50t
        0x55t
        0x56t
        0x43t
        0x50t
        0x45t
        0x47t
        0x35t
        0x56t
        0x43t
        0x56t
        0x47t
        -0x18t
        -0xbt
        -0x1at
        -0x18t
        -0x16t
        -0x5t
        -0x10t
        -0x3t
        -0x10t
        -0x5t
        0x0t
        -0xat
        -0x1t
        -0x4t
        -0x8t
        0x1t
        0x7t
        -0x19t
        0x2t
        -0x2t
        -0x8t
        0x1t
        -0x2ct
        -0x20t
        -0x22t
        -0x61t
        -0x29t
        -0x2et
        -0x2ct
        -0x2at
        -0x2dt
        -0x20t
        -0x20t
        -0x24t
        -0x61t
        -0x2et
        -0x2bt
        -0x1ct
        -0x61t
        -0x2et
        -0x2bt
        -0x1dt
        -0x2at
        -0x1ft
        -0x20t
        -0x1dt
        -0x1bt
        -0x26t
        -0x21t
        -0x28t
        -0x61t
        -0x49t
        -0x46t
        -0x41t
        -0x46t
        -0x3ct
        -0x47t
        -0x30t
        -0x4et
        -0x4bt
        -0x30t
        -0x3dt
        -0x4at
        -0x3ft
        -0x40t
        -0x3dt
        -0x3bt
        -0x46t
        -0x41t
        -0x48t
        -0x30t
        -0x49t
        -0x43t
        -0x40t
        -0x38t
        0x1t
        0xdt
        0xbt
        -0x34t
        0x4t
        -0x1t
        0x1t
        0x3t
        0x0t
        0xdt
        0xdt
        0x9t
        -0x34t
        -0x1t
        0x2t
        0x11t
        -0x34t
        0x7t
        0xct
        0x12t
        0x3t
        0x10t
        0x11t
        0x12t
        0x7t
        0x12t
        0x7t
        -0x1t
        0xat
        -0x34t
        -0x1t
        0x1t
        0x12t
        0x7t
        0x14t
        0x7t
        0x12t
        0x17t
        -0x3t
        0x2t
        0x3t
        0x11t
        0x12t
        0x10t
        0xdt
        0x17t
        0x3t
        0x2t
        -0x20t
        -0x14t
        -0x16t
        -0x55t
        -0x1dt
        -0x22t
        -0x20t
        -0x1et
        -0x21t
        -0x14t
        -0x14t
        -0x18t
        -0x55t
        -0x22t
        -0x1ft
        -0x10t
        -0x55t
        -0x1at
        -0x15t
        -0xft
        -0x1et
        -0x11t
        -0x10t
        -0xft
        -0x1at
        -0xft
        -0x1at
        -0x22t
        -0x17t
        -0x55t
        -0x1ft
        -0x1at
        -0x10t
        -0x16t
        -0x1at
        -0x10t
        -0x10t
        -0x1et
        -0x1ft
        0xft
        0x1bt
        0x19t
        -0x26t
        0x12t
        0xdt
        0xft
        0x11t
        0xet
        0x1bt
        0x1bt
        0x17t
        -0x26t
        0xdt
        0x10t
        0x1ft
        -0x26t
        0x15t
        0x1at
        0x20t
        0x11t
        0x1et
        0x1ft
        0x20t
        0x15t
        0x20t
        0x15t
        0xdt
        0x18t
        -0x26t
        0x10t
        0x15t
        0x1ft
        0x1ct
        0x18t
        0xdt
        0x25t
        0x11t
        0x10t
        -0x17t
        -0xbt
        -0xdt
        -0x4ct
        -0x14t
        -0x19t
        -0x17t
        -0x15t
        -0x18t
        -0xbt
        -0xbt
        -0xft
        -0x4ct
        -0x19t
        -0x16t
        -0x7t
        -0x4ct
        -0x11t
        -0xct
        -0x6t
        -0x15t
        -0x8t
        -0x7t
        -0x6t
        -0x11t
        -0x6t
        -0x11t
        -0x19t
        -0xet
        -0x4ct
        -0x15t
        -0x8t
        -0x8t
        -0xbt
        -0x8t
        0x10t
        0x1ct
        0x1at
        -0x25t
        0x13t
        0xet
        0x10t
        0x12t
        0xft
        0x1ct
        0x1ct
        0x18t
        -0x25t
        0xet
        0x11t
        0x20t
        -0x25t
        0x16t
        0x1bt
        0x21t
        0x12t
        0x1ft
        0x20t
        0x21t
        0x16t
        0x21t
        0x16t
        0xet
        0x19t
        -0x25t
        0x13t
        0x16t
        0x1bt
        0x16t
        0x20t
        0x15t
        0xct
        0xet
        0x10t
        0x21t
        0x16t
        0x23t
        0x16t
        0x21t
        0x26t
        0x36t
        0x42t
        0x40t
        0x1t
        0x39t
        0x34t
        0x36t
        0x38t
        0x35t
        0x42t
        0x42t
        0x3et
        0x1t
        0x34t
        0x37t
        0x46t
        0x1t
        0x3ct
        0x41t
        0x47t
        0x38t
        0x45t
        0x46t
        0x47t
        0x3ct
        0x47t
        0x3ct
        0x34t
        0x3ft
        0x1t
        0x3ct
        0x40t
        0x43t
        0x45t
        0x38t
        0x46t
        0x46t
        0x3ct
        0x42t
        0x41t
        0x1t
        0x3ft
        0x42t
        0x3at
        0x3at
        0x38t
        0x37t
        0x4dt
        0x5et
        0x4dt
        0x56t
        0x5ct
        0x31t
        0x26t
        0x33t
        0x29t
        0x38t
        0x28t
        0x26t
        0x35t
        0x2at
        0x45t
        0x3dt
        0x3ct
        0x41t
        0x39t
        0x4ct
        0x41t
        0x47t
        0x46t
        0x1ct
        0x39t
        0x4ct
        0x39t
        0x12t
        0xet
        0x3t
        0x5t
        0x7t
        0xft
        0x7t
        0x10t
        0x16t
        -0x15t
        0x6t
        -0x7t
        -0x8t
        -0x5t
        -0x3t
        -0x5t
        -0x16t
        -0xet
        -0x3t
        0x57t
        0x59t
        0x4ct
        0x4bt
        0x4ct
        0x4dt
        0x50t
        0x55t
        0x4ct
        0x4bt
        0x36t
        0x59t
        0x50t
        0x4ct
        0x55t
        0x5bt
        0x48t
        0x5bt
        0x50t
        0x56t
        0x55t
        0x32t
        0x4ct
        0x60t
        0x4et
        0x41t
        0x4dt
        0x51t
        0x41t
        0x4ft
        0x50t
        0x30t
        0x45t
        0x49t
        0x41t
        -0x7t
        -0xft
        -0x11t
        -0xat
        -0x39t
        -0x14t
        -0x6t
        -0x15t
        -0x8t
        -0x27t
        -0x15t
        -0x17t
        -0xbt
        -0xct
        -0x16t
        -0x7t
        0x2dt
        0x28t
        0x18t
        0x28t
        0x2bt
        0x22t
        0x1et
        0x27t
        0x2dt
        0x1at
        0x2dt
        0x22t
        0x28t
        0x27t
        -0xbt
        -0x12t
        -0x17t
        -0xft
        -0xbt
        -0x1bt
        -0x37t
        -0x1ct
        0x3at
        0x2dt
        0x29t
        0x3bt
        0x18t
        0x3dt
        0x34t
        0x29t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6hyfNvrTK6t0uOk4ZUiKTcly4lO9QIT3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Cx5XWQG9gTlQcsVl0OO6K9WlulTSTZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4fLDdlgMQ2q"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AM05mUF2qaDkDYU3MyDNTK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rN7iVf06fBiMXo1UDWoI2bEJDxOmVmjv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9bqAz3M9pAQkcUJXzFdGLS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1D1uNCEUmAwDpqE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "h0QQnxfLOYpp7kAK6sPhgGYv8wQTA65G"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    return-void
.end method

.method private A09(Landroid/content/Intent;)V
    .locals 5

    .line 12509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KK;

    sget-object v3, Lcom/facebook/ads/redexgen/X/KK;->A02:Lcom/facebook/ads/redexgen/X/KK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "ROWUzhbvPevH2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_1

    .line 12510
    new-instance v0, Lcom/facebook/ads/redexgen/X/Na;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Na;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/Na;

    .line 12511
    const/16 v2, 0x1a3

    const/16 v1, 0xb

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12512
    .local p0, "placementId":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Na;->A0D(Ljava/lang/String;)V

    .line 12513
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/Na;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Na;->A0C(Ljava/lang/String;)V

    .line 12514
    const-wide/16 v3, 0x0

    const/16 v2, 0x1ce

    const/16 v1, 0xb

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 12515
    .local v0, "requestTimeMs":J
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 12516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Na;->A0A(J)V

    .line 12517
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12518
    .local p1, "debugTriggerView":Landroid/widget/TextView;
    const/4 v2, 0x1

    const/4 v1, 0x5

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12519
    const/4 v2, -0x1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12520
    const/16 v1, 0xa0

    const/4 v0, 0x0

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 12521
    const/4 v0, 0x5

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 12522
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12523
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 12524
    const/16 v0, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 12525
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12526
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/4z;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/4z;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12527
    .local v0, "debugOverlayToggle":Lcom/facebook/ads/redexgen/X/4z;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 12528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 12529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 12530
    .end local p0    # "placementId":Ljava/lang/String;
    .end local p1    # "debugTriggerView":Landroid/widget/TextView;
    .end local v0    # "debugOverlayToggle":Lcom/facebook/ads/redexgen/X/4z;
    .end local v0
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0A(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12531
    const/16 v2, 0x1ff

    const/16 v1, 0x8

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x1f7

    const/16 v1, 0x8

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v5

    const/4 v3, -0x1

    const/16 v2, 0x1b6

    const/16 v1, 0x18

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 12532
    const-class v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;

    .line 12533
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 12534
    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A02(Landroid/os/Bundle;Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    .line 12535
    .local v1, "adnwSavedStateBundle":Landroid/os/Bundle;
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:I

    .line 12536
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0D:Ljava/lang/String;

    .line 12537
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KK;

    .line 12538
    return-void

    .line 12539
    .end local v1    # "adnwSavedStateBundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:I

    .line 12540
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0D:Ljava/lang/String;

    .line 12541
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KK;

    .line 12542
    const/4 v3, 0x0

    const/16 v2, 0x1d9

    const/16 v1, 0x10

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/50;->A02:I

    .line 12543
    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/50;Ljava/lang/String;)V
    .locals 0

    .line 12544
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/50;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 0

    .line 12545
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/50;->A0F(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V

    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/50;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 12546
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/50;->A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    return-void
.end method

.method private A0E(Ljava/lang/String;)V
    .locals 5

    .line 12547
    const/16 v2, 0x159

    const/16 v1, 0x2f

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/PR;->A0A:Lcom/facebook/ads/redexgen/X/PR;

    .line 12548
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PR;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12549
    :cond_0
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/50;->A0I:Z

    .line 12550
    :cond_1
    const/16 v2, 0x109

    const/16 v1, 0x23

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/facebook/ads/redexgen/X/PR;->A09:Lcom/facebook/ads/redexgen/X/PR;

    .line 12551
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PR;->A02()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "BsUqgJlN3izr4734FAkiK4"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "DZ4pb9dksBh2p0w2isnwDh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12552
    :cond_3
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/50;->A0H:Z

    .line 12553
    :cond_4
    const/16 v2, 0x56

    const/16 v1, 0x35

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12554
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 12555
    return-void

    .line 12556
    :cond_5
    const/16 v2, 0x12c

    const/16 v1, 0x2d

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12557
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 12558
    return-void

    .line 12559
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/50;->A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 12560
    return-void
.end method

.method private A0F(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 7

    .line 12561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/MA;

    if-nez v0, :cond_0

    .line 12562
    return-void

    .line 12563
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0A:Lcom/facebook/ads/redexgen/X/Mj;

    if-nez v0, :cond_1

    .line 12564
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    .line 12565
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v2

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/MA;

    const/4 v0, 0x0

    new-instance v6, Lcom/facebook/ads/redexgen/X/TU;

    invoke-direct {v6, p0, v0}, Lcom/facebook/ads/redexgen/X/TU;-><init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 12566
    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Mk;->A02(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/MA;Lcom/facebook/ads/redexgen/X/M9;)Lcom/facebook/ads/redexgen/X/Mj;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0A:Lcom/facebook/ads/redexgen/X/Mj;

    .line 12567
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12568
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0A:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12569
    .end local p0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0A:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 12570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    .line 12571
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0A:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 12572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0A:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0J()V

    .line 12573
    return-void
.end method

.method private A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 4
    .param p2    # Lcom/facebook/ads/redexgen/X/9E;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0D:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12575
    .local p0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 12576
    const/16 v2, 0x188

    const/4 v1, 0x5

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 12577
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2K;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2K;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2K;->A08(Landroid/content/Intent;)Z

    .line 12578
    return-void
.end method

.method private A0H()Z
    .locals 2

    .line 12579
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A0B:Lcom/facebook/ads/redexgen/X/KK;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A0A:Lcom/facebook/ads/redexgen/X/KK;

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

    .line 12580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/XJ;
    .locals 1

    .line 12581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    return-object v0
.end method

.method public final A0K()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 12582
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/50;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12583
    sget-object v0, Lcom/facebook/ads/redexgen/X/PR;->A09:Lcom/facebook/ads/redexgen/X/PR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PR;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    .line 12584
    :goto_0
    return-void

    .line 12585
    :cond_0
    const/16 v2, 0x109

    const/16 v1, 0x23

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/4y;)V
    .locals 1

    .line 12586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12587
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/4y;)V
    .locals 1

    .line 12588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12589
    return-void
.end method

.method public final finish(I)V
    .locals 3

    .line 12590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A2R(Ljava/lang/String;I)V

    .line 12591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12592
    return-void

    .line 12593
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12594
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0I:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0H:Z

    if-nez v0, :cond_1

    .line 12595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A99()V

    .line 12596
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0K()V

    .line 12597
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/50;->A0H()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0G:Z

    if-nez v0, :cond_2

    .line 12598
    sget-object v0, Lcom/facebook/ads/redexgen/X/PR;->A05:Lcom/facebook/ads/redexgen/X/PR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PR;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    .line 12599
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/50;->A06()V

    .line 12600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0M:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->finish(I)V

    .line 12601
    return-void

    .line 12602
    :cond_2
    const/16 v2, 0xbb

    const/16 v1, 0x27

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 12603
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/aO;->A0A(IILandroid/content/Intent;)V

    .line 12604
    return-void
.end method

.method public final onBackPressed()V
    .locals 8

    .line 12605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 12606
    .local p0, "currentTime":J
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/50;->A03:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/50;->A04:J

    sub-long v0, v6, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/50;->A03:J

    .line 12607
    iput-wide v6, p0, Lcom/facebook/ads/redexgen/X/50;->A04:J

    .line 12608
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/50;->A03:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/50;->A02:I

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 12609
    const/4 v2, 0x0

    .line 12610
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

    .line 12611
    .local v4, "interceptor":Lcom/facebook/ads/redexgen/X/4y;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4y;->A7u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12612
    const/4 v2, 0x1

    goto :goto_0

    .line 12613
    :cond_1
    if-nez v2, :cond_2

    .line 12614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0M:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onBackPressed()V

    .line 12615
    .end local v2    # "shouldIntercept":Z
    :cond_2
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 12616
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/MA;

    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/ah;

    if-eqz v0, :cond_1

    .line 12617
    check-cast v3, Lcom/facebook/ads/redexgen/X/ah;

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "hDbrw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/ah;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 12618
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/50;->A00:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_2

    .line 12619
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 12620
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    const/16 v2, 0x1e9

    const/16 v1, 0xe

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v3

    if-ne v6, v5, :cond_3

    .line 12621
    const/16 v2, 0x1ae

    const/16 v1, 0x8

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12622
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A07:Lcom/facebook/ads/redexgen/X/JJ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0K:Lcom/facebook/ads/redexgen/X/JI;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 12623
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/50;->A00:I

    .line 12624
    .end local p0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void

    .line 12625
    :cond_3
    const/16 v2, 0x18d

    const/16 v1, 0x9

    const/16 v0, 0x56

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

    .line 12626
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lj;->A02()V

    .line 12627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 12628
    .local p0, "intent":Landroid/content/Intent;
    const-class v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;

    .line 12629
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A01(Landroid/content/Intent;Ljava/lang/ClassLoader;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    .line 12630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kp;->A03(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v4

    .line 12631
    .local p1, "startAdContext":Lcom/facebook/ads/redexgen/X/XJ;
    if-eqz v4, :cond_1

    .line 12632
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0B(Lcom/facebook/ads/redexgen/X/0R;)V

    .line 12633
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "7njofUp2AYjKONZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/8D;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/8D;->A08(Ljava/lang/String;)V

    .line 12634
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2S(Ljava/lang/String;)V

    .line 12635
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->requestWindowFeature(I)Z

    .line 12636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    .line 12637
    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 12638
    const/16 v0, 0x400

    invoke-virtual {v1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 12639
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    .line 12640
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 12641
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/50;->A0A(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 12643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A01(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/MA;

    .line 12644
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/MA;

    if-nez v1, :cond_2

    .line 12645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    .line 12646
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A02:I

    const/4 v2, 0x6

    const/16 v1, 0x3a

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 12647
    const/16 v2, 0x40

    const/16 v1, 0xb

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 12648
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0K()V

    .line 12649
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 12650
    return-void

    .line 12651
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    invoke-interface {v1, v0, p1, p0}, Lcom/facebook/ads/redexgen/X/MA;->A8J(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V

    .line 12652
    const/16 v2, 0xe2

    const/16 v1, 0x27

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A0E(Ljava/lang/String;)V

    .line 12653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/50;->A04:J

    .line 12654
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    const/16 v2, 0x196

    const/16 v1, 0xd

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0F:Ljava/lang/String;

    .line 12655
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/50;->A05()V

    .line 12656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A09(Landroid/content/Intent;)V

    .line 12657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/50;->A00:I

    .line 12658
    const/16 v2, 0x4b

    const/16 v1, 0xb

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_3

    .line 12659
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0E:Ljava/lang/String;

    .line 12660
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/50;->A0E:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    .line 12661
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A07:Lcom/facebook/ads/redexgen/X/JJ;

    .line 12662
    return-void

    .line 12663
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0E:Ljava/lang/String;

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 4

    .line 12664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2T(Ljava/lang/String;)V

    .line 12665
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/50;->A06()V

    .line 12666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 12667
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 12668
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/MA;

    if-eqz v0, :cond_2

    .line 12669
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MA;->onDestroy()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12670
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "BK5JyIukG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/MA;

    .line 12671
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/Na;

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    if-eqz v3, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0B:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Na;->A08()V

    .line 12673
    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A0A:Lcom/facebook/ads/redexgen/X/Mj;

    sget-object v1, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "rHb3ILEFnyWtMYiOwcguj0"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "XKBHK5KZoSEcfbvzOM5yLt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    .line 12674
    :goto_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mj;->A0I()V

    .line 12675
    :cond_4
    return-void

    :cond_5
    if-eqz v3, :cond_4

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A0Q:[Ljava/lang/String;

    const-string v1, "VoJV9dI9dal5KZ60JkB8i5Bpps"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public final onPause()V
    .locals 6

    .line 12676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2U(Ljava/lang/String;)V

    .line 12677
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/50;->A03:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/50;->A04:J

    sub-long/2addr v2, v0

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/50;->A03:J

    .line 12678
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/MA;

    if-eqz v1, :cond_0

    .line 12679
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MA;->AB2(Z)V

    .line 12680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12681
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/50;->A07:Lcom/facebook/ads/redexgen/X/JJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A0E:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 12682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0K:Z

    .line 12683
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 12684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2V(Ljava/lang/String;)V

    .line 12685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/50;->A04:J

    .line 12686
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/MA;

    if-eqz v1, :cond_0

    .line 12687
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MA;->ABR(Z)V

    .line 12688
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0K:Z

    if-eqz v0, :cond_0

    .line 12689
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/50;->A07:Lcom/facebook/ads/redexgen/X/JJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A0F:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 12690
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 12691
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 12692
    .local p0, "adnwSavedState":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A09:Lcom/facebook/ads/redexgen/X/MA;

    if-eqz v0, :cond_0

    .line 12693
    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/MA;->ADT(Landroid/os/Bundle;)V

    .line 12694
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/50;->A01:I

    const/16 v2, 0x1b6

    const/16 v1, 0x18

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12695
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A0D:Ljava/lang/String;

    const/16 v2, 0x1f7

    const/16 v1, 0x8

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12696
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A0E:Ljava/lang/String;

    const/16 v2, 0x4b

    const/16 v1, 0xb

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12697
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Lcom/facebook/ads/redexgen/X/KK;

    const/16 v2, 0x1ff

    const/16 v1, 0x8

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 12698
    invoke-static {p1, v4}, Lcom/facebook/ads/redexgen/X/Kp;->A09(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 12699
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 12700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2W(Ljava/lang/String;)V

    .line 12701
    iget v2, p0, Lcom/facebook/ads/redexgen/X/50;->A01:I

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    .line 12702
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A0L:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/M0;->A03(Landroid/app/Activity;ILcom/facebook/ads/redexgen/X/XJ;)V

    .line 12703
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 12704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0N:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2X(Ljava/lang/String;)V

    .line 12705
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 12706
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/5r;->A03(Landroid/app/Activity;Landroid/view/MotionEvent;)V

    .line 12707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A0M:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 1

    .line 12708
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->A0K()V

    .line 12709
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 12710
    return-void
.end method
