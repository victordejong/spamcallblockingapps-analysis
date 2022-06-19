.class public final Lcom/facebook/ads/redexgen/X/Gj;
.super Landroid/os/AsyncTask;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/facebook/ads/redexgen/X/QR;",
        "Ljava/lang/Void;",
        "Lcom/facebook/ads/redexgen/X/QE;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/QO;"
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/QG;

.field public A01:Lcom/facebook/ads/redexgen/X/Gd;

.field public A02:Ljava/lang/Exception;

.field public A03:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gj;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gj;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gd;Lcom/facebook/ads/redexgen/X/QG;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 35241
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35242
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A01:Lcom/facebook/ads/redexgen/X/Gd;

    .line 35243
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Gj;->A00:Lcom/facebook/ads/redexgen/X/QG;

    .line 35244
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Ljava/util/concurrent/Executor;

    .line 35245
    return-void
.end method

.method private final varargs A00([Lcom/facebook/ads/redexgen/X/QR;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 10

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    return-object v9

    :cond_0
    move-object v5, p0

    .line 35246
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Gj;
    .local v0, "params":[Lcom/facebook/ads/redexgen/X/QR;
    const/4 v6, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gj;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gj;->A05:[Ljava/lang/String;

    const-string v1, "rZqzIjYv4aJ5FL2pEqspRVXwv6AN0NL2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v8, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_4

    .line 35247
    aget-object v1, p1, v8

    .line 35248
    .local v5, "httpRequest":Lcom/facebook/ads/redexgen/X/QR;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Gj;->A01:Lcom/facebook/ads/redexgen/X/Gd;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Gd;->A0K(Lcom/facebook/ads/redexgen/X/QR;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v7

    .line 35249
    .local v6, "response":Lcom/facebook/ads/redexgen/X/QE;
    if-nez v7, :cond_2

    goto :goto_0

    .line 35250
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Gj;
    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x6c

    const/16 v1, 0x15

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gj;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    .line 35251
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/QE;->A7L()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    .line 35252
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/QE;->getUrl()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v1, 0x2

    .line 35253
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/QE;->A5i()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 35254
    invoke-static {v4, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35255
    :goto_0
    if-eqz v7, :cond_3

    .line 35256
    return-object v7

    .line 35257
    :cond_3
    const/16 v2, 0x57

    const/16 v1, 0x15

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gj;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35258
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x40

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gj;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35259
    .restart local v0    # "params":[Lcom/facebook/ads/redexgen/X/QR;
    :catch_0
    move-exception v4

    .line 35260
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    iput-object v4, v5, Lcom/facebook/ads/redexgen/X/Gj;->A02:Ljava/lang/Exception;

    .line 35261
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x40

    const/16 v1, 0x17

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gj;->A01(III)Ljava/lang/String;

    move-result-object v2

    new-array v1, v6, [Ljava/lang/Object;

    .line 35262
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35263
    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/Gj;->cancel(Z)Z

    .line 35264
    .end local v5    # "e":Ljava/lang/Exception;
    return-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "params":[Lcom/facebook/ads/redexgen/X/QR;
    :catchall_0
    move-exception v0

    .end local v0
    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v9
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gj;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sub-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gj;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gj;->A05:[Ljava/lang/String;

    const-string v1, "mnFvayeDWU8YlLMMxELrFm0bGTjKFJH1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x14

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gj;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x77t
        -0x4ct
        -0x73t
        -0x47t
        -0x47t
        -0x4bt
        -0x69t
        -0x56t
        -0x4at
        -0x46t
        -0x56t
        -0x48t
        -0x47t
        -0x67t
        -0x5at
        -0x48t
        -0x50t
        0x65t
        -0x47t
        -0x5at
        -0x50t
        -0x56t
        -0x48t
        0x65t
        -0x56t
        -0x43t
        -0x5at
        -0x58t
        -0x47t
        -0x4ft
        -0x42t
        0x65t
        -0x4ct
        -0x4dt
        -0x56t
        0x65t
        -0x5at
        -0x49t
        -0x54t
        -0x46t
        -0x4et
        -0x56t
        -0x4dt
        -0x47t
        0x65t
        -0x4ct
        -0x55t
        0x65t
        -0x47t
        -0x42t
        -0x4bt
        -0x56t
        0x65t
        -0x73t
        -0x47t
        -0x47t
        -0x4bt
        -0x69t
        -0x56t
        -0x4at
        -0x46t
        -0x56t
        -0x48t
        -0x47t
        -0x45t
        -0x39t
        -0x39t
        -0x3dt
        -0x6dt
        -0x1bt
        -0x28t
        -0x1ct
        -0x18t
        -0x28t
        -0x1at
        -0x19t
        -0x6dt
        -0x27t
        -0x2ct
        -0x24t
        -0x21t
        -0x28t
        -0x29t
        -0x53t
        -0x6dt
        -0x68t
        -0x1at
        -0x69t
        -0x3dt
        -0x3dt
        -0x41t
        0x6ft
        -0x3ft
        -0x4ct
        -0x3et
        -0x41t
        -0x42t
        -0x43t
        -0x3et
        -0x4ct
        0x6ft
        -0x48t
        -0x3et
        0x6ft
        -0x43t
        -0x3ct
        -0x45t
        -0x45t
        0x6bt
        0x7et
        -0x74t
        -0x77t
        -0x78t
        -0x79t
        -0x74t
        0x7et
        0x53t
        0x39t
        0x3et
        0x7dt
        0x39t
        0x41t
        0x3et
        -0x74t
        0x42t
        0x53t
        0x23t
        0x3et
        -0x74t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QrFR9YxtZmjHUVEKV6oKE4DdGtsrpc8H"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TwcoDq13NGDzrd27uf1NctQWIs88CxA5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DEQUIzHs8EHMaJWbR5cSGVZv3Gss2W35"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ai8rFQMQjE1asV4GIWZxLQq3VKhMcnMa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Q3dsJQvnRhhndIZBGw2JIf13CD9aK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FSoxIZL2zci1XZCD3aOfhtBMx8TI21HW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XwCxwzkF49MOW0uOTgxgRHHne1dL58CR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "45IZuxFnerodSJSRUIhMDhHmCeiAV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gj;->A05:[Ljava/lang/String;

    return-void
.end method

.method private final A04(Lcom/facebook/ads/redexgen/X/QE;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 35265
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Gj;
    .local v1, "result":Lcom/facebook/ads/redexgen/X/QE;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Gj;->A00:Lcom/facebook/ads/redexgen/X/QG;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QG;->A9l(Lcom/facebook/ads/redexgen/X/QE;)V

    .line 35266
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Gj;
    .end local v1    # "result":Lcom/facebook/ads/redexgen/X/QE;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A5C(Lcom/facebook/ads/redexgen/X/QR;)V
    .locals 3

    .line 35267
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/QR;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    invoke-super {p0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 35268
    return-void
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object v1, p0

    .line 35269
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Gj;
    :try_start_0
    check-cast p1, [Lcom/facebook/ads/redexgen/X/QR;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/Gj;->A00([Lcom/facebook/ads/redexgen/X/QR;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Gj;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final onCancelled()V
    .locals 2

    .line 35270
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A00:Lcom/facebook/ads/redexgen/X/QG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A02:Ljava/lang/Exception;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/QG;->AA7(Ljava/lang/Exception;)V

    .line 35271
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 35272
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Gj;
    :try_start_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/QE;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/Gj;->A04(Lcom/facebook/ads/redexgen/X/QE;)V

    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Gj;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
