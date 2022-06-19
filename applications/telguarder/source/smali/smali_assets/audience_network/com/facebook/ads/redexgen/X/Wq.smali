.class public final Lcom/facebook/ads/redexgen/X/Wq;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7D;->A0V(Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/75;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/76;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/7D;

.field public final synthetic A03:Ljava/util/ArrayList;

.field public final synthetic A04:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wq;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7D;Ljava/util/ArrayList;Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;Ljava/util/ArrayList;)V
    .locals 0

    .line 64681
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/7D;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/75;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:Lcom/facebook/ads/redexgen/X/76;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Wq;->A04:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "peP5GJDM9me8QDpiMTE0HYbhk5UQvsuj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UmJsGkUZcFFvxG21gGzKuNxtLbnsNH0B"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "InCZKAYVJ2xyVT3RLHGk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cxu83bHx4KSubY78z6WW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "55WyHuuOCemh1dLUozRA9kNqY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hUMsj3tCoCX6inz1bILbzXUTN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Ib1pT8H4oQaxudtz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "STVRCs5pIYaR1pHj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wq;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 7

    .line 64682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A0D(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    .line 64683
    .local p0, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A07(Lcom/facebook/ads/redexgen/X/7D;)Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Wm;

    if-eqz v0, :cond_2

    .line 64684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A07(Lcom/facebook/ads/redexgen/X/7D;)Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Wm;

    .line 64685
    .local v0, "adContext":Lcom/facebook/ads/redexgen/X/Wm;
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64686
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/7D;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wq;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wq;->A05:[Ljava/lang/String;

    const-string v1, "VOoEaVD2AhQqE2eihnl7KTPep"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "w5ZZxiUEMCto3C9LPjbo44Vi7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/7D;->A00(Lcom/facebook/ads/redexgen/X/7D;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v0

    invoke-interface {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A3t(J)V

    goto :goto_0

    .line 64687
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A00(Lcom/facebook/ads/redexgen/X/7D;)J

    move-result-wide v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wq;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wq;->A05:[Ljava/lang/String;

    const-string v1, "2AKeTr6tr707KlGvOMGxq5mwrGpMJ9ld"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "suxbhmmAcT7umtkKaquBJugvmLA4dzh3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v5, v6}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v0

    invoke-interface {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A3s(J)V

    .line 64688
    .end local v0    # "adContext":Lcom/facebook/ads/redexgen/X/Wm;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A01(Lcom/facebook/ads/redexgen/X/7D;)Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wr;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/Wr;-><init>(Lcom/facebook/ads/redexgen/X/Wq;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A04:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A0D(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64690
    return-void

    .line 64691
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wq;->A05:[Ljava/lang/String;

    const-string v1, "BDOt3h9Y7SZbNEQhQ7nM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "gn1bWDrq06dYZ8Q2LOBj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v5, v6}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v0

    invoke-interface {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A3s(J)V

    goto :goto_0
.end method
