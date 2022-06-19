.class public final Lcom/facebook/ads/redexgen/X/XW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8Q;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/content/Context;

.field public A01:Lcom/facebook/ads/redexgen/X/8P;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XW;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XW;->A03()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 57935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57936
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57937
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XW;->A00:Landroid/content/Context;

    .line 57938
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XW;->A00()Lcom/facebook/ads/redexgen/X/8P;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A01:Lcom/facebook/ads/redexgen/X/8P;

    .line 57939
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/8P;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 57940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A00:Landroid/content/Context;

    .line 57941
    invoke-static {v0}, Lcom/facebook/ads/internal/settings/AdSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v2, 0x5f

    const/16 v1, 0x10

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XW;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57942
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8P;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/8P;

    move-result-object v0

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/XW;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7e

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
    .locals 7

    .line 57943
    sget-object v1, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sDataProcessingOptionsUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57944
    return-void

    .line 57945
    :cond_0
    sget-object v6, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    monitor-enter v6

    .line 57946
    :try_start_0
    sget-object v3, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const/16 v2, 0x23

    const/16 v1, 0x1b

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XW;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 57947
    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 57948
    .local v1, "options":[Ljava/lang/String;
    sget-object v3, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XW;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 57949
    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 57950
    .local v0, "country":Ljava/lang/Integer;
    sget-object v3, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const/16 v2, 0x3e

    const/16 v1, 0x21

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XW;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 57951
    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 57952
    .local v0, "state":Ljava/lang/Integer;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57953
    invoke-virtual {p0, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/XW;->A05([Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 57954
    return-void

    .line 57955
    .end local v1    # "options":[Ljava/lang/String;
    .end local v0    # "state":Ljava/lang/Integer;
    .end local v0
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x6f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XW;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x6bt
        0x6et
        0x7bt
        0x6et
        0x70t
        0x7ft
        0x7dt
        0x60t
        0x6ct
        0x6at
        0x7ct
        0x7ct
        0x66t
        0x61t
        0x68t
        0x70t
        0x60t
        0x7ft
        0x7bt
        0x66t
        0x60t
        0x61t
        0x7ct
        0x70t
        0x6ct
        0x60t
        0x7at
        0x61t
        0x7bt
        0x7dt
        0x76t
        0x70t
        0x64t
        0x6at
        0x76t
        0x1t
        0x4t
        0x11t
        0x4t
        0x1at
        0x15t
        0x17t
        0xat
        0x6t
        0x0t
        0x16t
        0x16t
        0xct
        0xbt
        0x2t
        0x1at
        0xat
        0x15t
        0x11t
        0xct
        0xat
        0xbt
        0x16t
        0x1at
        0xet
        0x0t
        0x1ct
        0x6at
        0x6ft
        0x7at
        0x6ft
        0x71t
        0x7et
        0x7ct
        0x61t
        0x6dt
        0x6bt
        0x7dt
        0x7dt
        0x67t
        0x60t
        0x69t
        0x71t
        0x61t
        0x7et
        0x7at
        0x67t
        0x61t
        0x60t
        0x7dt
        0x71t
        0x7dt
        0x7at
        0x6ft
        0x7at
        0x6bt
        0x71t
        0x65t
        0x6bt
        0x77t
        0xet
        0x1at
        0x5t
        0x15t
        0x19t
        0xft
        0x1et
        0x1et
        0x3t
        0x4t
        0xdt
        0x19t
        0x15t
        0x1t
        0xft
        0x13t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "D3PJ2GNcgNGI4MtKfCaHjqEOfdHoPcVQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EJL0aGmI3i0Imoz4UWgpTxwTxGm9WRxT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tfWCUNw0WGkvc5ldnWfg2BDK3aY0ceq2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VYnzwe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FWw4Dif8pFGferaZg4Cc6MDYh6zRU5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BYQArfMrHiqwTG3fAjpcYjBOCFZN2nO4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZJiZak5asVL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "k4pPkd4ODWsyAa7ylPFb6IMORyuDH4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XW;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A05([Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 5
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57956
    new-instance v1, Lcom/facebook/ads/redexgen/X/8P;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8P;-><init>([Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 57957
    .local p0, "newSettings":Lcom/facebook/ads/redexgen/X/8P;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A01:Lcom/facebook/ads/redexgen/X/8P;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8P;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57958
    return-void

    .line 57959
    :cond_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/XW;->A01:Lcom/facebook/ads/redexgen/X/8P;

    .line 57960
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XW;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A00:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/settings/AdSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/XW;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57962
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/XW;->A04:[Ljava/lang/String;

    const-string v1, "txsFPtaRD11LyA3dzoyK5U0Vbdrctz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "NLpqiEYsaOJ6LGl2A1qehjxsg53G43"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A01:Lcom/facebook/ads/redexgen/X/8P;

    .line 57963
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8P;->A08()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5f

    const/16 v1, 0x10

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XW;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57964
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57965
    return-void
.end method

.method public final A6C()Lcom/facebook/ads/redexgen/X/8P;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 57966
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XW;->A02()V

    .line 57967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A01:Lcom/facebook/ads/redexgen/X/8P;

    return-object v0
.end method

.method public final A8A()Z
    .locals 4

    .line 57968
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XW;->A02()V

    .line 57969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A01:Lcom/facebook/ads/redexgen/X/8P;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 57970
    return v3

    .line 57971
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A00:Landroid/content/Context;

    .line 57972
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0W(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 57973
    .local p0, "restrictedCombinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A01:Lcom/facebook/ads/redexgen/X/8P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8P;->A08()Ljava/lang/String;

    move-result-object v2

    .line 57974
    .local v3, "identifier":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57975
    .local v1, "restrictedCombination":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57976
    const/4 v0, 0x1

    return v0

    .line 57977
    :cond_2
    return v3
.end method

.method public final ADw()Z
    .locals 2

    .line 57978
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XW;->A02()V

    .line 57979
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XW;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method
