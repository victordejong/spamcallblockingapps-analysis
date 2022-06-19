.class public final Lcom/facebook/ads/redexgen/X/DL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/W8;
.implements Lcom/facebook/ads/redexgen/X/AS;
.implements Lcom/facebook/ads/redexgen/X/AQ;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/W6;,
        Lcom/facebook/ads/internal/exoplayer2/SimpleExoPlayer$VideoListener;
    }
.end annotation


# static fields
.field public static A0O:[B

.field public static A0P:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Landroid/view/SurfaceHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Landroid/view/TextureView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A07:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A08:Lcom/facebook/ads/redexgen/X/Ar;

.field public A09:Lcom/facebook/ads/redexgen/X/Ba;

.field public A0A:Lcom/facebook/ads/redexgen/X/Ba;

.field public A0B:Lcom/facebook/ads/redexgen/X/FE;

.field public A0C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation
.end field

.field public A0D:Z

.field public final A0E:Landroid/os/Handler;

.field public final A0F:Lcom/facebook/ads/redexgen/X/W8;

.field public final A0G:Lcom/facebook/ads/redexgen/X/W6;

.field public final A0H:Lcom/facebook/ads/redexgen/X/W4;

.field public final A0I:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/B7;",
            ">;"
        }
    .end annotation
.end field

.field public final A0J:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/Dx;",
            ">;"
        }
    .end annotation
.end field

.field public final A0K:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/GF;",
            ">;"
        }
    .end annotation
.end field

.field public final A0L:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/J0;",
            ">;"
        }
    .end annotation
.end field

.field public final A0M:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/Ir;",
            ">;"
        }
    .end annotation
.end field

.field public final A0N:[Lcom/facebook/ads/redexgen/X/W7;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DL;->A0G()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DL;->A0F()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Aa;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/AF;Lcom/facebook/ads/redexgen/X/C0;)V
    .locals 6
    .param p4    # Lcom/facebook/ads/redexgen/X/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Aa;",
            "Lcom/facebook/ads/redexgen/X/H7;",
            "Lcom/facebook/ads/redexgen/X/AF;",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;)V"
        }
    .end annotation

    .line 26778
    .local v4, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    new-instance v5, Lcom/facebook/ads/redexgen/X/Ag;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/Ag;-><init>()V

    move-object v0, p0

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/DL;-><init>(Lcom/facebook/ads/redexgen/X/Aa;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/AF;Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/redexgen/X/Ag;)V

    .line 26779
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Aa;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/AF;Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/redexgen/X/Ag;)V
    .locals 7
    .param p4    # Lcom/facebook/ads/redexgen/X/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Aa;",
            "Lcom/facebook/ads/redexgen/X/H7;",
            "Lcom/facebook/ads/redexgen/X/AF;",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Ag;",
            ")V"
        }
    .end annotation

    .line 26780
    .local v4, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    sget-object v6, Lcom/facebook/ads/redexgen/X/I0;->A00:Lcom/facebook/ads/redexgen/X/I0;

    move-object v0, p0

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/DL;-><init>(Lcom/facebook/ads/redexgen/X/Aa;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/AF;Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/redexgen/X/Ag;Lcom/facebook/ads/redexgen/X/I0;)V

    .line 26781
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Aa;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/AF;Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/redexgen/X/Ag;Lcom/facebook/ads/redexgen/X/I0;)V
    .locals 7
    .param p4    # Lcom/facebook/ads/redexgen/X/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Aa;",
            "Lcom/facebook/ads/redexgen/X/H7;",
            "Lcom/facebook/ads/redexgen/X/AF;",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Ag;",
            "Lcom/facebook/ads/redexgen/X/I0;",
            ")V"
        }
    .end annotation

    move-object v6, p4

    .line 26782
    .local v0, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26783
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/W6;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/W6;-><init>(Lcom/facebook/ads/redexgen/X/DL;Lcom/facebook/ads/redexgen/X/Ac;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0G:Lcom/facebook/ads/redexgen/X/W6;

    .line 26784
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0M:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26785
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26786
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26787
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26788
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26789
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 26790
    .local p0, "eventLooper":Landroid/os/Looper;
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0E:Landroid/os/Handler;

    .line 26791
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A0E:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DL;->A0G:Lcom/facebook/ads/redexgen/X/W6;

    .line 26792
    move-object v3, v2

    move-object v4, v2

    move-object v0, p1

    move-object v5, v2

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Aa;->A4O(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/J0;Lcom/facebook/ads/redexgen/X/B7;Lcom/facebook/ads/redexgen/X/GF;Lcom/facebook/ads/redexgen/X/Dx;Lcom/facebook/ads/redexgen/X/C0;)[Lcom/facebook/ads/redexgen/X/W7;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0N:[Lcom/facebook/ads/redexgen/X/W7;

    .line 26793
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A00:F

    .line 26794
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:I

    .line 26795
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ar;->A05:Lcom/facebook/ads/redexgen/X/Ar;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A08:Lcom/facebook/ads/redexgen/X/Ar;

    .line 26796
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A02:I

    .line 26797
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0C:Ljava/util/List;

    .line 26798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0N:[Lcom/facebook/ads/redexgen/X/W7;

    invoke-direct {p0, v0, p2, p3, p6}, Lcom/facebook/ads/redexgen/X/DL;->A02([Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/AF;Lcom/facebook/ads/redexgen/X/I0;)Lcom/facebook/ads/redexgen/X/W8;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    .line 26799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-virtual {p5, v0, p6}, Lcom/facebook/ads/redexgen/X/Ag;->A00(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/I0;)Lcom/facebook/ads/redexgen/X/W4;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0H:Lcom/facebook/ads/redexgen/X/W4;

    .line 26800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0H:Lcom/facebook/ads/redexgen/X/W4;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DL;->A3E(Lcom/facebook/ads/redexgen/X/AO;)V

    .line 26801
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0H:Lcom/facebook/ads/redexgen/X/W4;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 26802
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0H:Lcom/facebook/ads/redexgen/X/W4;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 26803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0H:Lcom/facebook/ads/redexgen/X/W4;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DL;->A0J(Lcom/facebook/ads/redexgen/X/Dx;)V

    .line 26804
    instance-of v0, v6, Lcom/facebook/ads/redexgen/X/Vp;

    if-eqz v0, :cond_0

    .line 26805
    check-cast v6, Lcom/facebook/ads/redexgen/X/Vp;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A0E:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0H:Lcom/facebook/ads/redexgen/X/W4;

    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Vp;->A05(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Bo;)V

    .line 26806
    :cond_0
    return-void

    .line 26807
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/DL;I)I
    .locals 0

    .line 26808
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:I

    return p1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/DL;)Landroid/view/Surface;
    .locals 0

    .line 26809
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Landroid/view/Surface;

    return-object p0
.end method

.method private final A02([Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/AF;Lcom/facebook/ads/redexgen/X/I0;)Lcom/facebook/ads/redexgen/X/W8;
    .locals 1

    .line 26810
    new-instance v0, Lcom/facebook/ads/redexgen/X/Df;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Df;-><init>([Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/AF;Lcom/facebook/ads/redexgen/X/I0;)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/DL;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 0

    .line 26811
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DL;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/DL;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 0

    .line 26812
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DL;->A06:Lcom/facebook/ads/internal/exoplayer2/Format;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/DL;Lcom/facebook/ads/redexgen/X/Ba;)Lcom/facebook/ads/redexgen/X/Ba;
    .locals 0

    .line 26813
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DL;->A0A:Lcom/facebook/ads/redexgen/X/Ba;

    return-object p1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/DL;Lcom/facebook/ads/redexgen/X/Ba;)Lcom/facebook/ads/redexgen/X/Ba;
    .locals 0

    .line 26814
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DL;->A09:Lcom/facebook/ads/redexgen/X/Ba;

    return-object p1
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/DL;->A0O:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/DL;->A0P:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/DL;->A0P:[Ljava/lang/String;

    const-string v1, "LgAISwTLOqCZht1KGsyXe9ecByglmnT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sub-int/2addr p1, p2

    add-int/lit8 v0, p1, -0x21

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/DL;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 26815
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DL;->A0C:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26816
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26817
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26818
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26819
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0M:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26820
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private A0E()V
    .locals 5

    .line 26821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A05:Landroid/view/TextureView;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 26822
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0G:Lcom/facebook/ads/redexgen/X/W6;

    if-eq v1, v0, :cond_2

    .line 26823
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DL;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf

    const/16 v1, 0x31

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DL;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26824
    :goto_0
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/DL;->A05:Landroid/view/TextureView;

    .line 26825
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A04:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 26826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0G:Lcom/facebook/ads/redexgen/X/W6;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 26827
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/DL;->A04:Landroid/view/SurfaceHolder;

    .line 26828
    :cond_1
    return-void

    .line 26829
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A05:Landroid/view/TextureView;

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method public static A0F()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/DL;->A0O:[B

    return-void

    :array_0
    .array-data 1
        -0x67t
        -0x51t
        -0x4dt
        -0x4at
        -0x4et
        -0x55t
        -0x75t
        -0x42t
        -0x4bt
        -0x6at
        -0x4et
        -0x59t
        -0x41t
        -0x55t
        -0x48t
        -0x3at
        -0x18t
        -0x1bt
        -0x27t
        -0x2ct
        -0x2at
        -0x28t
        -0x39t
        -0x28t
        -0x15t
        -0x19t
        -0x18t
        -0x1bt
        -0x28t
        -0x41t
        -0x24t
        -0x1at
        -0x19t
        -0x28t
        -0x1ft
        -0x28t
        -0x1bt
        -0x6dt
        -0x2ct
        -0x21t
        -0x1bt
        -0x28t
        -0x2ct
        -0x29t
        -0x14t
        -0x6dt
        -0x18t
        -0x1ft
        -0x1at
        -0x28t
        -0x19t
        -0x6dt
        -0x1et
        -0x1bt
        -0x6dt
        -0x1bt
        -0x28t
        -0x1dt
        -0x21t
        -0x2ct
        -0x2at
        -0x28t
        -0x29t
        -0x5ft
    .end array-data
.end method

.method public static A0G()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4iOmAh8q6hFmTizh88tDa3ZdskdzzXDq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CzcggTuF7gJKKA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "H3rnfE1zedDvF9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Thc68tvne5cdt5xKqgWHEvy96v1dgAc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OoS0ToTEuRm9MmTGC8CYFsXFeHGU7ten"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dsXvFampntk6k8ROHvMpx1RZGTEBSLU6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XkoIwqeqQxWsSOAcxDe7ab14lGCDwZM9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HbDMo4wDUiZXtdgaecp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DL;->A0P:[Ljava/lang/String;

    return-void
.end method

.method private A0H(Landroid/view/Surface;Z)V
    .locals 7
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26830
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 26831
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/PlayerMessage;>;"
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/DL;->A0N:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v4, v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v6, v3

    .line 26832
    .local v6, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/W7;->A7R()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 26833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    .line 26834
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/W8;->A4I(Lcom/facebook/ads/redexgen/X/AV;)Lcom/facebook/ads/redexgen/X/AW;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AW;->A07(I)Lcom/facebook/ads/redexgen/X/AW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AW;->A08(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/AW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AW;->A06()Lcom/facebook/ads/redexgen/X/AW;

    move-result-object v0

    .line 26835
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26836
    .end local v6    # "renderer":Lcom/facebook/ads/redexgen/X/W7;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26837
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Landroid/view/Surface;

    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 26838
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AW;

    .line 26839
    .local p2, "message":Lcom/facebook/ads/redexgen/X/AW;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AW;->A0D()Z

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26840
    .local p1, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 26841
    .end local p1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0D:Z

    if-eqz v0, :cond_3

    .line 26842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 26843
    :cond_3
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Landroid/view/Surface;

    .line 26844
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/DL;->A0D:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/DL;->A0P:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    .line 26845
    sget-object v2, Lcom/facebook/ads/redexgen/X/DL;->A0P:[Ljava/lang/String;

    const-string v1, "AMDtcms"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/DL;Landroid/view/Surface;Z)V
    .locals 0

    .line 26846
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/DL;->A0H(Landroid/view/Surface;Z)V

    return-void
.end method

.method private final A0J(Lcom/facebook/ads/redexgen/X/Dx;)V
    .locals 1

    .line 26847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 26848
    return-void
.end method


# virtual methods
.method public final A0K()I
    .locals 1

    .line 26849
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A01:I

    return v0
.end method

.method public final A0L()Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1

    .line 26850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A06:Lcom/facebook/ads/internal/exoplayer2/Format;

    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 26851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    return-object v0
.end method

.method public final A0N()V
    .locals 1

    .line 26852
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DL;->AEF(Z)V

    .line 26853
    return-void
.end method

.method public final A0O(F)V
    .locals 6

    .line 26854
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DL;->A00:F

    .line 26855
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/DL;->A0N:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v5, v3

    .line 26856
    .local v4, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/W7;->A7R()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 26857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/W8;->A4I(Lcom/facebook/ads/redexgen/X/AV;)Lcom/facebook/ads/redexgen/X/AW;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AW;->A07(I)Lcom/facebook/ads/redexgen/X/AW;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AW;->A08(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/AW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AW;->A06()Lcom/facebook/ads/redexgen/X/AW;

    .line 26858
    .end local v4    # "renderer":Lcom/facebook/ads/redexgen/X/W7;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26859
    :cond_1
    return-void
.end method

.method public final A0P(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26860
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DL;->A0E()V

    .line 26861
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/DL;->A0H(Landroid/view/Surface;Z)V

    .line 26862
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/FE;)V
    .locals 1

    .line 26863
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/DL;->ACW(Lcom/facebook/ads/redexgen/X/FE;ZZ)V

    .line 26864
    return-void
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/Ir;)V
    .locals 1

    .line 26865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0M:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 26866
    return-void
.end method

.method public final A3E(Lcom/facebook/ads/redexgen/X/AO;)V
    .locals 1

    .line 26867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/AT;->A3E(Lcom/facebook/ads/redexgen/X/AO;)V

    .line 26868
    return-void
.end method

.method public final A4I(Lcom/facebook/ads/redexgen/X/AV;)Lcom/facebook/ads/redexgen/X/AW;
    .locals 1

    .line 26869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/W8;->A4I(Lcom/facebook/ads/redexgen/X/AV;)Lcom/facebook/ads/redexgen/X/AW;

    move-result-object v0

    return-object v0
.end method

.method public final A5k()I
    .locals 1

    .line 26870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A5k()I

    move-result v0

    return v0
.end method

.method public final A5l()J
    .locals 2

    .line 26871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A5l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A62()J
    .locals 2

    .line 26872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A62()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A64()I
    .locals 1

    .line 26873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A64()I

    move-result v0

    return v0
.end method

.method public final A65()I
    .locals 1

    .line 26874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A65()I

    move-result v0

    return v0
.end method

.method public final A67()J
    .locals 2

    .line 26875
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A67()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A69()Lcom/facebook/ads/redexgen/X/Af;
    .locals 1

    .line 26876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A69()Lcom/facebook/ads/redexgen/X/Af;

    move-result-object v0

    return-object v0
.end method

.method public final A6A()I
    .locals 1

    .line 26877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A6A()I

    move-result v0

    return v0
.end method

.method public final A6I()J
    .locals 2

    .line 26878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A6I()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6z()Z
    .locals 1

    .line 26879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A6z()Z

    move-result v0

    return v0
.end method

.method public final ACW(Lcom/facebook/ads/redexgen/X/FE;ZZ)V
    .locals 2

    .line 26880
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A0B:Lcom/facebook/ads/redexgen/X/FE;

    if-eq v1, p1, :cond_1

    .line 26881
    if-eqz v1, :cond_0

    .line 26882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0H:Lcom/facebook/ads/redexgen/X/W4;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FE;->AD8(Lcom/facebook/ads/redexgen/X/FS;)V

    .line 26883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0H:Lcom/facebook/ads/redexgen/X/W4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/W4;->A08()V

    .line 26884
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A0E:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0H:Lcom/facebook/ads/redexgen/X/W4;

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/FE;->A3C(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/FS;)V

    .line 26885
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DL;->A0B:Lcom/facebook/ads/redexgen/X/FE;

    .line 26886
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/W8;->ACW(Lcom/facebook/ads/redexgen/X/FE;ZZ)V

    .line 26887
    return-void
.end method

.method public final ACz()V
    .locals 4

    .line 26888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->ACz()V

    .line 26889
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DL;->A0E()V

    .line 26890
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 26891
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0D:Z

    if-eqz v0, :cond_0

    .line 26892
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 26893
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A03:Landroid/view/Surface;

    .line 26894
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A0B:Lcom/facebook/ads/redexgen/X/FE;

    if-eqz v1, :cond_2

    .line 26895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0H:Lcom/facebook/ads/redexgen/X/W4;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FE;->AD8(Lcom/facebook/ads/redexgen/X/FS;)V

    .line 26896
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/DL;->A0P:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/DL;->A0P:[Ljava/lang/String;

    const-string v1, "mFrSRmwDSrZ34fM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/DL;->A0C:Ljava/util/List;

    .line 26897
    return-void
.end method

.method public final ADZ(J)V
    .locals 1

    .line 26898
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0H:Lcom/facebook/ads/redexgen/X/W4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/W4;->A07()V

    .line 26899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/AT;->ADZ(J)V

    .line 26900
    return-void
.end method

.method public final ADa()V
    .locals 1

    .line 26901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0H:Lcom/facebook/ads/redexgen/X/W4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/W4;->A07()V

    .line 26902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->ADa()V

    .line 26903
    return-void
.end method

.method public final ADq(Z)V
    .locals 1

    .line 26904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/AT;->ADq(Z)V

    .line 26905
    return-void
.end method

.method public final AEF(Z)V
    .locals 2

    .line 26906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0F:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/AT;->AEF(Z)V

    .line 26907
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DL;->A0B:Lcom/facebook/ads/redexgen/X/FE;

    if-eqz v1, :cond_0

    .line 26908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0H:Lcom/facebook/ads/redexgen/X/W4;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FE;->AD8(Lcom/facebook/ads/redexgen/X/FS;)V

    .line 26909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0B:Lcom/facebook/ads/redexgen/X/FE;

    .line 26910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0H:Lcom/facebook/ads/redexgen/X/W4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/W4;->A08()V

    .line 26911
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DL;->A0C:Ljava/util/List;

    .line 26912
    return-void
.end method
