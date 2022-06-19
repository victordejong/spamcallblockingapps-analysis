.class public Lcom/facebook/ads/redexgen/X/Wm;
.super Lcom/facebook/ads/redexgen/X/8D;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/facebook/ads/internal/api/Repairable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/0R;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wm;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V
    .locals 1

    .line 64624
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/8D;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)V

    .line 64625
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Ljava/util/WeakHashMap;

    .line 64626
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64628
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A01:Ljava/lang/ref/WeakReference;

    .line 64629
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V
    .locals 2

    .line 64630
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/8D;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)V

    .line 64631
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Ljava/util/WeakHashMap;

    .line 64632
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64634
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Wm;->A00(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 64635
    .local p0, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 64636
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A01:Ljava/lang/ref/WeakReference;

    .line 64637
    :goto_0
    return-void

    .line 64638
    :cond_0
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A01:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static A00(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 64639
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 64640
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 64641
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 64642
    :cond_0
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/Wm;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Wm;

    .line 64643
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0A()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64644
    check-cast p0, Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wm;->A0A()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 64645
    :cond_1
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 64646
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4Fl94EIzOk67aYUPduHJ8UazEL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sAhktSZOOrm35xxj8Imdq8RPkj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oRYwVa3KjTvntAfrBK1sqTqE8vcnrhu1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DAigVkrFkMuOUy14T2FK5zmWgvJcIn3a"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "an5oIaHMQLp81wCZBnKMJTBSx7KtQFJf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wEWpxEoKGSO43ttKCSegU3t35jPnkl3s"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WpWdxAQuBweGThqHfmbUTgqTG7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dWX8I2VlCkDjmK6jHvJYkvPP690yaesv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wm;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0A()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 64647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public A0B()Lcom/facebook/ads/redexgen/X/0R;
    .locals 1

    .line 64648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/0R;

    .line 64649
    .local p0, "funnel":Lcom/facebook/ads/redexgen/X/0R;
    if-nez v0, :cond_0

    .line 64650
    new-instance v0, Lcom/facebook/ads/redexgen/X/cL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/cL;-><init>()V

    .line 64651
    :cond_0
    return-object v0
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/0R;)V
    .locals 1

    .line 64652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64653
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/internal/api/Repairable;)V
    .locals 2

    .line 64654
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64655
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 2

    .line 64656
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Wm;->A00:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->putAll(Ljava/util/Map;)V

    .line 64657
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Wm;->A00:Ljava/util/WeakHashMap;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Ljava/util/WeakHashMap;

    .line 64658
    return-void
.end method

.method public final A0F(Ljava/lang/Throwable;)V
    .locals 5

    .line 64659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wm;->A00:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wm;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wm;->A03:[Ljava/lang/String;

    const-string v1, "cq4W2mN05Su2gaFDi5CYFjM7nJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "g7MgkZWMqMCaiMVBRzNoHUUy7c"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64660
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/internal/api/Repairable;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/api/Repairable;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/Repairable;->repair(Ljava/lang/Throwable;)V

    .line 64661
    .end local p1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/internal/api/Repairable;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 64662
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
