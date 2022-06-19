.class public final Lcom/facebook/ads/redexgen/X/7i;
.super Lcom/facebook/ads/redexgen/X/Lg;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/L6;

.field public final A02:Lcom/facebook/ads/redexgen/X/KS;

.field public final A03:Lcom/facebook/ads/redexgen/X/KN;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7i;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7i;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1

    .line 16844
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Lg;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 16845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A00:Ljava/lang/ref/WeakReference;

    .line 16846
    new-instance v0, Lcom/facebook/ads/redexgen/X/7l;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7l;-><init>(Lcom/facebook/ads/redexgen/X/7i;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A01:Lcom/facebook/ads/redexgen/X/L6;

    .line 16847
    new-instance v0, Lcom/facebook/ads/redexgen/X/7k;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7k;-><init>(Lcom/facebook/ads/redexgen/X/7i;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A02:Lcom/facebook/ads/redexgen/X/KS;

    .line 16848
    new-instance v0, Lcom/facebook/ads/redexgen/X/7j;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7j;-><init>(Lcom/facebook/ads/redexgen/X/7i;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A03:Lcom/facebook/ads/redexgen/X/KN;

    .line 16849
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7i;)Lcom/facebook/ads/redexgen/X/Oj;
    .locals 0

    .line 16850
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7i;)Lcom/facebook/ads/redexgen/X/Oj;
    .locals 0

    .line 16851
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object p0

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7i;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/7i;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 16852
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7i;->A00:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/7i;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 16853
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7i;->A00:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public static A05()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7i;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x6ct
        -0x58t
        -0x69t
        -0x64t
        -0x5et
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QMyl0EdrMkBz74Ff"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RsTLWDF6GNKozTWYWcUQtNpRSKZ3a8yy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3BM6qDUn0450lnygNbifIZpDeGnVa2ha"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "F"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qC4SUzvBtsB95zH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "T9xPYhzLnjJILIo2UZ88O5HWOSlCgw65"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9Z5hXOcvGEJoZZ2dBR43Uw9AYXT3hwwE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "j5Icya"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7i;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 16854
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Lg;->A07()V

    .line 16855
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16856
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    .line 16857
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A03:Lcom/facebook/ads/redexgen/X/KN;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A01:Lcom/facebook/ads/redexgen/X/L6;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A02:Lcom/facebook/ads/redexgen/X/KS;

    aput-object v0, v2, v1

    .line 16858
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A03([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 16859
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 6

    .line 16860
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16861
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    .line 16862
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v4

    const/4 v0, 0x3

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/9G;

    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/7i;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/7i;->A05:[Ljava/lang/String;

    const-string v1, "N8PlN6ko7rCmWrjSgXmwzpcc7zXrNMwO"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "3Ei0HdJvkUvOcHctndwpn9MtMWHZ1TMz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A02:Lcom/facebook/ads/redexgen/X/KS;

    aput-object v0, v3, v5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A01:Lcom/facebook/ads/redexgen/X/L6;

    aput-object v0, v3, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A03:Lcom/facebook/ads/redexgen/X/KN;

    aput-object v0, v3, v1

    .line 16863
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 16864
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Lg;->A08()V

    .line 16865
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .line 16866
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7i;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 16867
    .local p0, "audioManager":Landroid/media/AudioManager;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A00:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 16868
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Lg;->onDetachedFromWindow()V

    .line 16869
    return-void

    .line 16870
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0
.end method
