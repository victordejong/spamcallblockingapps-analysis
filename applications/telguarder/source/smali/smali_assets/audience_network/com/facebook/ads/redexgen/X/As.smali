.class public final Lcom/facebook/ads/redexgen/X/As;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/As;


# instance fields
.field public final A00:I

.field public final A01:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 22047
    invoke-static {}, Lcom/facebook/ads/redexgen/X/As;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/As;->A03()V

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v1, 0x2

    const/4 v0, 0x0

    aput v1, v2, v0

    new-instance v0, Lcom/facebook/ads/redexgen/X/As;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/As;-><init>([II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/As;->A04:Lcom/facebook/ads/redexgen/X/As;

    return-void
.end method

.method public constructor <init>([II)V
    .locals 1

    .line 22048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22049
    if-eqz p1, :cond_0

    .line 22050
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/As;->A01:[I

    .line 22051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/As;->A01:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 22052
    :goto_0
    iput p2, p0, Lcom/facebook/ads/redexgen/X/As;->A00:I

    .line 22053
    return-void

    .line 22054
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/As;->A01:[I

    goto :goto_0
.end method

.method public static A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/As;
    .locals 3

    .line 22055
    const/16 v2, 0x38

    const/16 v1, 0x24

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 22056
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 22057
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

    .line 22058
    if-eqz p0, :cond_0

    const/4 v4, 0x0

    const/16 v2, 0x5c

    const/16 v1, 0x24

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 22059
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/As;->A04:Lcom/facebook/ads/redexgen/X/As;

    return-object v0

    .line 22060
    :cond_1
    const/16 v2, 0x80

    const/16 v1, 0x1d

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 22061
    const/16 v2, 0x9d

    const/16 v1, 0x25

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/As;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/As;-><init>([II)V

    .line 22062
    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/As;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x54

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/As;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/As;->A03:[Ljava/lang/String;

    const-string v1, "Syhna"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    aput-byte v3, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

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
        0x12t
        0x1et
        0x4dt
        0x4bt
        0x4et
        0x4et
        0x51t
        0x4ct
        0x4at
        0x5bt
        0x5at
        0x7bt
        0x50t
        0x5dt
        0x51t
        0x5at
        0x57t
        0x50t
        0x59t
        0x4dt
        0x3t
        0x5bt
        0x6ft
        0x7et
        0x73t
        0x75t
        0x59t
        0x7bt
        0x6at
        0x7bt
        0x78t
        0x73t
        0x76t
        0x73t
        0x6et
        0x73t
        0x7ft
        0x69t
        0x41t
        0x77t
        0x7bt
        0x62t
        0x59t
        0x72t
        0x7bt
        0x74t
        0x74t
        0x7ft
        0x76t
        0x59t
        0x75t
        0x6ft
        0x74t
        0x6et
        0x27t
        0x30t
        0x23t
        0x2ct
        0x26t
        0x30t
        0x2dt
        0x2bt
        0x26t
        0x6ct
        0x2ft
        0x27t
        0x26t
        0x2bt
        0x23t
        0x6ct
        0x23t
        0x21t
        0x36t
        0x2bt
        0x2dt
        0x2ct
        0x6ct
        0xat
        0x6t
        0xft
        0xbt
        0x1dt
        0x3t
        0x17t
        0x6t
        0xbt
        0xdt
        0x1dt
        0x12t
        0xet
        0x17t
        0x5t
        0x72t
        0x7dt
        0x77t
        0x61t
        0x7ct
        0x7at
        0x77t
        0x3dt
        0x7et
        0x76t
        0x77t
        0x7at
        0x72t
        0x3dt
        0x76t
        0x6bt
        0x67t
        0x61t
        0x72t
        0x3dt
        0x52t
        0x46t
        0x57t
        0x5at
        0x5ct
        0x4ct
        0x43t
        0x5ft
        0x46t
        0x54t
        0x4ct
        0x40t
        0x47t
        0x52t
        0x47t
        0x56t
        0x6ct
        0x63t
        0x69t
        0x7ft
        0x62t
        0x64t
        0x69t
        0x23t
        0x60t
        0x68t
        0x69t
        0x64t
        0x6ct
        0x23t
        0x68t
        0x75t
        0x79t
        0x7ft
        0x6ct
        0x23t
        0x48t
        0x43t
        0x4et
        0x42t
        0x49t
        0x44t
        0x43t
        0x4at
        0x5et
        0x5ft
        0x50t
        0x5at
        0x4ct
        0x51t
        0x57t
        0x5at
        0x10t
        0x53t
        0x5bt
        0x5at
        0x57t
        0x5ft
        0x10t
        0x5bt
        0x46t
        0x4at
        0x4ct
        0x5ft
        0x10t
        0x73t
        0x7ft
        0x66t
        0x61t
        0x7dt
        0x76t
        0x7ft
        0x70t
        0x70t
        0x7bt
        0x72t
        0x61t
        0x7dt
        0x71t
        0x6bt
        0x70t
        0x6at
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "sZzrjasMzthNndL76vZGybQHPkV3tk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ww44dsgXyAObWFFrd6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Cdw1dJO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fKJbok1xd8syluPebrx03gFz8I5gAZK0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FYDjOyDzyf7PBSYtN4v7FzleRtAz2ufW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ow8Ubc1QJnEa213NijTeOXYWDWvPpPn8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FqcQP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "B0FyTk7kD5hahSf84IUzCqzY0feqAekX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/As;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A05(I)Z
    .locals 1

    .line 22063
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

    .line 22064
    const/4 v2, 0x1

    if-ne p0, p1, :cond_0

    .line 22065
    return v2

    .line 22066
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/As;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 22067
    return v0

    .line 22068
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/As;

    .line 22069
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

    .line 22070
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

    .line 22071
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    const/16 v1, 0x22

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/As;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/As;->A01:[I

    .line 22072
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x37

    const/4 v1, 0x1

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/As;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22073
    return-object v0
.end method
