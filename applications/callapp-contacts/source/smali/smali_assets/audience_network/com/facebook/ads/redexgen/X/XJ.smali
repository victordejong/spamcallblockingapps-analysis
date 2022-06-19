.class public Lcom/facebook/ads/redexgen/X/XJ;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XJ;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V
    .locals 1

    .line 57697
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/8D;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)V

    .line 57698
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Ljava/util/WeakHashMap;

    .line 57699
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 57701
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A01:Ljava/lang/ref/WeakReference;

    .line 57702
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V
    .locals 2

    .line 57703
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/8D;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)V

    .line 57704
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Ljava/util/WeakHashMap;

    .line 57705
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 57707
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XJ;->A00(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 57708
    .local p0, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 57709
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A01:Ljava/lang/ref/WeakReference;

    .line 57710
    :goto_0
    return-void

    .line 57711
    :cond_0
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A01:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static A00(Landroid/content/Context;)Landroid/app/Activity;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 57712
    :goto_0
    instance-of v3, p0, Landroid/content/ContextWrapper;

    sget-object v1, Lcom/facebook/ads/redexgen/X/XJ;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/XJ;->A03:[Ljava/lang/String;

    const-string v1, "yJQbBA22nGzLcakEAa6nG1va8g"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 57713
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 57714
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 57715
    :cond_1
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/XJ;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/facebook/ads/redexgen/X/XJ;

    .line 57716
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A09()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57717
    check-cast p0, Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XJ;->A09()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 57718
    :cond_2
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 57719
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "X2XwTp9cKPrsKt8nnsNrr4kzY8H6fo9U"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SYDx4pa2oLtOnCxt4l9slcAsJVX17"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ktbncp6BUHUyG8VpVa87zDZ4pVgXb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "697llskWaiD0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zjkPaZGeICZRQbBHOdPJm8zqRs5ofq42"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OjtN7hHvLZrci2lMJuqCcc7IsxYWRGMj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Pfr7ktMWLkOUKtldLLax33ooDo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "AIe8uS1x9EYXvM4HhYe86uhhSayJeZWe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XJ;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A09()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 57720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public A0A()Lcom/facebook/ads/redexgen/X/0R;
    .locals 1

    .line 57721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/0R;

    .line 57722
    .local p0, "funnel":Lcom/facebook/ads/redexgen/X/0R;
    if-nez v0, :cond_0

    .line 57723
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rd;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Rd;-><init>()V

    .line 57724
    :cond_0
    return-object v0
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/0R;)V
    .locals 1

    .line 57725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 57726
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/internal/api/Repairable;)V
    .locals 2

    .line 57727
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57728
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 2

    .line 57729
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/XJ;->A00:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->putAll(Ljava/util/Map;)V

    .line 57730
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/XJ;->A00:Ljava/util/WeakHashMap;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Ljava/util/WeakHashMap;

    .line 57731
    return-void
.end method

.method public final A0E(Ljava/lang/Throwable;)V
    .locals 5

    .line 57732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XJ;->A00:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    sget-object v1, Lcom/facebook/ads/redexgen/X/XJ;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57733
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/internal/api/Repairable;Ljava/lang/Boolean;>;"
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/XJ;->A03:[Ljava/lang/String;

    const-string v1, "uNK1zxgBt2FFcnYPdsvApaChXeSIkfOy"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/api/Repairable;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/Repairable;->repair(Ljava/lang/Throwable;)V

    .line 57734
    .end local p1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/internal/api/Repairable;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 57735
    :cond_1
    return-void
.end method
