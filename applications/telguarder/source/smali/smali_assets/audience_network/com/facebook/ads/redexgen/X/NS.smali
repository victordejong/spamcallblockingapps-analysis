.class public final Lcom/facebook/ads/redexgen/X/NS;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/S1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewClientImpl"
.end annotation


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/util/Date;

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A03:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/S1;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/NQ;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Lc;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Q9;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final A09:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NS;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NS;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/NQ;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Q9;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Lc;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/S1;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 45160
    .local p3, "adWebViewListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/common/AdWebView$AdWebViewListener;>;"
    .local p4, "adViewabilityChecker":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/viewability/AdViewabilityChecker;>;"
    .local p5, "touchDataRecorder":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/util/common/TouchDataRecorder;>;"
    .local p6, "checkAssetsByJavascriptBridge":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/atomic/AtomicBoolean;>;"
    .local p7, "adWebView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/common/AdWebView;>;"
    .local p9, "requestId":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 45161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A01:Z

    .line 45162
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NS;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 45163
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NS;->A04:Ljava/lang/ref/WeakReference;

    .line 45164
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NS;->A07:Ljava/lang/ref/WeakReference;

    .line 45165
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/NS;->A06:Ljava/lang/ref/WeakReference;

    .line 45166
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/NS;->A05:Ljava/lang/ref/WeakReference;

    .line 45167
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/NS;->A03:Ljava/lang/ref/WeakReference;

    .line 45168
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/NS;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45169
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/NS;->A09:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45170
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/NS;->A0A:Z

    .line 45171
    return-void
.end method

.method private A00()Landroid/webkit/WebResourceResponse;
    .locals 11
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 45172
    new-instance v4, Landroid/webkit/WebResourceResponse;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 45173
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    .line 45174
    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10c

    const/16 v1, 0x8

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    .line 45175
    const/16 v2, 0xd

    const/4 v1, 0x6

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v2, 0x11e

    const/16 v1, 0xa

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x193

    const/16 v2, 0xd

    const/4 v1, 0x6

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 45176
    return-object v4
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NS;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x76

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 4

    const/16 v0, 0x13a

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/NS;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/NS;->A0C:[Ljava/lang/String;

    const-string v1, "rhE0g4ovzatryzU62WuE8blUNequGZ6x"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "8iaaY9YuVC21lqcoOxYFj2DPKFldlJdP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/NS;->A0B:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x8t
        0x26t
        0x28t
        0x2dt
        0x2at
        -0xet
        0x8t
        0x34t
        0x33t
        0x39t
        0x37t
        0x34t
        0x31t
        -0x45t
        -0x24t
        -0x1bt
        -0x20t
        -0x24t
        -0x25t
        0x1ct
        0x4dt
        0x38t
        0x43t
        0x4ct
        0x38t
        0x4bt
        0x40t
        0x45t
        0x3et
        -0x9t
        0x2ct
        0x29t
        0x20t
        -0x9t
        0x27t
        0x38t
        0x4bt
        0x3ft
        -0x9t
        0x3dt
        0x46t
        0x49t
        -0x9t
        0x1dt
        0x40t
        0x43t
        0x3ct
        -0x9t
        0x18t
        0x3at
        0x3at
        0x3ct
        0x4at
        0x4at
        -0x9t
        -0x2et
        0x5t
        0x1t
        -0x1t
        -0x12t
        -0x53t
        -0xft
        -0x12t
        0x1t
        -0x12t
        -0x39t
        -0x53t
        0x3ct
        0x48t
        0x48t
        0x44t
        0x14t
        0x39t
        0x66t
        0x66t
        0x63t
        0x66t
        0x3bt
        0x54t
        0x59t
        0x47t
        0x4ct
        0x4bt
        0x6t
        0x38t
        0x4bt
        0x57t
        0x5bt
        0x4bt
        0x59t
        0x5at
        0x6t
        0x4ct
        0x55t
        0x58t
        0x6t
        0x2ct
        0x4ft
        0x52t
        0x4bt
        0x6t
        0x27t
        0x49t
        0x49t
        0x4bt
        0x59t
        0x59t
        0x6t
        0x22t
        0x3bt
        0x40t
        0x2et
        0x33t
        0x32t
        -0x13t
        0x1ft
        0x32t
        0x3et
        0x42t
        0x32t
        0x40t
        0x41t
        -0x13t
        0x33t
        0x3ct
        0x3ft
        -0x13t
        0x13t
        0x36t
        0x39t
        0x32t
        -0x13t
        0xet
        0x30t
        0x30t
        0x32t
        0x40t
        0x40t
        -0x13t
        0x31t
        0x32t
        0x3bt
        0x36t
        0x32t
        0x31t
        0x43t
        0x44t
        0x4dt
        0x48t
        0x44t
        0x43t
        0x3et
        0x54t
        0x51t
        0x48t
        0x3et
        0x4ft
        0x40t
        0x53t
        0x47t
        0x3ft
        0x4ct
        0x4ct
        0x49t
        0x4ct
        0x39t
        0x3dt
        0x49t
        0x3et
        0x3ft
        0x28t
        0x35t
        0x35t
        0x32t
        0x35t
        0x22t
        0x27t
        0x28t
        0x36t
        0x26t
        0x35t
        0x2ct
        0x33t
        0x37t
        0x2ct
        0x32t
        0x31t
        0xft
        0xat
        0x1ft
        0x12t
        0xct
        0x18t
        0x17t
        -0x29t
        0x12t
        0xct
        0x18t
        0x13t
        0x16t
        0x19t
        0x12t
        0x59t
        0x63t
        0x4ft
        0x67t
        0x55t
        0x52t
        0x4ft
        0x62t
        0x55t
        0x63t
        0x5ft
        0x65t
        0x62t
        0x53t
        0x55t
        0x4ft
        0x55t
        0x62t
        0x62t
        0x5ft
        0x62t
        0x46t
        0x49t
        0x3bt
        0x3et
        0x43t
        0x48t
        0x41t
        0x39t
        0x4et
        0x43t
        0x47t
        0x3ft
        0x39t
        0x43t
        0x48t
        0x39t
        0x47t
        0x43t
        0x46t
        0x46t
        0x43t
        0x4dt
        -0x3t
        -0xct
        0x3t
        -0x37t
        -0x37t
        -0x2ct
        -0x1ft
        -0x1ft
        -0x12t
        -0x2ct
        -0x24t
        -0x21t
        -0x1dt
        -0x18t
        -0x12t
        -0x1ft
        -0x2ct
        -0x1et
        -0x21t
        -0x22t
        -0x23t
        -0x1et
        -0x2ct
        0x2et
        0x2ft
        -0x13t
        0x33t
        0x34t
        0x2ft
        0x32t
        0x25t
        0x42t
        0x35t
        0x41t
        0x45t
        0x35t
        0x43t
        0x44t
        0x2ft
        0x39t
        0x34t
        0x65t
        0x56t
        0x69t
        0x65t
        0x20t
        0x61t
        0x5dt
        0x52t
        0x5at
        0x5ft
        -0x8t
        -0x1dt
        -0x12t
        -0x15t
        -0x1at
        -0x1ft
        -0xet
        -0x1dt
        -0xat
        -0x16t
        0x3et
        0x2ct
        0x29t
        0x26t
        0x3dt
        0x30t
        0x2ct
        0x3et
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zsPwasR1y7408"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZGgsKLkccpHpwEVEMRkr0P5MO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FzTF8imkK53ZXE3O7c0sd3pyoR5CtRCL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JPkvHHHSAaAEWhLae7UVRehZAXg5QbZs"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Jl8ZDZjQ485DOmiNP3uI8E"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DJVtCfMEOJ4BXbKH6y5pb3wK31xmWsao"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "K"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NS;->A0C:[Ljava/lang/String;

    return-void
.end method

.method private A04(ILjava/lang/CharSequence;J)V
    .locals 8

    .line 45177
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 45178
    .local p0, "extraData":Lorg/json/JSONObject;
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 45179
    .local p1, "isWebResourceError":Z
    :goto_0
    :try_start_0
    const/16 v2, 0xa0

    const/16 v1, 0xa

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45180
    const/16 v2, 0xaa

    const/16 v1, 0x11

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45181
    const/16 v2, 0xca

    const/16 v1, 0x15

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 45182
    const/16 v2, 0xdf

    const/16 v1, 0x16

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 45183
    const/16 v2, 0x114

    const/16 v1, 0xa

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A09:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45184
    .end local p1    # "isWebResourceError":Z
    :catch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 45185
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/8e;->A2M:I

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->WEB_VIEW_FAILED_TO_LOAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 45186
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x37

    const/16 v1, 0xc

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45187
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45188
    const/16 v2, 0x132

    const/16 v1, 0x8

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 45189
    return-void
.end method

.method private A05(ILjava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45190
    const/16 v2, 0xf5

    const/16 v1, 0x17

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AEf()V

    .line 45192
    return-void

    .line 45193
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/0R;->AEg(ILjava/lang/String;)V

    .line 45194
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 45195
    .local p0, "finishTime":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A00:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v2, v0

    .line 45196
    .local p1, "loadingTimeInMillis":J
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/facebook/ads/redexgen/X/NS;->A04(ILjava/lang/CharSequence;J)V

    .line 45197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A04:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A04:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/NQ;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/NQ;->AAA(ILjava/lang/String;)V

    .line 45199
    :cond_1
    return-void
.end method

.method private final A06(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 45200
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xbb

    const/16 v1, 0xb

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45201
    return-void

    .line 45202
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45203
    const/16 v2, 0x43

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/LG;->A01(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45204
    .local p0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {p2}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/0R;->AEk(ILjava/lang/String;)V

    .line 45205
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/NS;ILjava/lang/String;)V
    .locals 0

    .line 45206
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/NS;->A05(ILjava/lang/String;)V

    return-void
.end method

.method private A08(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 45207
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 45208
    .local p0, "extraData":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x91

    const/16 v1, 0xf

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45209
    const/16 v2, 0x128

    const/16 v1, 0xa

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45210
    const/16 v2, 0x114

    const/16 v1, 0xa

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A09:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45211
    .end local p1    # null:Ljava/lang/String;
    :catch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    if-eqz v0, :cond_0

    .line 45212
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/8e;->A2J:I

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->WEB_VIEW_CACHE_FILE_WAS_DENIED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 45213
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x37

    const/16 v1, 0xc

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45214
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45215
    const/16 v2, 0x132

    const/16 v1, 0x8

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 45216
    :cond_0
    return-void
.end method

.method private A09(Landroid/net/Uri;)Z
    .locals 7

    .line 45217
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 45218
    .local p0, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 45219
    .local p1, "scheme":Ljava/lang/String;
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    const/16 v5, 0xc6

    sget-object v2, Lcom/facebook/ads/redexgen/X/NS;->A0C:[Ljava/lang/String;

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/NS;->A0C:[Ljava/lang/String;

    const-string v1, "5na5yijD7UxFpHVkXXcSH2RW6Zg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v1, 0x4

    const/16 v0, 0x37

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45220
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/NS;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    if-eqz v3, :cond_1

    .line 45221
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    const/16 v1, 0x24

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45222
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A09(Lcom/facebook/ads/redexgen/X/8D;)Ljava/util/List;

    move-result-object v6

    .line 45223
    .local v4, "cacheDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4, v6}, Lcom/facebook/ads/redexgen/X/NS;->A0B(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    .line 45224
    .local v3, "valid":Z
    if-nez v5, :cond_3

    .line 45225
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d

    const/16 v1, 0x1f

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45227
    :cond_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/S1;->A04()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6c

    const/16 v1, 0x25

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45228
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/NS;->A08(Ljava/lang/String;Ljava/lang/String;)V

    .line 45229
    :cond_3
    return v5

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/NS;->A0C:[Ljava/lang/String;

    const-string v1, "2SO0ZWlaSU1SnxqLnXbiPhTsGSHCmzPH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    goto :goto_0

    .line 45230
    .end local v4    # "cacheDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "valid":Z
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/NS;)Z
    .locals 0

    .line 45231
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/NS;->A01:Z

    return p0
.end method

.method public static A0B(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 45232
    .local v0, "cacheDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 45233
    .local p0, "lowerPath":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45234
    .local v0, "cacheDir":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45235
    const/4 v0, 0x1

    return v0

    .line 45236
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 45237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A03:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEh(Z)V

    .line 45238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A03:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A05:Ljava/lang/ref/WeakReference;

    .line 45239
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/NS;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 45240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/NS;->A0C:[Ljava/lang/String;

    const-string v1, "U2DnXjrenRRLx1oMUBfcSIJQu5ANNJpT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "L4ZmgD3GCXt8DfDAt3P3IJDf6GSeHMJn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    .line 45241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A05:Ljava/lang/ref/WeakReference;

    .line 45242
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 45243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A03:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S1;->A0A(Lcom/facebook/ads/redexgen/X/S1;)V

    .line 45244
    :cond_2
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/NS;->A01:Z

    .line 45245
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 45246
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 45247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AEi()V

    .line 45248
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A00:Ljava/util/Date;

    .line 45249
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/facebook/ads/redexgen/X/S2;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/S2;-><init>(Lcom/facebook/ads/redexgen/X/NS;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45250
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    .line 45251
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45252
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A01:Z

    .line 45254
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/NS;->A05(ILjava/lang/String;)V

    .line 45255
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 45256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0q(Landroid/content/Context;)Z

    move-result v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A01(III)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45257
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/NS;
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A01:Z

    .line 45258
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/NS;->A05(ILjava/lang/String;)V

    .line 45259
    :goto_0
    return-void

    .line 45260
    :cond_1
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45261
    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/LG;->A01(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45262
    .local p0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->AEj(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 45263
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 45264
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/NS;->A06(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 45265
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 45266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AEl()V

    .line 45267
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 45268
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 45269
    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A2I:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NN;->A03(I)V

    .line 45270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A04:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/NQ;

    .line 45271
    .local p0, "adWebViewListener":Lcom/facebook/ads/redexgen/X/NQ;
    if-eqz v0, :cond_0

    .line 45272
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NQ;->ACA()V

    .line 45273
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 45274
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    .line 45275
    .local p0, "source":Landroid/net/Uri;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A0A:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/NS;->A09(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45276
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NS;->A00()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 45277
    .local p1, "response":Landroid/webkit/WebResourceResponse;
    invoke-direct {p0, p2, v0}, Lcom/facebook/ads/redexgen/X/NS;->A06(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 45278
    return-object v0

    .line 45279
    .end local p1    # "response":Landroid/webkit/WebResourceResponse;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 45280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A04:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A04:Ljava/lang/ref/WeakReference;

    .line 45282
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/NQ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NX;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A07:Ljava/lang/ref/WeakReference;

    .line 45283
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A06:Ljava/lang/ref/WeakReference;

    .line 45284
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Lc;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 45285
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v0

    .line 45286
    invoke-interface {v2, p2, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A9i(Ljava/lang/String;Ljava/util/Map;)V

    .line 45287
    :cond_0
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/NS;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/NS;->A0C:[Ljava/lang/String;

    const-string v1, "jV60qdj1rgKoRn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3
.end method
