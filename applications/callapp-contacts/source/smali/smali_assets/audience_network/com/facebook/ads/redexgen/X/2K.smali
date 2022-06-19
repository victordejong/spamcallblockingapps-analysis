.class public final Lcom/facebook/ads/redexgen/X/2K;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2I;,
        Lcom/facebook/ads/redexgen/X/2J;
    }
.end annotation


# static fields
.field public static A05:Lcom/facebook/ads/redexgen/X/2K;

.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:Ljava/lang/Object;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Landroid/os/Handler;

.field public final A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/2I;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/2J;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/2J;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 4827
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2K;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2K;->A03()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2K;->A08:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 4828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4829
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    .line 4830
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A03:Ljava/util/HashMap;

    .line 4831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A02:Ljava/util/ArrayList;

    .line 4832
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2K;->A00:Landroid/content/Context;

    .line 4833
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/2H;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/2H;-><init>(Lcom/facebook/ads/redexgen/X/2K;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A01:Landroid/os/Handler;

    .line 4834
    return-void
.end method

.method public static A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2K;
    .locals 3

    .line 4835
    sget-object v2, Lcom/facebook/ads/redexgen/X/2K;->A08:Ljava/lang/Object;

    monitor-enter v2

    .line 4836
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/2K;->A05:Lcom/facebook/ads/redexgen/X/2K;

    if-nez v0, :cond_0

    .line 4837
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/2K;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2K;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2K;->A05:Lcom/facebook/ads/redexgen/X/2K;

    .line 4838
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/2K;->A05:Lcom/facebook/ads/redexgen/X/2K;

    monitor-exit v2

    return-object v0

    .line 4839
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2K;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x50

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 8

    .line 4840
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    monitor-enter v1

    .line 4841
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4842
    .local v1, "N":I
    if-gtz v0, :cond_1

    .line 4843
    monitor-exit v1

    goto :goto_2

    .line 4844
    :cond_1
    new-array v7, v0, [Lcom/facebook/ads/redexgen/X/2I;

    .line 4845
    .local v0, "brs":[Lcom/facebook/ads/redexgen/X/2I;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4847
    .end local v1    # "N":I
    monitor-exit v1

    .line 4848
    const/4 v6, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local p0, "i":I
    :goto_0
    array-length v0, v7

    if-ge v6, v0, :cond_0

    .line 4849
    aget-object v5, v7, v6

    .line 4850
    .local v1, "br":Lcom/facebook/ads/redexgen/X/2I;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/2I;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4851
    .local v0, "nbr":I
    const/4 v3, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 4852
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/2I;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/2J;

    .line 4853
    .local v0, "rec":Lcom/facebook/ads/redexgen/X/2J;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/2J;->A01:Z

    if-nez v0, :cond_2

    .line 4854
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/2J;->A02:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2K;->A00:Landroid/content/Context;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/2I;->A00:Landroid/content/Intent;

    invoke-virtual {v2, v1, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4855
    .end local v0    # "rec":Lcom/facebook/ads/redexgen/X/2J;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4856
    .end local v1    # "br":Lcom/facebook/ads/redexgen/X/2I;
    .end local v0
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4857
    :goto_2
    return-void

    .line 4858
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xb3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2K;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x74t
        -0x74t
        -0x4et
        -0x2bt
        -0x28t
        -0x20t
        -0x2ft
        -0x22t
        -0x74t
        -0x30t
        -0x2bt
        -0x30t
        -0x74t
        -0x26t
        -0x25t
        -0x20t
        -0x74t
        -0x27t
        -0x33t
        -0x20t
        -0x31t
        -0x2ct
        -0x5at
        -0x74t
        -0x6ft
        -0x6ft
        -0x49t
        -0x26t
        -0x23t
        -0x1bt
        -0x2at
        -0x1dt
        -0x6ft
        -0x22t
        -0x2et
        -0x1bt
        -0x2ct
        -0x27t
        -0x2at
        -0x2bt
        -0x6et
        -0x6ft
        -0x6ft
        -0x22t
        -0x2et
        -0x1bt
        -0x2ct
        -0x27t
        -0x52t
        -0x5ft
        -0x17t
        -0x66t
        -0x17t
        -0x20t
        -0x66t
        -0x1dt
        -0x18t
        -0x12t
        -0x21t
        -0x18t
        -0x12t
        -0x66t
        0x7et
        -0x2ft
        -0x3ft
        -0x3at
        -0x3dt
        -0x35t
        -0x3dt
        0x7et
        -0x58t
        -0x36t
        -0x25t
        -0x30t
        -0x2at
        -0x2bt
        -0x79t
        -0x2dt
        -0x30t
        -0x26t
        -0x25t
        -0x5ft
        -0x79t
        0x1bt
        0x3et
        0x32t
        0x30t
        0x3bt
        0x11t
        0x41t
        0x3et
        0x30t
        0x33t
        0x32t
        0x30t
        0x42t
        0x43t
        0x1ct
        0x30t
        0x3dt
        0x30t
        0x36t
        0x34t
        0x41t
        -0x33t
        -0x1ft
        -0xct
        -0x1dt
        -0x18t
        -0x17t
        -0x12t
        -0x19t
        -0x60t
        -0x1ft
        -0x19t
        -0x1ft
        -0x17t
        -0x12t
        -0xdt
        -0xct
        -0x60t
        -0x1at
        -0x17t
        -0x14t
        -0xct
        -0x1bt
        -0xet
        -0x60t
        -0x50t
        -0x3dt
        -0x2ft
        -0x33t
        -0x36t
        -0x2ct
        -0x39t
        -0x34t
        -0x3bt
        0x7et
        -0x2et
        -0x29t
        -0x32t
        -0x3dt
        0x7et
        -0x13t
        -0x11t
        0x0t
        -0xbt
        -0x5t
        -0x6t
        -0x3t
        -0x5t
        0xet
        -0x1t
        0x1t
        0x9t
        0xct
        0x13t
        0x9t
        0x6t
        0x19t
        0x6t
        0x1dt
        0x22t
        0x19t
        0xet
        -0x35t
        -0x3ct
        -0x3ft
        -0x3ct
        -0x3bt
        -0x33t
        -0x3ct
        0x76t
        -0x38t
        -0x45t
        -0x49t
        -0x37t
        -0x3bt
        -0x3ct
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JAgQ2spdQpH8xKgxtQcQLLz6sgGCkpe2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SMfU9IuS4ycu6Y2ZHRBSqn3aWPXKMTOT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "55l84Ag1V6wgeVOPN73gijnv7nIwTIEx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eOq258YlCb1TEbA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VJMc46I8NXWnx7x8GW3WGk3ASQlYYFHT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LoC5Exa7K60en74lmCNTJxDot4v0o8bM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KRpLxkqJYlgWqGJZ48eoA1wpDd5KWG89"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Gt8Vn0C4eF81I9TsnyjdaH21jMiVX3Ky"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2K;->A07:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/2K;)V
    .locals 0

    .line 4859
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2K;->A02()V

    return-void
.end method


# virtual methods
.method public final A06(Landroid/content/BroadcastReceiver;)V
    .locals 11

    .line 4860
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    monitor-enter v9

    .line 4861
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 4862
    .local p1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v10, :cond_0

    .line 4863
    monitor-exit v9

    return-void

    .line 4864
    :cond_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v7, 0x1

    sub-int/2addr v8, v7

    .local v9, "i":I
    :goto_0
    if-ltz v8, :cond_5

    .line 4865
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/2J;

    .line 4866
    .local v10, "filter":Lcom/facebook/ads/redexgen/X/2J;
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/2J;->A01:Z

    .line 4867
    const/4 v5, 0x0

    .local v10, "j":I
    :goto_1
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/2J;->A03:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 4868
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/2J;->A03:Landroid/content/IntentFilter;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    .line 4869
    .local v8, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4870
    .local v7, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v3, :cond_3

    .line 4871
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    .local v8, "k":I
    :goto_2
    if-ltz v2, :cond_2

    .line 4872
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/2J;

    .line 4873
    .local v6, "rec":Lcom/facebook/ads/redexgen/X/2J;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2J;->A02:Landroid/content/BroadcastReceiver;

    if-ne v0, p1, :cond_1

    .line 4874
    iput-boolean v7, v1, Lcom/facebook/ads/redexgen/X/2J;->A01:Z

    .line 4875
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4876
    .end local v6    # "rec":Lcom/facebook/ads/redexgen/X/2J;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 4877
    .end local v8    # "k":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 4878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4879
    .end local v8
    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4880
    .end local v10    # "j":I
    .end local v10
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 4881
    .end local p1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v9    # "i":I
    :cond_5
    monitor-exit v9

    .line 4882
    return-void

    .line 4883
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final A07(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 7

    .line 4884
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    monitor-enter v6

    .line 4885
    :try_start_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/2J;

    invoke-direct {v5, p2, p1}, Lcom/facebook/ads/redexgen/X/2J;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 4886
    .local p1, "entry":Lcom/facebook/ads/redexgen/X/2J;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4887
    .local p2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 4888
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4890
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4891
    const/4 v3, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 4892
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    .line 4893
    .local v0, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4894
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v1, :cond_1

    .line 4895
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4897
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4898
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4899
    .end local p1    # "entry":Lcom/facebook/ads/redexgen/X/2J;
    .end local p2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v5    # "i":I
    :cond_2
    monitor-exit v6

    .line 4900
    return-void

    .line 4901
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final A08(Landroid/content/Intent;)Z
    .locals 22

    .line 4902
    move-object/from16 v4, p0

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    monitor-enter v2

    .line 4903
    :try_start_0
    move-object/from16 v6, p1

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 4904
    .local v15, "action":Ljava/lang/String;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2K;->A00:Landroid/content/Context;

    .line 4905
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4906
    invoke-virtual {v6, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    .line 4907
    .local p0, "type":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    .line 4908
    .local v10, "data":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 4909
    .local v9, "scheme":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v19

    .line 4910
    .local v18, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/lit8 v5, v0, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/2K;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    .line 4911
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4912
    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/2K;->A07:[Ljava/lang/String;

    const-string v1, "lSfbUYFGweUQuNG8Rfx6KTKomP6ZXnHe"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    const/4 v13, 0x1

    .line 4913
    .local v5, "debug":Z
    :goto_0
    if-eqz v13, :cond_2

    goto :goto_1

    .line 4914
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 4915
    :goto_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x80

    const/16 v1, 0xf

    const/16 v0, 0xe

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e

    const/16 v1, 0x8

    const/16 v0, 0xe

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x33

    const/16 v1, 0xb

    const/16 v0, 0x2a

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4916
    :cond_2
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/2K;->A03:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 4917
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v7, :cond_13

    .line 4918
    if-eqz v13, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x46

    const/16 v1, 0xd

    const/16 v0, 0x17

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4919
    :cond_3
    const/4 v5, 0x0

    .line 4920
    .local v2, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v2    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v9, "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_10

    .line 4921
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/2J;

    .line 4922
    .local v0, "receiver":Lcom/facebook/ads/redexgen/X/2J;
    if-eqz v13, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x68

    const/16 v11, 0x18

    const/16 v0, 0x30

    invoke-static {v12, v11, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2J;->A03:Landroid/content/IntentFilter;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4923
    :cond_4
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/2J;->A00:Z

    if-eqz v0, :cond_5

    goto/16 :goto_6

    .line 4924
    :cond_5
    iget-object v14, v1, Lcom/facebook/ads/redexgen/X/2J;->A03:Landroid/content/IntentFilter;

    const/16 v11, 0x53

    const/16 v3, 0x15

    const/16 v0, 0x7f

    invoke-static {v11, v3, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v20

    .end local v0    # "receiver":Lcom/facebook/ads/redexgen/X/2J;
    .local v0, "receiver":Lcom/facebook/ads/redexgen/X/2J;
    move-object/from16 v21, v10

    .end local v0    # "receiver":Lcom/facebook/ads/redexgen/X/2J;
    .local p0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v0, "type":Ljava/lang/String;
    .end local v9    # "i":I
    .local v0, "i":I
    move-object/from16 v17, v9

    move-object/from16 v16, v10

    invoke-virtual/range {v14 .. v20}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v10

    .line 4925
    .local v2, "match":I
    if-ltz v10, :cond_8

    .line 4926
    if-eqz v13, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x18

    const/16 v11, 0x1b

    const/16 v0, 0x21

    invoke-static {v12, v11, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4927
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4928
    :cond_6
    if-nez v5, :cond_7

    .line 4929
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4930
    :cond_7
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4931
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/2J;->A00:Z

    goto/16 :goto_7

    .line 4932
    :cond_8
    if-eqz v13, :cond_e

    .line 4933
    const/4 v0, -0x4

    if-eq v10, v0, :cond_d

    const/4 v0, -0x3

    if-eq v10, v0, :cond_c
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, -0x2

    sget-object v11, Lcom/facebook/ads/redexgen/X/2K;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v11, v0

    const/4 v0, 0x2

    aget-object v11, v11, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v11, Lcom/facebook/ads/redexgen/X/2K;->A07:[Ljava/lang/String;

    const-string v1, "5qzuR4qMoPZls20V66WxKiW3T4KGbQbj"

    const/4 v0, 0x0

    aput-object v1, v11, v0

    const-string v1, "kEPjeIL3mafX6U4jTmCqSP6sjLKd9gyj"

    const/4 v0, 0x7

    aput-object v1, v11, v0

    if-eq v10, v3, :cond_b

    :goto_3
    const/4 v0, -0x1

    if-eq v10, v0, :cond_a

    goto :goto_4

    :cond_9
    sget-object v11, Lcom/facebook/ads/redexgen/X/2K;->A07:[Ljava/lang/String;

    const-string v1, "h3Qfzc7N3anSG7kgVWb3yo3aGUD4IV89"

    const/4 v0, 0x4

    aput-object v1, v11, v0

    const-string v1, "BfvHQ0l05ZHpmgj3Y5mpmM31eUnVsDmR"

    const/4 v0, 0x1

    aput-object v1, v11, v0

    if-eq v10, v3, :cond_b

    goto :goto_3

    .line 4934
    .end local v0    # "i":I
    :cond_a
    :try_start_2
    const/16 v3, 0xa1

    const/4 v1, 0x4

    const/16 v0, 0x59

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 4935
    .end local v0
    :cond_b
    const/16 v3, 0x9d

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 4936
    .end local v0
    :cond_c
    const/16 v3, 0x8f

    const/4 v1, 0x6

    const/16 v0, 0x3c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 4937
    .end local v0
    :cond_d
    const/16 v3, 0x95

    const/16 v1, 0x8

    const/16 v0, 0x4a

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 4938
    :goto_4
    const/16 v3, 0xa5

    const/16 v1, 0xe

    const/4 v0, 0x6

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v11

    .line 4939
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x1c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_7

    .line 4940
    :goto_6
    if-eqz v13, :cond_f

    .line 4941
    move-object/from16 v21, v10

    .line 4942
    .end local p0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v9
    .restart local v0    # "i":I
    .restart local v0    # "i":I
    :cond_e
    :goto_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, v21

    .end local v0    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_2

    .line 4943
    :cond_f
    move-object/from16 v21, v10

    goto :goto_7

    .line 4944
    .end local v0
    .restart local p0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v0
    .end local v9    # "i":I
    .local p0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v0    # "i":I
    :cond_10
    if-eqz v5, :cond_13

    .line 4945
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_11

    .line 4946
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/2J;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/2J;->A00:Z

    .line 4947
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 4948
    .end local v0    # "i":I
    :cond_11
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/2K;->A02:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2I;

    invoke-direct {v0, v6, v5}, Lcom/facebook/ads/redexgen/X/2I;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4949
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2K;->A01:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4950
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2K;->A01:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4951
    :cond_12
    monitor-exit v2

    const/4 v0, 0x1

    return v0

    .line 4952
    .end local p0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v15    # "action":Ljava/lang/String;
    .end local v10    # "data":Landroid/net/Uri;
    .end local v18    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9
    .end local v5    # "debug":Z
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_13
    monitor-exit v2

    .line 4953
    const/4 v0, 0x0

    return v0

    .line 4954
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
