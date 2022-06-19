.class public final Lcom/facebook/ads/redexgen/X/Xd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Xc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorSignalCollector"
.end annotation


# static fields
.field public static A0K:[B

.field public static A0L:[Ljava/lang/String;


# instance fields
.field public final A00:F

.field public final A01:F

.field public final A02:F

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:Ljava/lang/String;

.field public final A09:Ljava/lang/String;

.field public final A0A:Ljava/lang/String;

.field public final A0B:Ljava/lang/String;

.field public final A0C:Ljava/lang/String;

.field public final A0D:Ljava/lang/String;

.field public final A0E:Ljava/lang/String;

.field public final A0F:Ljava/lang/String;

.field public final A0G:Ljava/lang/String;

.field public final A0H:Ljava/lang/String;

.field public final A0I:Ljava/lang/String;

.field public final A0J:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xd;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xd;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Sensor;)V
    .locals 3

    .line 65229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65230
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A08:Ljava/lang/String;

    .line 65231
    const/16 v2, 0x8

    const/4 v1, 0x2

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0A:Ljava/lang/String;

    .line 65232
    const/4 v2, 0x5

    const/4 v1, 0x3

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0B:Ljava/lang/String;

    .line 65233
    const/4 v2, 0x2

    const/4 v1, 0x3

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A09:Ljava/lang/String;

    .line 65234
    const/16 v2, 0xa

    const/4 v1, 0x1

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0C:Ljava/lang/String;

    .line 65235
    const/16 v2, 0xb

    const/4 v1, 0x1

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0D:Ljava/lang/String;

    .line 65236
    const/16 v2, 0xc

    const/4 v1, 0x1

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0E:Ljava/lang/String;

    .line 65237
    const/16 v2, 0xd

    const/4 v1, 0x1

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0F:Ljava/lang/String;

    .line 65238
    const/16 v2, 0xe

    const/4 v1, 0x3

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0G:Ljava/lang/String;

    .line 65239
    const/16 v2, 0x11

    const/4 v1, 0x3

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0H:Ljava/lang/String;

    .line 65240
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A03:I

    .line 65241
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    :goto_1
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Xd;->A04:I

    .line 65242
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A00:F

    .line 65243
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A05:I

    .line 65244
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0I:Ljava/lang/String;

    .line 65245
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getPower()F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A01:F

    .line 65246
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getResolution()F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A02:F

    .line 65247
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A06:I

    .line 65248
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0J:Ljava/lang/String;

    .line 65249
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A07:I

    .line 65250
    return-void

    .line 65251
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaxDelay()I

    move-result v2

    goto :goto_1

    .line 65252
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getId()I

    move-result v0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xd;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x15

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
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xd;->A0K:[B

    return-void

    :array_0
    .array-data 1
        -0x75t
        -0x7at
        -0xft
        -0x1bt
        -0x18t
        -0x5t
        -0x9t
        -0xet
        -0x7t
        -0x2t
        -0x63t
        -0x17t
        -0x44t
        -0x50t
        -0x1dt
        -0x2et
        -0x25t
        -0xft
        -0x20t
        -0x13t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kkWOLyqCuekRlHzY0dufJPnvXlKuTBMP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "q1NEgs195XInyqSDCczkpcUJRL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "c476rYOIqfo9Ykv4QFsRHxCvrUJ4TkVK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1hFAwDVTqX97goXwdE6QP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wq6slMpt2ku3IDsCfyjC1DHCXrO5n8Gl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tdrO93VA68UGKVjXQAyF6la1smnce5ui"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gyS2jan8KPUPLmefojoMJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xd;->A0L:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A82(Ljava/lang/Object;)Z
    .locals 5

    .line 65253
    check-cast p1, Lcom/facebook/ads/redexgen/X/Xd;

    .line 65254
    .local p0, "customObjectSignalValueDef":Lcom/facebook/ads/redexgen/X/Xd;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Xd;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Xd;->A03:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Xd;->A04:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Xd;->A04:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Xd;->A00:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Xd;->A00:F

    sub-float/2addr v1, v0

    .line 65255
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 65256
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5v;->A01()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Xd;->A05:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Xd;->A05:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0I:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Xd;->A0I:Ljava/lang/String;

    .line 65257
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A0G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Xd;->A01:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Xd;->A01:F

    sub-float/2addr v1, v0

    .line 65258
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 65259
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5v;->A01()F

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xd;->A0L:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xd;->A0L:[Ljava/lang/String;

    const-string v1, "UdmRKqyBDdxRVG0p8uELjF7EIcyMb5Gk"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    cmpg-float v0, v4, v3

    if-gez v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Xd;->A02:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Xd;->A02:F

    sub-float/2addr v1, v0

    .line 65260
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 65261
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5v;->A01()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Xd;->A06:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Xd;->A06:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0J:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Xd;->A0J:Ljava/lang/String;

    .line 65262
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A0G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Xd;->A07:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Xd;->A07:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 65263
    :goto_0
    return v0
.end method

.method public final AE0()I
    .locals 4

    .line 65264
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, 0x4

    .line 65265
    const/4 v2, 0x2

    const/4 v1, 0x3

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x4

    .line 65266
    const/16 v2, 0x8

    const/4 v1, 0x2

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x4

    .line 65267
    const/4 v2, 0x5

    const/4 v1, 0x3

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x4

    .line 65268
    const/16 v2, 0xa

    const/4 v1, 0x1

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0I:Ljava/lang/String;

    .line 65269
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 65270
    const/16 v2, 0xb

    const/4 v1, 0x1

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x4

    .line 65271
    const/16 v2, 0xc

    const/4 v1, 0x1

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x4

    .line 65272
    const/16 v2, 0xd

    const/4 v1, 0x1

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x4

    .line 65273
    const/16 v2, 0xe

    const/4 v1, 0x3

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0J:Ljava/lang/String;

    .line 65274
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 65275
    const/16 v2, 0x11

    const/4 v1, 0x3

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v3, 0x4

    .line 65276
    return v0
.end method

.method public final AEL()Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65277
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 65278
    .local p0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A03:I

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65279
    const/4 v2, 0x2

    const/4 v1, 0x3

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A04:I

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65280
    const/16 v2, 0x8

    const/4 v1, 0x2

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A00:F

    float-to-double v0, v0

    invoke-virtual {v3, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 65281
    const/4 v2, 0x5

    const/4 v1, 0x3

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A05:I

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65282
    const/16 v2, 0xa

    const/4 v1, 0x1

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0I:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65283
    const/16 v2, 0xb

    const/4 v1, 0x1

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A01:F

    float-to-double v0, v0

    invoke-virtual {v3, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 65284
    const/16 v2, 0xc

    const/4 v1, 0x1

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A02:F

    float-to-double v0, v0

    invoke-virtual {v3, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 65285
    const/16 v2, 0xd

    const/4 v1, 0x1

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A06:I

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65286
    const/16 v2, 0xe

    const/4 v1, 0x3

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A0J:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65287
    const/16 v2, 0x11

    const/4 v1, 0x3

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A07:I

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65288
    :catchall_0
    move-exception v0

    .line 65289
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A03(Ljava/lang/Throwable;)V

    .line 65290
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v3
.end method
