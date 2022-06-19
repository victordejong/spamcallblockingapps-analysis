.class public final Lcom/facebook/ads/redexgen/X/OI;
.super Landroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicWebChromeClient"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ON;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OI;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OI;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;)V
    .locals 0

    .line 46427
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/RX;)V
    .locals 0

    .line 46428
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/OI;-><init>(Lcom/facebook/ads/redexgen/X/ON;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OI;->A01:[B

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

.method public static A01()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OI;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        0x45t
        0x42t
        0x49t
        0x62t
        0x59t
        0x41t
        0x4et
        0x49t
        0x5et
        0x27t
        0x2ft
        0x39t
        0x39t
        0x2bt
        0x2dt
        0x2ft
        0x76t
        0x6at
        0x70t
        0x77t
        0x66t
        0x60t
        0x4ct
        0x61t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hD342XNQVEXChvJ41FuJYkzzL30E7V8C"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VFqqxEswv4BXF4BUDT4NnG4IAUyY785"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "G3ZSvK9EmqC1e5u7Ivg7hdOkIQzdfa68"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vFWJ81dDNXk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PGv8G8TosU31EXJAVb0WhvumqcSTUHDE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JPUBUdUfGKDjW9Qe8mrAO5frWlzvQ1oz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qcwfoFOZSGXVTY97XWLRaEh5jd9GG5ia"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FIykCHI4yyfel4YrSgGCK0Zn6vKmeZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OI;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    .line 46429
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    sget-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    if-ne v1, v0, :cond_0

    .line 46430
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 46431
    .local p0, "error":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0xa

    const/4 v1, 0x7

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OI;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46432
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OI;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46433
    const/16 v2, 0x11

    const/16 v1, 0x8

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OI;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46434
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46435
    .local p1, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A04(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/JK;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0M:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 46436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A06(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/OC;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A0r:I

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/OC;->A04(ILjava/lang/String;)V

    .line 46437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A03(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4w(Ljava/lang/String;)V

    .line 46438
    .end local p0    # "error":Lorg/json/JSONObject;
    .end local p1    # "errorMessage":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/OI;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/OI;->A02:[Ljava/lang/String;

    const-string v1, "bhT1kVUsfNz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
