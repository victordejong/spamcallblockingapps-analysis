.class public final Lcom/facebook/ads/redexgen/X/7l;
.super Lcom/facebook/ads/redexgen/X/L6;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7i;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7l;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7l;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7i;)V
    .locals 0

    .line 16892
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7l;->A00:Lcom/facebook/ads/redexgen/X/7i;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L6;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/7l;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/7l;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/7l;->A02:[Ljava/lang/String;

    const-string v1, "zGtxq0LnznDpkAI9fIogelgluQXN9rJC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6c

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

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7l;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x7t
        0x13t
        0x2t
        0xft
        0x9t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Z8VzzUk48H2MjHputsbFKGrTuA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oizJfYv64JjjPWcjk8h6rnHMPSWYW3KU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "f0BEY4eTEaDQ97bHAlskleks6ilDfv7w"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kzTTWWoLyKzhVsFKHFAAxGaFMysI7iP7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "O5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DqVK5n8IQlswAJl59jQWGsTS7h"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "g8gXhMPhSk6l7LNUsVLjaHR4ALnMtBc"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7l;->A02:[Ljava/lang/String;

    return-void
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 4

    .line 16893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7l;->A00:Lcom/facebook/ads/redexgen/X/7i;

    .line 16894
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7i;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 16895
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 16896
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7l;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 16897
    .local p0, "audioManager":Landroid/media/AudioManager;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7l;->A00:Lcom/facebook/ads/redexgen/X/7i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7i;->A03(Lcom/facebook/ads/redexgen/X/7i;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 16898
    return-void

    .line 16899
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7l;->A00:Lcom/facebook/ads/redexgen/X/7i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7i;->A03(Lcom/facebook/ads/redexgen/X/7i;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16900
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7l;->A03(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method
