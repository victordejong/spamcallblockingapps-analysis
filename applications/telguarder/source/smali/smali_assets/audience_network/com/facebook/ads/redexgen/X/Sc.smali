.class public final Lcom/facebook/ads/redexgen/X/Sc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ly;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Lx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShakeDetectorListener"
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/8w;

.field public A01:Lcom/facebook/ads/redexgen/X/QF;

.field public final A02:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sc;->A05()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1

    .line 52520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52521
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/QX;->A01(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A01:Lcom/facebook/ads/redexgen/X/QF;

    .line 52522
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sc;->A02:Ljava/util/concurrent/Executor;

    .line 52523
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sc;->A00:Lcom/facebook/ads/redexgen/X/8w;

    .line 52524
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Sc;)Lcom/facebook/ads/redexgen/X/QF;
    .locals 0

    .line 52525
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A01:Lcom/facebook/ads/redexgen/X/QF;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sc;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x35

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Sc;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 52526
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sc;->A03(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private A03(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52527
    new-instance v4, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/QT;-><init>()V

    .line 52528
    .local p0, "requestParameters":Lcom/facebook/ads/redexgen/X/QT;
    new-instance v5, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/QT;-><init>()V

    .line 52529
    .local p1, "metadata":Lcom/facebook/ads/redexgen/X/QT;
    new-instance v6, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/QT;-><init>()V

    .line 52530
    .local v4, "miscInfo":Lcom/facebook/ads/redexgen/X/QT;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5b;->A00()Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Z;->A03()Ljava/lang/String;

    move-result-object v3

    .line 52531
    const/16 v2, 0x101

    const/16 v1, 0xf

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/QT;->A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52532
    const/16 v2, 0xdc

    const/16 v1, 0x9

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/QT;->A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52533
    const/16 v2, 0xba

    const/16 v1, 0xb

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/QT;->A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52534
    const/16 v2, 0xae

    const/16 v1, 0xc

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1e

    const/16 v1, 0x30

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/QT;->A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52535
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 52536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52537
    const/16 v2, 0xc5

    const/16 v1, 0xb

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/QT;->A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A00:Lcom/facebook/ads/redexgen/X/8w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A08()Ljava/lang/String;

    move-result-object v3

    .line 52539
    .local v5, "clientToken":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 52540
    const/16 v2, 0xd0

    const/16 v1, 0xc

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v3}, Lcom/facebook/ads/redexgen/X/QT;->A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52541
    :cond_0
    const/16 v2, 0xe5

    const/16 v1, 0xb

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p1}, Lcom/facebook/ads/redexgen/X/QT;->A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52542
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/LI;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf8

    const/16 v1, 0x9

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lcom/facebook/ads/redexgen/X/QT;->A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52543
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/LI;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf0

    const/16 v1, 0x8

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/QT;->A05(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/QT;

    .line 52544
    return-object v4
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Sc;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 52545
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A02:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x110

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sc;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x62t
        0x67t
        0x67t
        0x61t
        0x64t
        0x69t
        0x61t
        0x63t
        0x66t
        0x62t
        0x63t
        0x60t
        0x67t
        0x61t
        0x62t
        0x5ct
        0x57t
        0x59t
        0x5et
        0x5dt
        0x5bt
        0x5at
        0x5ct
        0x5et
        0x56t
        0x56t
        0x5bt
        0x5at
        0x5dt
        0x5at
        0x5ft
        0x50t
        0x5at
        0x50t
        0x5ct
        0x5at
        0x50t
        0x5dt
        0x59t
        0x50t
        0x50t
        0x5et
        0x50t
        0x59t
        0x58t
        0x15t
        0x50t
        0xbt
        0xft
        0x5bt
        0x50t
        0x8t
        0x58t
        0xft
        0x5bt
        0x5et
        0x5dt
        0x5ct
        0x5et
        0x5dt
        0x5ft
        0x8t
        0x5ft
        0xat
        0x5ft
        0x59t
        0xdt
        0x5et
        0x59t
        0x5et
        0xft
        0x5ct
        0xbt
        0xat
        0x5bt
        0x5at
        0xat
        0x5bt
        0x5et
        0x7ct
        0x73t
        0x7et
        0x78t
        0x71t
        0x6dt
        0x41t
        0x59t
        0x0t
        0x4ft
        0x54t
        0x48t
        0x45t
        0x52t
        0x53t
        0x0t
        0x4ct
        0x4ft
        0x47t
        0x49t
        0x4et
        0x0t
        0x41t
        0x53t
        0x0t
        0x59t
        0x4ft
        0x55t
        0x0t
        0x54t
        0x4ft
        0x0t
        0x44t
        0x45t
        0x42t
        0x55t
        0x47t
        0x1ft
        0x0t
        0x68t
        0x4ft
        0x57t
        0x0t
        0x44t
        0x4ft
        0x0t
        0x59t
        0x4ft
        0x55t
        0x0t
        0x52t
        0x45t
        0x50t
        0x52t
        0x4ft
        0x44t
        0x55t
        0x43t
        0x45t
        0x0t
        0x54t
        0x48t
        0x45t
        0x0t
        0x49t
        0x53t
        0x53t
        0x55t
        0x45t
        0x1ft
        0x35t
        0x3t
        0x8t
        0x2t
        0x46t
        0x34t
        0x3t
        0x16t
        0x9t
        0x14t
        0x12t
        0x3et
        0x1t
        0x8t
        0x1dt
        0x49t
        0x21t
        0x8t
        0x19t
        0x19t
        0xct
        0x7t
        0xct
        0xdt
        0x56t
        0x1bt
        0x19t
        0x19t
        0x1ft
        0x9t
        0x9t
        0x25t
        0xet
        0x15t
        0x11t
        0x1ft
        0x14t
        0x19t
        0x1bt
        0xet
        0x1ft
        0x1dt
        0x15t
        0x8t
        0x3t
        0x25t
        0x13t
        0x1et
        0x2ft
        0x20t
        0x25t
        0x29t
        0x22t
        0x38t
        0x13t
        0x38t
        0x25t
        0x21t
        0x29t
        0x63t
        0x6ct
        0x69t
        0x65t
        0x6et
        0x74t
        0x5ft
        0x74t
        0x6ft
        0x6bt
        0x65t
        0x6et
        0x59t
        0x55t
        0x54t
        0x5ct
        0x53t
        0x5dt
        0x65t
        0x53t
        0x5et
        0x1t
        0x0t
        0x16t
        0x6t
        0x17t
        0xct
        0x15t
        0x11t
        0xct
        0xat
        0xbt
        0x2ft
        0x27t
        0x36t
        0x23t
        0x26t
        0x23t
        0x36t
        0x23t
        0x39t
        0x3dt
        0x27t
        0x37t
        0xbt
        0x3dt
        0x3at
        0x32t
        0x3bt
        0x74t
        0x72t
        0x64t
        0x73t
        0x5et
        0x68t
        0x65t
        0x64t
        0x6ft
        0x75t
        0x68t
        0x67t
        0x68t
        0x64t
        0x73t
    .end array-data
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/8w;)V
    .locals 0

    .line 52546
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sc;->A00:Lcom/facebook/ads/redexgen/X/8w;

    .line 52547
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Sc;Lcom/facebook/ads/redexgen/X/8w;)V
    .locals 0

    .line 52548
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sc;->A06(Lcom/facebook/ads/redexgen/X/8w;)V

    return-void
.end method


# virtual methods
.method public final ABb()V
    .locals 6

    .line 52549
    invoke-static {}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A00()Landroid/app/Activity;

    move-result-object v3

    .line 52550
    .local p0, "context":Landroid/app/Activity;
    if-nez v3, :cond_0

    .line 52551
    return-void

    .line 52552
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52553
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const/16 v2, 0xa0

    const/16 v1, 0xe

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 52554
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 52555
    .local v4, "input":Landroid/widget/EditText;
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 52556
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 52557
    const/16 v2, 0x54

    const/16 v1, 0x41

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 52558
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 52559
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setMinLines(I)V

    .line 52560
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 52561
    new-instance v3, Lcom/facebook/ads/redexgen/X/Lv;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/Lv;-><init>(Lcom/facebook/ads/redexgen/X/Sc;)V

    const/16 v2, 0x4e

    const/4 v1, 0x6

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 52562
    new-instance v3, Lcom/facebook/ads/redexgen/X/Lw;

    invoke-direct {v3, p0, v5}, Lcom/facebook/ads/redexgen/X/Lw;-><init>(Lcom/facebook/ads/redexgen/X/Sc;Landroid/widget/EditText;)V

    const/16 v2, 0x95

    const/16 v1, 0xb

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 52563
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 52564
    .local v2, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 52565
    return-void
.end method
