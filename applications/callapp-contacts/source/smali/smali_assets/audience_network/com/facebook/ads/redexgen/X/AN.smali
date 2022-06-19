.class public final Lcom/facebook/ads/redexgen/X/AN;
.super Lcom/facebook/ads/redexgen/X/KJ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ah;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AN;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AN;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ah;)V
    .locals 0

    .line 21281
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KJ;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/AN;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AN;->A01:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/AN;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/AN;->A02:[Ljava/lang/String;

    const-string v1, "AaqsZ0kN0wdt4PxPT80lhbaiVomD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x70t
        0x58t
        0x4et
        0x48t
        0x58t
        0x76t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0EtrvwW3MQkzSecFvnBX4JMfeqt66nTs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "31KVsJeKTKhLPCOslR3tmLkuK1Xd7IZW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ErGHvP3zkyEh4xX1eQlIOsNtLUt9M6Nd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ktedtIytEv2FRFoF5SCcQiRhp3TIfz9L"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "y7SJDh6vytCFGPm3eUSBlWJktjn6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2Pj8nikJl49sV4F"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Af2d4ar6BC4UZ7hhvi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JNiO58cgS0ZkwkRgj9Y5ghYAFIamZa37"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AN;->A02:[Ljava/lang/String;

    return-void
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/7s;)V
    .locals 7

    .line 21282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0A(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21283
    return-void

    .line 21284
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Lf;->A00()I

    move-result v3

    .line 21285
    .local p0, "currentPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0A(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getDuration()I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/AN;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/AN;->A02:[Ljava/lang/String;

    const-string v1, "TbAO2dDqBDoNQ2bRUMqGtM03oOW5oInT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "7usa1bkUEfgMRCOaWWj5lxH1mcKQdA4B"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sub-int/2addr v4, v3

    .line 21286
    .local p1, "msToFinishVideo":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A05(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    .line 21287
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0A(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A02:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_2

    .line 21288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A02(Lcom/facebook/ads/redexgen/X/ah;)Landroid/os/Handler;

    move-result-object v5

    new-instance v2, Lcom/facebook/ads/redexgen/X/al;

    invoke-direct {v2, p0, v3}, Lcom/facebook/ads/redexgen/X/al;-><init>(Lcom/facebook/ads/redexgen/X/AN;I)V

    const-wide/16 v0, 0x1388

    invoke-virtual {v5, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21289
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0i(Lcom/facebook/ads/redexgen/X/ah;)Z

    move-result v0

    const/16 v1, 0xbb8

    if-eqz v0, :cond_5

    .line 21290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0B(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v0

    if-eqz v0, :cond_3

    if-gt v4, v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    .line 21291
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0B(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0K()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0B(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0G()V

    .line 21293
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A00(Lcom/facebook/ads/redexgen/X/ah;)I

    move-result v0

    const/4 v4, 0x1

    if-lez v0, :cond_7

    .line 21294
    int-to-float v2, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A00(Lcom/facebook/ads/redexgen/X/ah;)I

    move-result v0

    int-to-float v6, v0

    sget-object v5, Lcom/facebook/ads/redexgen/X/AN;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v5, v0

    const/4 v0, 0x1

    aget-object v5, v5, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v5, Lcom/facebook/ads/redexgen/X/AN;->A02:[Ljava/lang/String;

    const-string v1, "KNrwLfAolWq8E2xnnNCyl8EcaoCJ7z9e"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const-string v1, "xM5zDgznR62IFK5BHz2dZbxYn3IDVbku"

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v0

    div-float/2addr v2, v6

    .line 21295
    .local v0, "seenPercentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A09(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setProgress(F)V

    .line 21296
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_7

    :goto_2
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    sget-object v1, Lcom/facebook/ads/redexgen/X/AN;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_6

    goto/16 :goto_0

    :cond_4
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v0

    div-float/2addr v2, v6

    .line 21297
    .local v0, "seenPercentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A09(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setProgress(F)V

    .line 21298
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_7

    goto :goto_2

    .line 21299
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0C(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    .line 21300
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0C(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A0H()Z

    move-result v0

    if-eqz v0, :cond_3

    if-gt v4, v1, :cond_3

    .line 21301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0C(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A0G()V

    goto/16 :goto_1

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/AN;->A02:[Ljava/lang/String;

    const-string v1, "C6yUCx24zOlG0J7cvymFZeeDzq1xacyW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/ah;->A0h(Lcom/facebook/ads/redexgen/X/ah;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 21302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A09(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarActionMode(I)V

    .line 21303
    .end local v0    # "seenPercentage":F
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A09(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 21304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A01(Lcom/facebook/ads/redexgen/X/ah;)I

    move-result v1

    div-int/lit16 v0, v3, 0x3e8

    sub-int/2addr v1, v0

    .line 21305
    .local v0, "remainingSecondsForReward":I
    if-lez v1, :cond_9

    .line 21306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    .line 21307
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A04(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/S5;

    move-result-object v0

    .line 21308
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    .line 21309
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1Z;->A00()Ljava/lang/String;

    move-result-object v4

    .line 21310
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 21311
    .local v0, "rewardMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A09(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 21312
    .end local v0    # "rewardMessage":Ljava/lang/String;
    .end local v0
    :cond_8
    :goto_3
    return-void

    .line 21313
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A09(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 21314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AN;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A09(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarActionMode(I)V

    goto :goto_3
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 21315
    check-cast p1, Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AN;->A03(Lcom/facebook/ads/redexgen/X/7s;)V

    return-void
.end method
