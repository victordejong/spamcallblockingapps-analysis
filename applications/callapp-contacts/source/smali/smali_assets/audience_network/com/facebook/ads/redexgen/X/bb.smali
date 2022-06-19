.class public abstract Lcom/facebook/ads/redexgen/X/bb;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MA;


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/L6;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Ok;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Lcom/facebook/ads/redexgen/X/17;

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/LV;

.field public final A08:Lcom/facebook/ads/redexgen/X/M9;

.field public final A09:Lcom/facebook/ads/redexgen/X/S1;

.field public final A0A:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A0B:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0C:Lcom/facebook/ads/redexgen/X/JJ;

.field public final A0D:Lcom/facebook/ads/redexgen/X/M4;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bb;->A0T()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bb;->A0S()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/S1;)V
    .locals 7

    .line 70282
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 70283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A04:Z

    .line 70284
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A03:Z

    .line 70285
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bb;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    .line 70286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    .line 70287
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A19(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A06:Z

    .line 70288
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bb;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    .line 70289
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/M9;

    .line 70290
    new-instance v0, Lcom/facebook/ads/redexgen/X/LV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LV;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A07:Lcom/facebook/ads/redexgen/X/LV;

    .line 70291
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    .line 70292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    .line 70293
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bb;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0C:Lcom/facebook/ads/redexgen/X/JJ;

    .line 70294
    new-instance v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bb;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    .line 70295
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bb;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bb;->A0C:Lcom/facebook/ads/redexgen/X/JJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    .line 70296
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0F()I

    move-result v6

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/JJ;II)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/bb;->A0D:Lcom/facebook/ads/redexgen/X/M4;

    .line 70297
    return-void
.end method

.method private A0O(I)Lcom/facebook/ads/redexgen/X/1I;
    .locals 4

    .line 70298
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 70299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A05:Lcom/facebook/ads/redexgen/X/17;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    return-object v0

    .line 70300
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bb;->A05:Lcom/facebook/ads/redexgen/X/17;

    sget-object v1, Lcom/facebook/ads/redexgen/X/bb;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/bb;->A0F:[Ljava/lang/String;

    const-string v1, "MYlveE6g4wScBr3MsnlZwbj0w3RA4Q0m"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/17;->A00()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    return-object v0
.end method

.method public static A0P(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bb;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x51

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0Q()V
    .locals 0

    .line 70301
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bb;->removeAllViews()V

    .line 70302
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 70303
    return-void
.end method

.method private A0R()V
    .locals 7

    .line 70304
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70305
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bb;->A0c()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A02:Lcom/facebook/ads/redexgen/X/Ok;

    if-nez v0, :cond_0

    .line 70306
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/bb;->A04:Z

    .line 70307
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/bb;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    .line 70308
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    .line 70309
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Oi;

    invoke-direct {v1, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/Oi;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    .line 70310
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oi;->A08(Lcom/facebook/ads/redexgen/X/1I;)Lcom/facebook/ads/redexgen/X/Oi;

    move-result-object v0

    .line 70311
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oi;->A0B()Lcom/facebook/ads/redexgen/X/Ok;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A02:Lcom/facebook/ads/redexgen/X/Ok;

    .line 70312
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bb;->A02:Lcom/facebook/ads/redexgen/X/Ok;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bb;->A0C:Lcom/facebook/ads/redexgen/X/JJ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0U:Lcom/facebook/ads/redexgen/X/JI;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/JJ;Lcom/facebook/ads/redexgen/X/JI;)V

    .line 70313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/M9;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/M9;->A3L(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 70314
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A02:Lcom/facebook/ads/redexgen/X/Ok;

    invoke-interface {v1, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/M9;->A3L(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 70315
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bb;->A02:Lcom/facebook/ads/redexgen/X/Ok;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bg;-><init>(Lcom/facebook/ads/redexgen/X/bb;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ok;->A04(Lcom/facebook/ads/redexgen/X/Oj;)V

    .line 70316
    :goto_0
    return-void

    .line 70317
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/M9;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/M9;->A3L(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 70318
    goto :goto_0
.end method

.method public static A0S()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bb;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x58t
        0x54t
        0x56t
        0x15t
        0x5dt
        0x5at
        0x58t
        0x5et
        0x59t
        0x54t
        0x54t
        0x50t
        0x15t
        0x5at
        0x5ft
        0x48t
        0x15t
        0x52t
        0x55t
        0x4ft
        0x5et
        0x49t
        0x48t
        0x4ft
        0x52t
        0x4ft
        0x52t
        0x5at
        0x57t
        0x15t
        0x52t
        0x56t
        0x4bt
        0x49t
        0x5et
        0x48t
        0x48t
        0x52t
        0x54t
        0x55t
        0x15t
        0x57t
        0x54t
        0x5ct
        0x5ct
        0x5et
        0x5ft
    .end array-data
.end method

.method public static A0T()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fqT9snXDZkE2N6bIU2twhbCcrvrF5wQR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "W8MK3buqarkLhDixdfnbfGeXuw3i87xB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "M5iWaw3OwwKxChS5bTa9KUrj63pwu1Od"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QKu8TlGQ3D7NsDDaY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OUnrWL6BanKvWJF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "644mHU9zQQHAcSiNB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MqQzuM0GD0HqxOL2854PPJvoiao7nama"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mSpdOD621tCilusEUOf234Jx9LR3KzyX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bb;->A0F:[Ljava/lang/String;

    return-void
.end method

.method private A0U(Lcom/facebook/ads/redexgen/X/1I;Z)V
    .locals 3

    .line 70319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0D:Lcom/facebook/ads/redexgen/X/M4;

    .line 70320
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M4;->getToolbarHeight()I

    move-result v2

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70321
    .local p0, "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0D:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/M4;->A05(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 70323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0D:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/bb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70324
    return-void
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/bb;Z)Z
    .locals 0

    .line 70325
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/bb;->A04:Z

    return p1
.end method

.method public static synthetic A0W(Lcom/facebook/ads/redexgen/X/bb;Z)Z
    .locals 0

    .line 70326
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/bb;->A03:Z

    return p1
.end method


# virtual methods
.method public final A0X()V
    .locals 1

    .line 70327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Nx;

    if-nez v0, :cond_1

    .line 70328
    :cond_0
    return-void

    .line 70329
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bb;->A0d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Nx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nx;->A0Y()V

    .line 70331
    :goto_0
    return-void

    .line 70332
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Nx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nx;->A0X()V

    goto :goto_0
.end method

.method public final A0Y(I)V
    .locals 2

    .line 70333
    new-instance v1, Lcom/facebook/ads/redexgen/X/bf;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/bf;-><init>(Lcom/facebook/ads/redexgen/X/bb;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/L6;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/L6;-><init>(ILcom/facebook/ads/redexgen/X/L5;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A01:Lcom/facebook/ads/redexgen/X/L6;

    .line 70334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A03:Z

    .line 70335
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bb;->A0X()V

    .line 70336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A08()Z

    .line 70337
    return-void
.end method

.method public final A0Z(Landroid/view/View;ZI)V
    .locals 4

    .line 70338
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bb;->A00:Landroid/view/View;

    .line 70339
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bb;->A07:Lcom/facebook/ads/redexgen/X/LV;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LU;->A03:Lcom/facebook/ads/redexgen/X/LU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A05(Lcom/facebook/ads/redexgen/X/LU;)V

    .line 70340
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bb;->A0Q()V

    .line 70341
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70342
    .local p0, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 70343
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70344
    invoke-virtual {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/bb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70345
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/bb;->A0O(I)Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    .line 70346
    .local p2, "colorInfo":Lcom/facebook/ads/redexgen/X/1I;
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/bb;->A0U(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 70347
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1I;->A07(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 70348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/M9;

    if-eqz v0, :cond_2

    .line 70349
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bb;->A0R()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/bb;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70350
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0D:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M4;->getToolbarHeight()I

    move-result v0

    goto :goto_0

    .line 70351
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/bb;->A0F:[Ljava/lang/String;

    const-string v1, "NsWlVTe7e8AxmZfep9MsD1WsEVvEb3lR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz p2, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_2

    .line 70352
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bb;->A07:Lcom/facebook/ads/redexgen/X/LV;

    sget-object v1, Lcom/facebook/ads/redexgen/X/bb;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/bb;->A0F:[Ljava/lang/String;

    const-string v1, "LlUUcmlOaTawHlOzciUSj9DhXPbTXBAe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/LU;->A04:Lcom/facebook/ads/redexgen/X/LU;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/LV;->A05(Lcom/facebook/ads/redexgen/X/LU;)V

    .line 70353
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/50;)V
    .locals 5

    .line 70354
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bb;->A07:Lcom/facebook/ads/redexgen/X/LV;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A04(Landroid/view/Window;)V

    .line 70355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A05:Lcom/facebook/ads/redexgen/X/17;

    .line 70356
    const/4 v1, 0x0

    .line 70357
    .local p0, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    .line 70359
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bb;->A0D:Lcom/facebook/ads/redexgen/X/M4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    .line 70360
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    .line 70361
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v2

    .line 70362
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    .line 70363
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    .line 70364
    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setPageDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1Z;)V

    .line 70365
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bb;->A0D:Lcom/facebook/ads/redexgen/X/M4;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bv;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/bv;-><init>(Lcom/facebook/ads/redexgen/X/bb;Lcom/facebook/ads/redexgen/X/50;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarListener(Lcom/facebook/ads/redexgen/X/M3;)V

    .line 70366
    return-void

    .line 70367
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/50;)V
    .locals 4

    .line 70368
    move-object v3, p0

    .line 70369
    .local p0, "interstitialView":Lcom/facebook/ads/redexgen/X/bb;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 70370
    .local p1, "fadeOut":Landroid/view/animation/Animation;
    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 70371
    new-instance v0, Lcom/facebook/ads/redexgen/X/MG;

    invoke-direct {v0, p0, v3, p1}, Lcom/facebook/ads/redexgen/X/MG;-><init>(Lcom/facebook/ads/redexgen/X/bb;Lcom/facebook/ads/redexgen/X/bb;Lcom/facebook/ads/redexgen/X/50;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 70372
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/bb;->startAnimation(Landroid/view/animation/Animation;)V

    .line 70373
    return-void
.end method

.method public final A0c()Z
    .locals 4

    .line 70374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    .line 70375
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0P()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/bb;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/bb;->A0F:[Ljava/lang/String;

    const-string v1, "rwsNokIOLx9Fj0KMvDMbhHWjcozH5rOe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 70376
    :goto_0
    return v0
.end method

.method public final A0d()Z
    .locals 1

    .line 70377
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A03:Z

    return v0
.end method

.method public final A0e()Z
    .locals 1

    .line 70378
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A04:Z

    return v0
.end method

.method public abstract A0f()Z
.end method

.method public AB2(Z)V
    .locals 1

    .line 70379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A01:Lcom/facebook/ads/redexgen/X/L6;

    if-eqz v0, :cond_0

    .line 70380
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A07()Z

    .line 70382
    :cond_0
    return-void
.end method

.method public ABR(Z)V
    .locals 1

    .line 70383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A01:Lcom/facebook/ads/redexgen/X/L6;

    if-eqz v0, :cond_0

    .line 70384
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A05()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A08()Z

    .line 70386
    :cond_0
    return-void
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;
    .locals 1

    .line 70387
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    return-object v0
.end method

.method public getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/M9;
    .locals 1

    .line 70388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/M9;

    return-object v0
.end method

.method public abstract getCloseButtonStyle()I
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation
.end method

.method public onDestroy()V
    .locals 2

    .line 70389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A07:Lcom/facebook/ads/redexgen/X/LV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LV;->A03()V

    .line 70390
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bb;->A0D:Lcom/facebook/ads/redexgen/X/M4;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarListener(Lcom/facebook/ads/redexgen/X/M3;)V

    .line 70391
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bb;->A0Q()V

    .line 70392
    return-void
.end method

.method public setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/La;)V
    .locals 4

    .line 70393
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/La;->A06()V

    .line 70394
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bb;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70395
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bb;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v3

    .line 70396
    const/4 v2, 0x0

    const/16 v1, 0x2f

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A0P(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/M9;->A3t(Ljava/lang/String;)V

    .line 70397
    :cond_0
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/M9;)V
    .locals 0

    .line 70398
    return-void
.end method
