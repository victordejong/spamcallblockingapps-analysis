.class public final Lcom/facebook/ads/redexgen/X/92;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;

.field public static final A03:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 19424
    invoke-static {}, Lcom/facebook/ads/redexgen/X/92;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/92;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/92;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/92;->A02:Ljava/lang/String;

    .line 19425
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/92;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()I
    .locals 1

    .line 19427
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/8D;)J
    .locals 5

    .line 19428
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 19429
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19430
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 19431
    .local v3, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/facebook/ads/redexgen/X/92;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19432
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A10:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 19433
    const/16 v2, 0x90

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 19434
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/92;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x36

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 19435
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 19436
    .local p0, "buildConfigClass":Ljava/lang/Class;
    const/16 v2, 0x25

    const/16 v1, 0xa

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 19437
    .local v3, "buildType":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19438
    .end local p0    # "buildConfigClass":Ljava/lang/Class;
    .end local v3    # "buildType":Ljava/lang/reflect/Field;
    .local p0, "e":Ljava/lang/Exception;
    :catch_0
    const/16 v2, 0x5e

    const/4 v1, 0x3

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 19439
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 19440
    .local p0, "buildConfigClass":Ljava/lang/Class;
    const/16 v2, 0x47

    const/4 v1, 0x5

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 19441
    .local v3, "buildType":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19442
    .end local p0    # "buildConfigClass":Ljava/lang/Class;
    .end local v3    # "buildType":Ljava/lang/reflect/Field;
    .local p0, "e":Ljava/lang/Exception;
    :catch_0
    const/16 v2, 0x5e

    const/4 v1, 0x3

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;
    .locals 5

    .line 19443
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 19444
    .local p0, "extraParams":Lorg/json/JSONObject;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/92;->A09()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xae

    const/4 v1, 0x6

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/92;->A08(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19445
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/92;->A01(Lcom/facebook/ads/redexgen/X/8D;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x61

    const/16 v1, 0x8

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/92;->A08(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19446
    invoke-static {}, Lcom/facebook/ads/redexgen/X/92;->A00()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb4

    const/16 v1, 0xf

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/92;->A08(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19447
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Km;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 19448
    const/16 v2, 0x69

    const/16 v1, 0x12

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/92;->A08(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19449
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/92;->A0A(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa1

    const/16 v1, 0xd

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/92;->A08(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19450
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/92;->A04(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x85

    const/16 v1, 0xb

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/92;->A08(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19451
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/92;->A03(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x7b

    const/16 v1, 0xa

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/92;->A08(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19452
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0xca

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/92;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x6ct
        0x0t
        0x37t
        0x2bt
        0x2et
        0x26t
        0x1t
        0x2dt
        0x2ct
        0x24t
        0x2bt
        0x25t
        0x69t
        0x46t
        0x4ct
        0x5at
        0x47t
        0x41t
        0x4ct
        0x8t
        0x7bt
        0x6ct
        0x63t
        0x8t
        0x4at
        0x5dt
        0x41t
        0x44t
        0x5ct
        0x8t
        0x4et
        0x47t
        0x5at
        0x8t
        0x50t
        0x10t
        0x1et
        0x11t
        0x6t
        0x1at
        0x1ft
        0x17t
        0xct
        0x7t
        0xat
        0x3t
        0x16t
        0x19t
        0x35t
        0x2ft
        0x36t
        0x3et
        0x7at
        0x34t
        0x35t
        0x2et
        0x7at
        0x3bt
        0x3et
        0x3et
        0x7at
        0x2at
        0x3bt
        0x28t
        0x3bt
        0x37t
        0x3ft
        0x2et
        0x3ft
        0x28t
        0x60t
        0x15t
        0x14t
        0x13t
        0x4t
        0x16t
        0x63t
        0x4bt
        0x53t
        0x4at
        0x47t
        0x52t
        0x49t
        0x54t
        0x14t
        0x36t
        0x3dt
        0x2at
        0x3et
        0x3ct
        0x27t
        0x3at
        0x3ct
        0x3dt
        0x45t
        0x24t
        0x4at
        0x33t
        0x22t
        0x39t
        0xdt
        0x21t
        0x3bt
        0x28t
        0x37t
        0x64t
        0x75t
        0x75t
        0x5at
        0x76t
        0x71t
        0x64t
        0x77t
        0x71t
        0x60t
        0x61t
        0x5at
        0x77t
        0x60t
        0x64t
        0x76t
        0x6at
        0x6bt
        0x4ft
        0x58t
        0x44t
        0x41t
        0x49t
        0x72t
        0x59t
        0x54t
        0x5dt
        0x48t
        0x3dt
        0x3ct
        0x3bt
        0x2ct
        0x3et
        0x6t
        0x2ft
        0x38t
        0x35t
        0x2ct
        0x3ct
        0xft
        0xdt
        0x6t
        0xdt
        0x1at
        0x1t
        0xbt
        0x73t
        0x7bt
        0x7bt
        0x73t
        0x78t
        0x71t
        0x4bt
        0x67t
        0x70t
        0x7ft
        0x63t
        0x79t
        0x55t
        0x6et
        0x6ft
        0x68t
        0x7ft
        0x6dt
        0x6dt
        0x6bt
        0x68t
        0x66t
        0x6ft
        0xct
        0x16t
        0x3at
        0x0t
        0x8t
        0x10t
        0x57t
        0x4at
        0x4et
        0x46t
        0x59t
        0x4ct
        0x4dt
        0x46t
        0x7ct
        0x4ct
        0x45t
        0x45t
        0x50t
        0x46t
        0x57t
        0x5ft
        0x44t
        0x41t
        0x44t
        0x45t
        0x5dt
        0x44t
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "45sljFocWSeUIm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kFy0iLqCQu1rSjegRu3gZQBslrN28zfh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Jt25Esr0vPr63IR3ofREXbE2F9XS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aIy3uOWBpnLKLBqKI1xznCdUmB4uZWmr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OU2R0KFOTNKkc0fC1q8eYWzKYBY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OKiYeSmWG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "N6c8h1LLghxAImqWtVZLONNsuls"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "y1x9YRSrIuYSzULWME6mF7szl8n2nmJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/92;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A08(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 19453
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19454
    :catch_0
    move-exception p2

    .line 19455
    .local p0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19456
    sget-object p1, Lcom/facebook/ads/redexgen/X/92;->A02:Ljava/lang/String;

    const/16 p0, 0x2f

    const/16 v1, 0x18

    const/16 v0, 0x6c

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19457
    .end local p0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static A09()Z
    .locals 7

    .line 19458
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/16 v2, 0x90

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 19459
    const/16 v2, 0xc3

    const/4 v1, 0x7

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 19460
    const/16 v2, 0x97

    const/16 v1, 0xa

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 19461
    const/16 v2, 0x4c

    const/16 v1, 0x8

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 19462
    const/16 v6, 0xc

    sget-object v2, Lcom/facebook/ads/redexgen/X/92;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/92;->A01:[Ljava/lang/String;

    const-string v1, "CTJ6oNGQrsuCzXfrpGcSjdlcrxq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Vk4ircYNHpPTfJ73X6WLPy0mTCx"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v1, 0x19

    const/16 v0, 0x1e

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 19463
    const/16 v2, 0x54

    const/16 v1, 0xa

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 19464
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 19465
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 19466
    :goto_0
    return v0

    .line 19467
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0A(Landroid/content/Context;)Z
    .locals 0

    .line 19468
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
