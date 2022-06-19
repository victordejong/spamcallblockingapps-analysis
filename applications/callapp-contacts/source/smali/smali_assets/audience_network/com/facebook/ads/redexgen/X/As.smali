.class public final Lcom/facebook/ads/redexgen/X/As;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static A02:[B

.field public static final A03:Lcom/facebook/ads/redexgen/X/As;


# instance fields
.field public final A00:I

.field public final A01:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 21847
    invoke-static {}, Lcom/facebook/ads/redexgen/X/As;->A03()V

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v1, 0x2

    const/4 v0, 0x0

    aput v1, v2, v0

    new-instance v0, Lcom/facebook/ads/redexgen/X/As;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/As;-><init>([II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/As;->A03:Lcom/facebook/ads/redexgen/X/As;

    return-void
.end method

.method public constructor <init>([II)V
    .locals 1

    .line 21848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21849
    if-eqz p1, :cond_0

    .line 21850
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/As;->A01:[I

    .line 21851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/As;->A01:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 21852
    :goto_0
    iput p2, p0, Lcom/facebook/ads/redexgen/X/As;->A00:I

    .line 21853
    return-void

    .line 21854
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/As;->A01:[I

    goto :goto_0
.end method

.method public static A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/As;
    .locals 3

    .line 21855
    const/16 v2, 0x38

    const/16 v1, 0x24

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 21856
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 21857
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/As;->A01(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/As;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/As;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 21858
    if-eqz p0, :cond_0

    const/4 v4, 0x0

    const/16 v2, 0x5c

    const/16 v1, 0x24

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 21859
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/As;->A03:Lcom/facebook/ads/redexgen/X/As;

    return-object v0

    .line 21860
    :cond_1
    const/16 v2, 0x80

    const/16 v1, 0x1d

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 21861
    const/16 v2, 0x9d

    const/16 v1, 0x25

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/As;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/As;-><init>([II)V

    .line 21862
    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/As;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xc2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/As;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x3at
        -0x46t
        0xdt
        0xft
        0xat
        0xat
        0x9t
        0xct
        0xet
        -0x1t
        -0x2t
        -0x21t
        0x8t
        -0x3t
        0x9t
        -0x2t
        0x3t
        0x8t
        0x1t
        0xdt
        -0x29t
        -0x4bt
        -0x17t
        -0x28t
        -0x23t
        -0x1dt
        -0x49t
        -0x2bt
        -0x1ct
        -0x2bt
        -0x2at
        -0x23t
        -0x20t
        -0x23t
        -0x18t
        -0x23t
        -0x27t
        -0x19t
        -0x31t
        -0x1ft
        -0x2bt
        -0x14t
        -0x49t
        -0x24t
        -0x2bt
        -0x1et
        -0x1et
        -0x27t
        -0x20t
        -0x49t
        -0x1dt
        -0x17t
        -0x1et
        -0x18t
        -0x4ft
        -0x48t
        -0x21t
        -0x14t
        -0x1et
        -0x10t
        -0x13t
        -0x19t
        -0x1et
        -0x54t
        -0x15t
        -0x1dt
        -0x1et
        -0x19t
        -0x21t
        -0x54t
        -0x21t
        -0x1ft
        -0xet
        -0x19t
        -0x13t
        -0x14t
        -0x54t
        -0x3at
        -0x3et
        -0x35t
        -0x39t
        -0x23t
        -0x41t
        -0x2dt
        -0x3et
        -0x39t
        -0x33t
        -0x23t
        -0x32t
        -0x36t
        -0x2dt
        -0x3bt
        -0x2et
        -0x21t
        -0x2bt
        -0x1dt
        -0x20t
        -0x26t
        -0x2bt
        -0x61t
        -0x22t
        -0x2at
        -0x2bt
        -0x26t
        -0x2et
        -0x61t
        -0x2at
        -0x17t
        -0x1bt
        -0x1dt
        -0x2et
        -0x61t
        -0x4et
        -0x3at
        -0x4bt
        -0x46t
        -0x40t
        -0x30t
        -0x3ft
        -0x43t
        -0x3at
        -0x48t
        -0x30t
        -0x3ct
        -0x3bt
        -0x4et
        -0x3bt
        -0x4at
        -0x3dt
        -0x30t
        -0x3at
        -0x2ct
        -0x2ft
        -0x35t
        -0x3at
        -0x70t
        -0x31t
        -0x39t
        -0x3at
        -0x35t
        -0x3dt
        -0x70t
        -0x39t
        -0x26t
        -0x2at
        -0x2ct
        -0x3dt
        -0x70t
        -0x59t
        -0x50t
        -0x5bt
        -0x4ft
        -0x5at
        -0x55t
        -0x50t
        -0x57t
        -0x4bt
        -0x27t
        -0x1at
        -0x24t
        -0x16t
        -0x19t
        -0x1ft
        -0x24t
        -0x5at
        -0x1bt
        -0x23t
        -0x24t
        -0x1ft
        -0x27t
        -0x5at
        -0x23t
        -0x10t
        -0x14t
        -0x16t
        -0x27t
        -0x5at
        -0x3bt
        -0x47t
        -0x30t
        -0x29t
        -0x45t
        -0x40t
        -0x47t
        -0x3at
        -0x3at
        -0x43t
        -0x3ct
        -0x29t
        -0x45t
        -0x39t
        -0x33t
        -0x3at
        -0x34t
    .end array-data
.end method


# virtual methods
.method public final A04(I)Z
    .locals 1

    .line 21863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/As;->A01:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21864
    const/4 v2, 0x1

    if-ne p0, p1, :cond_0

    .line 21865
    return v2

    .line 21866
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/As;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 21867
    return v0

    .line 21868
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/As;

    .line 21869
    .local p1, "audioCapabilities":Lcom/facebook/ads/redexgen/X/As;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/As;->A01:[I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/As;->A01:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/As;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/As;->A00:I

    if-ne v1, v0, :cond_2

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 21870
    iget v1, p0, Lcom/facebook/ads/redexgen/X/As;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/As;->A01:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 21871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    const/16 v1, 0x22

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/As;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/As;->A01:[I

    .line 21872
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x37

    const/4 v1, 0x1

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21873
    return-object v0
.end method
