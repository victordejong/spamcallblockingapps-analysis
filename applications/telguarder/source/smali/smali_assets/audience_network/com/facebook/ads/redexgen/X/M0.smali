.class public final Lcom/facebook/ads/redexgen/X/M0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 43550
    invoke-static {}, Lcom/facebook/ads/redexgen/X/M0;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/M0;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/M0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/M0;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/M0;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    sub-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/M0;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/M0;->A01:[Ljava/lang/String;

    const-string v1, "R3kMyn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 v0, p1, -0x14

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x46

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/M0;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x6dt
        -0x60t
        -0x75t
        -0x73t
        -0x68t
        -0x64t
        -0x6ft
        -0x69t
        -0x6at
        0x48t
        -0x6ft
        -0x6at
        0x48t
        -0x65t
        -0x75t
        -0x66t
        -0x73t
        -0x73t
        -0x6at
        0x48t
        -0x6ft
        -0x6at
        -0x64t
        -0x73t
        -0x66t
        -0x77t
        -0x75t
        -0x64t
        -0x6ft
        -0x62t
        -0x73t
        0x48t
        -0x75t
        -0x70t
        -0x73t
        -0x75t
        -0x6dt
        0x54t
        0x48t
        -0x77t
        -0x65t
        -0x65t
        -0x63t
        -0x6bt
        -0x6ft
        -0x6at
        -0x71t
        0x48t
        -0x6ft
        -0x6at
        -0x64t
        -0x73t
        -0x66t
        -0x77t
        -0x75t
        -0x64t
        -0x6ft
        -0x62t
        -0x73t
        0x56t
        -0x21t
        -0x22t
        -0x1at
        -0x2ct
        -0x1ft
        -0x45t
        -0x4et
        -0x44t
        -0x4ct
        -0x3et
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CRKlMdJj7sWkVQXvhxP2gtYMKrwrdBdz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MDVslC7yGiRJk7iB8DE8e8h4fEVrC5ER"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lH08WA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RxIchMFZh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vNyd6Jid8bvsA1cw15Ve5Ic9LBA7HcUI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "txgfdNfKSs8Co5f2ObGoVq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "d8ndlqqx7tIKNJdyWXTDq8r8sQB5dgXc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5RbatCjsfF363SonahZsted9lIdQCMHb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/M0;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Wm;)Z
    .locals 1

    .line 43552
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M0;->A04(Lcom/facebook/ads/redexgen/X/Wm;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M1;->A04(Lcom/facebook/ads/redexgen/X/Wm;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Wm;)Z
    .locals 8

    .line 43553
    const/4 v7, 0x1

    if-nez p0, :cond_0

    .line 43554
    return v7

    .line 43555
    :cond_0
    :try_start_0
    const/16 v2, 0x3c

    const/4 v1, 0x5

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Wm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 43556
    .local v7, "pm":Landroid/os/PowerManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x14

    if-lt v1, v0, :cond_1

    .line 43557
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0

    .line 43558
    :cond_1
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43559
    .end local v7    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v6

    .line 43560
    .local v7, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/M0;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x3c

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43561
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A2A:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 43562
    const/16 v2, 0x41

    const/4 v1, 0x5

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 43563
    .end local v7    # "e":Ljava/lang/Exception;
    return v7
.end method
