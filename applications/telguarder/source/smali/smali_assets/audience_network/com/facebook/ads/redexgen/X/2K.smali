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

    .line 4935
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2K;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2K;->A03()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2K;->A08:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 4936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4937
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    .line 4938
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A03:Ljava/util/HashMap;

    .line 4939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A02:Ljava/util/ArrayList;

    .line 4940
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2K;->A00:Landroid/content/Context;

    .line 4941
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/2H;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/2H;-><init>(Lcom/facebook/ads/redexgen/X/2K;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A01:Landroid/os/Handler;

    .line 4942
    return-void
.end method

.method public static A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2K;
    .locals 3

    .line 4943
    sget-object v2, Lcom/facebook/ads/redexgen/X/2K;->A08:Ljava/lang/Object;

    monitor-enter v2

    .line 4944
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/2K;->A05:Lcom/facebook/ads/redexgen/X/2K;

    if-nez v0, :cond_0

    .line 4945
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/2K;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2K;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2K;->A05:Lcom/facebook/ads/redexgen/X/2K;

    .line 4946
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/2K;->A05:Lcom/facebook/ads/redexgen/X/2K;

    monitor-exit v2

    return-object v0

    .line 4947
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

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3f

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

    .line 4948
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    monitor-enter v1

    .line 4949
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4950
    .local v1, "N":I
    if-gtz v0, :cond_1

    .line 4951
    monitor-exit v1

    goto :goto_2

    .line 4952
    :cond_1
    new-array v7, v0, [Lcom/facebook/ads/redexgen/X/2I;

    .line 4953
    .local v0, "brs":[Lcom/facebook/ads/redexgen/X/2I;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4955
    .end local v1    # "N":I
    monitor-exit v1

    .line 4956
    const/4 v6, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local p0, "i":I
    :goto_0
    array-length v0, v7

    if-ge v6, v0, :cond_0

    .line 4957
    aget-object v5, v7, v6

    .line 4958
    .local v1, "br":Lcom/facebook/ads/redexgen/X/2I;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/2I;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4959
    .local v0, "nbr":I
    const/4 v3, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 4960
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/2I;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/2J;

    .line 4961
    .local v0, "rec":Lcom/facebook/ads/redexgen/X/2J;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/2J;->A01:Z

    if-nez v0, :cond_2

    .line 4962
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/2J;->A02:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2K;->A00:Landroid/content/Context;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/2I;->A00:Landroid/content/Intent;

    invoke-virtual {v2, v1, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4963
    .end local v0    # "rec":Lcom/facebook/ads/redexgen/X/2J;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4964
    .end local v1    # "br":Lcom/facebook/ads/redexgen/X/2I;
    .end local v0
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4965
    :goto_2
    return-void

    .line 4966
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
        0xbt
        0xbt
        0x6dt
        0x42t
        0x47t
        0x5ft
        0x4et
        0x59t
        0xbt
        0x4ft
        0x42t
        0x4ft
        0xbt
        0x45t
        0x44t
        0x5ft
        0xbt
        0x46t
        0x4at
        0x5ft
        0x48t
        0x43t
        0x11t
        0xbt
        0x5ft
        0x5ft
        0x39t
        0x16t
        0x13t
        0xbt
        0x1at
        0xdt
        0x5ft
        0x12t
        0x1et
        0xbt
        0x1ct
        0x17t
        0x1at
        0x1bt
        0x5et
        0x5ft
        0x5ft
        0x12t
        0x1et
        0xbt
        0x1ct
        0x17t
        0x42t
        0x4ft
        0x7t
        0x2at
        0x65t
        0x6ct
        0x2at
        0x63t
        0x64t
        0x7et
        0x6ft
        0x64t
        0x7et
        0x2at
        0x25t
        0x76t
        0x66t
        0x6dt
        0x60t
        0x68t
        0x60t
        0x25t
        0x56t
        0x74t
        0x63t
        0x7et
        0x78t
        0x79t
        0x37t
        0x7bt
        0x7et
        0x64t
        0x63t
        0x2dt
        0x37t
        0x54t
        0x77t
        0x7bt
        0x79t
        0x74t
        0x5at
        0x6at
        0x77t
        0x79t
        0x7ct
        0x7bt
        0x79t
        0x6bt
        0x6ct
        0x55t
        0x79t
        0x76t
        0x79t
        0x7ft
        0x7dt
        0x6at
        0x18t
        0x34t
        0x21t
        0x36t
        0x3dt
        0x3ct
        0x3bt
        0x32t
        0x75t
        0x34t
        0x32t
        0x34t
        0x3ct
        0x3bt
        0x26t
        0x21t
        0x75t
        0x33t
        0x3ct
        0x39t
        0x21t
        0x30t
        0x27t
        0x75t
        0x18t
        0x2ft
        0x39t
        0x25t
        0x26t
        0x3ct
        0x23t
        0x24t
        0x2dt
        0x6at
        0x3et
        0x33t
        0x3at
        0x2ft
        0x6at
        0x38t
        0x3at
        0x2dt
        0x30t
        0x36t
        0x37t
        0x4et
        0x4ct
        0x59t
        0x48t
        0x4at
        0x42t
        0x5ft
        0x54t
        0xct
        0x9t
        0x1ct
        0x9t
        0x48t
        0x45t
        0x4ct
        0x59t
        0x5bt
        0x40t
        0x45t
        0x40t
        0x41t
        0x59t
        0x40t
        0xet
        0x5ct
        0x4bt
        0x4ft
        0x5dt
        0x41t
        0x40t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EcMUDQc7iIe8sIljqpHQvrP3aONU5GuE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1tuu19octexLH3xyKVlFBUbxVY4fLCJi"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zmeeTjf0M3uOaneAmxgf5jNyUBlxG8P8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "T1HV3BID9dOnnUJQO6MCdtZfdq4hFXO5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eAL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9B5KqtIAo2Vz9Ieo7tDyM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OyKn4s1u3RYqdV3RiJtoB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0NIQZBEKPYKxi58hkIJ3tLay0VvxLqbo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2K;->A07:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/2K;)V
    .locals 0

    .line 4967
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2K;->A02()V

    return-void
.end method


# virtual methods
.method public final A06(Landroid/content/BroadcastReceiver;)V
    .locals 11

    .line 4968
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    monitor-enter v9

    .line 4969
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 4970
    .local p1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v10, :cond_0

    .line 4971
    monitor-exit v9

    return-void

    .line 4972
    :cond_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v7, 0x1

    sub-int/2addr v8, v7

    .local v9, "i":I
    :goto_0
    if-ltz v8, :cond_5

    .line 4973
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/2J;

    .line 4974
    .local v10, "filter":Lcom/facebook/ads/redexgen/X/2J;
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/2J;->A01:Z

    .line 4975
    const/4 v5, 0x0

    .local v10, "j":I
    :goto_1
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/2J;->A03:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 4976
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/2J;->A03:Landroid/content/IntentFilter;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    .line 4977
    .local v8, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4978
    .local v7, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v3, :cond_3

    .line 4979
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    .local v8, "k":I
    :goto_2
    if-ltz v2, :cond_2

    .line 4980
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/2J;

    .line 4981
    .local v6, "rec":Lcom/facebook/ads/redexgen/X/2J;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2J;->A02:Landroid/content/BroadcastReceiver;

    if-ne v0, p1, :cond_1

    .line 4982
    iput-boolean v7, v1, Lcom/facebook/ads/redexgen/X/2J;->A01:Z

    .line 4983
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4984
    .end local v6    # "rec":Lcom/facebook/ads/redexgen/X/2J;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 4985
    .end local v8    # "k":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 4986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4987
    .end local v8
    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4988
    .end local v10    # "j":I
    .end local v10
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 4989
    .end local p1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v9    # "i":I
    :cond_5
    monitor-exit v9

    .line 4990
    return-void

    .line 4991
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final A07(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 7

    .line 4992
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    monitor-enter v5

    .line 4993
    :try_start_0
    new-instance v6, Lcom/facebook/ads/redexgen/X/2J;

    invoke-direct {v6, p2, p1}, Lcom/facebook/ads/redexgen/X/2J;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 4994
    .local p1, "entry":Lcom/facebook/ads/redexgen/X/2J;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4995
    .local p2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2K;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2K;->A07:[Ljava/lang/String;

    const-string v1, "VUgbAS9tMWxwcQERPXddBzk3HYKkkhXw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 4996
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4998
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4999
    const/4 v3, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 5000
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    .line 5001
    .local v0, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 5002
    .local v3, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v1, :cond_1

    .line 5003
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2K;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5005
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5006
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5007
    .end local p1    # "entry":Lcom/facebook/ads/redexgen/X/2J;
    .end local p2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v6    # "i":I
    :cond_2
    monitor-exit v5

    .line 5008
    return-void
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5009
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5010
    :catchall_0
    :try_start_2
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final A08(Landroid/content/Intent;)Z
    .locals 22

    .line 5011
    move-object/from16 v4, p0

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/2K;->A04:Ljava/util/HashMap;

    monitor-enter v2

    .line 5012
    :try_start_0
    move-object/from16 v6, p1

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 5013
    .local v15, "action":Ljava/lang/String;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2K;->A00:Landroid/content/Context;

    .line 5014
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5015
    invoke-virtual {v6, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    .line 5016
    .local p0, "type":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    .line 5017
    .local v10, "data":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 5018
    .local v9, "scheme":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v19

    .line 5019
    .local v18, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    :goto_0
    const/4 v13, 0x1

    .line 5020
    .local v0, "debug":Z
    :goto_1
    if-eqz v13, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x80

    const/16 v1, 0xf

    const/16 v0, 0x75

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e

    const/16 v1, 0x8

    const/16 v0, 0x3a

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x33

    const/16 v1, 0xb

    const/16 v0, 0x35

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5021
    :cond_1
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/2K;->A03:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 5022
    .local v8, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v7, :cond_11

    .line 5023
    if-eqz v13, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x46

    const/16 v1, 0xd

    const/16 v0, 0x28

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5024
    :cond_2
    const/4 v5, 0x0

    .line 5025
    .local v2, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v2    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v9, "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_e

    .line 5026
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/2J;

    .line 5027
    .local v0, "receiver":Lcom/facebook/ads/redexgen/X/2J;
    if-eqz v13, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x68

    const/16 v11, 0x18

    const/16 v0, 0x6a

    invoke-static {v12, v11, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/2J;->A03:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5028
    :cond_3
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/2J;->A00:Z

    if-eqz v0, :cond_4

    goto/16 :goto_5

    .line 5029
    :cond_4
    iget-object v14, v3, Lcom/facebook/ads/redexgen/X/2J;->A03:Landroid/content/IntentFilter;

    const/16 v11, 0x53

    const/16 v1, 0x15

    const/16 v0, 0x27

    invoke-static {v11, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v20

    .end local v0    # "receiver":Lcom/facebook/ads/redexgen/X/2J;
    .local v0, "receiver":Lcom/facebook/ads/redexgen/X/2J;
    move-object/from16 v21, v10

    .end local v0    # "receiver":Lcom/facebook/ads/redexgen/X/2J;
    .local p0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v13, "type":Ljava/lang/String;
    .end local v9    # "i":I
    .local v13, "i":I
    move-object/from16 v17, v9

    move-object/from16 v16, v10

    invoke-virtual/range {v14 .. v20}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 5030
    .local v2, "match":I
    if-ltz v1, :cond_7

    .line 5031
    if-eqz v13, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x18

    const/16 v11, 0x1b

    const/16 v0, 0x40

    invoke-static {v12, v11, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5032
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5033
    :cond_5
    if-nez v5, :cond_6

    .line 5034
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5035
    :cond_6
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5036
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/2J;->A00:Z

    goto :goto_6

    .line 5037
    :cond_7
    if-eqz v13, :cond_c

    .line 5038
    const/4 v0, -0x4

    if-eq v1, v0, :cond_b

    const/4 v0, -0x3

    if-eq v1, v0, :cond_a

    const/4 v0, -0x2

    if-eq v1, v0, :cond_9

    const/4 v0, -0x1

    if-eq v1, v0, :cond_8

    goto :goto_3

    .line 5039
    .end local v0
    :cond_8
    const/16 v3, 0xa1

    const/4 v1, 0x4

    const/4 v0, 0x3

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 5040
    .end local v0
    :cond_9
    const/16 v3, 0x9d

    const/4 v1, 0x4

    const/16 v0, 0x57

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 5041
    .end local v0
    :cond_a
    const/16 v3, 0x8f

    const/4 v1, 0x6

    const/16 v0, 0x66

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 5042
    .end local v0
    :cond_b
    const/16 v3, 0x95

    const/16 v1, 0x8

    const/16 v0, 0x12

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 5043
    :goto_3
    const/16 v3, 0xa5

    const/16 v1, 0xe

    const/16 v0, 0x11

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v11

    .line 5044
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x14

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_6

    .line 5045
    :goto_5
    if-eqz v13, :cond_d

    .line 5046
    move-object/from16 v21, v10

    .line 5047
    .end local p0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v9
    .restart local v13    # "i":I
    .restart local v13    # "i":I
    :cond_c
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, v21

    .end local v13    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_2

    .line 5048
    :cond_d
    move-object/from16 v21, v10

    goto :goto_6

    .line 5049
    .end local v13
    .restart local p0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v0
    .end local v9    # "i":I
    .local p0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v13    # "i":I
    :cond_e
    if-eqz v5, :cond_11

    .line 5050
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_f

    .line 5051
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/2J;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/2J;->A00:Z

    .line 5052
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 5053
    .end local v0    # "i":I
    :cond_f
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/2K;->A02:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2I;

    invoke-direct {v0, v6, v5}, Lcom/facebook/ads/redexgen/X/2I;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5054
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2K;->A01:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 5055
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2K;->A01:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5056
    :cond_10
    monitor-exit v2

    const/4 v0, 0x1

    return v0

    .line 5057
    .end local p0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v15    # "action":Ljava/lang/String;
    .end local v10    # "data":Landroid/net/Uri;
    .end local v18    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9
    .end local v0
    .end local v8    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_11
    monitor-exit v2

    .line 5058
    const/4 v0, 0x0

    return v0

    .line 5059
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
