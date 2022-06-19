.class public final Lcom/facebook/ads/redexgen/X/Kr;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/Package;

.field public static final A03:Ljava/lang/String;

.field public static final A04:Ljava/lang/String;

.field public static final A05:Ljava/lang/String;

.field public static final A06:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            ">;"
        }
    .end annotation
.end field

.field public static final A07:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/Ky;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 41939
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kr;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kr;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A02:Ljava/lang/Package;

    .line 41940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A02:Ljava/lang/Package;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    const/16 v1, 0x16

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A04:Ljava/lang/String;

    .line 41941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A02:Ljava/lang/Package;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A03:Ljava/lang/String;

    .line 41942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A02:Ljava/lang/Package;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x13

    const/16 v1, 0x15

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A05:Ljava/lang/String;

    .line 41943
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 41944
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A06:Ljava/util/Set;

    .line 41945
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A07:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .line 41947
    invoke-virtual {p0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    .line 41948
    .local p0, "cloneIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 41950
    .local v3, "parcel":Landroid/os/Parcel;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 41951
    sget-object v1, Lcom/facebook/ads/redexgen/X/Kr;->A05:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 41952
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 41953
    return-object v3
.end method

.method public static A01(Landroid/content/Intent;Ljava/lang/ClassLoader;)Landroid/content/Intent;
    .locals 5

    .line 41954
    invoke-virtual {p0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v4

    .line 41955
    .local p0, "startIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41956
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 41957
    .local p1, "audienceNetworkActivityBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 41958
    .local v4, "parcel":Landroid/os/Parcel;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A05:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 41959
    .local v0, "savedInstanceStateByteArray":[B
    if-eqz v2, :cond_0

    .line 41960
    array-length v1, v2

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 41961
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41962
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    .line 41963
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 41964
    :cond_0
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 41965
    return-object v4
.end method

.method public static A02(Landroid/os/Bundle;Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .locals 5

    .line 41966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 41967
    .local p0, "parcel":Landroid/os/Parcel;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A04:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 41968
    .local p1, "savedInstanceStateByteArray":[B
    if-eqz v2, :cond_1

    .line 41969
    array-length v1, v2

    const/4 v0, 0x0

    invoke-virtual {v4, v2, v0, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 41970
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41971
    invoke-virtual {v4, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kr;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41972
    .local v4, "result":Landroid/os/Bundle;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kr;->A01:[Ljava/lang/String;

    const-string v1, "Zue8yRDoBrDWRSev"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 41973
    return-object v3

    .line 41974
    .end local v4    # "result":Landroid/os/Bundle;
    :cond_1
    const/16 v2, 0x3e

    const/16 v1, 0x1c

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A03(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 41975
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A03:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 41976
    .local p0, "adId":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 41977
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Wm;

    .line 41978
    .local p0, "adContext":Lcom/facebook/ads/redexgen/X/Wm;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41979
    return-object v1

    .line 41980
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    .locals 3

    .line 41981
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kr;->A05()Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41982
    .local p0, "adActivityIntent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Kr;->A03:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41983
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A06:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41984
    return-object v2
.end method

.method public static A05()Ljava/lang/Class;
    .locals 1

    .line 41985
    const-class v0, Lcom/facebook/ads/AudienceNetworkActivity;

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kr;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x59t
        0x36t
        0x33t
        0x39t
        0x20t
        0x28t
        0x36t
        0x33t
        0x28t
        0x38t
        0x35t
        0x3dt
        0x28t
        0x3et
        0x33t
        0x28t
        0x3ct
        0x32t
        0x2et
        0x39t
        0x56t
        0x53t
        0x59t
        0x40t
        0x48t
        0x58t
        0x45t
        0x5et
        0x50t
        0x5et
        0x59t
        0x56t
        0x5bt
        0x48t
        0x52t
        0x4ft
        0x43t
        0x45t
        0x56t
        0x44t
        0x15t
        0x7at
        0x7ft
        0x75t
        0x6ct
        0x64t
        0x68t
        0x7at
        0x6dt
        0x7et
        0x7ft
        0x64t
        0x68t
        0x6ft
        0x7at
        0x6ft
        0x7et
        0x64t
        0x7ft
        0x7at
        0x6ft
        0x7at
        0x4bt
        0x79t
        0x6et
        0x7dt
        0x7ct
        0x38t
        0x6bt
        0x6ct
        0x79t
        0x6ct
        0x7dt
        0x38t
        0x7at
        0x6dt
        0x76t
        0x7ct
        0x74t
        0x7dt
        0x38t
        0x71t
        0x6bt
        0x38t
        0x7dt
        0x75t
        0x68t
        0x6ct
        0x61t
        0x39t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WbJlBxxP9hhDyVkliYvNWFvleez5wFba"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Us5Q3ca4sjVLZknlXhQB6hWi1VD5Erza"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gJqO8U9bMVlcsLp5HSGrl2qXu5TMOPYV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "P57OBps6tL2979s4xCAUfWnFOcUQoKvX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CjMQtwUDrO8ZQ06PzRRzPVuypWFQdtNK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DynPiig1xYxCb14sB97Y7RAQimyT6aIC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zcq0zXyldopis2WSYxgyl16P5Uge3oHA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fUMP1AC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Kr;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A09(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .line 41986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 41987
    .local p0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 41988
    sget-object v1, Lcom/facebook/ads/redexgen/X/Kr;->A04:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 41989
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 41990
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V
    .locals 1

    .line 41991
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wm;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Kr;->A00(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41992
    return-void
.end method

.method public static A0B(Landroid/content/Intent;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 41993
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 41994
    .local p0, "intentUri":Landroid/net/Uri;
    const/4 p0, 0x0

    if-nez v0, :cond_0

    .line 41995
    return p0

    .line 41996
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 41997
    .local v0, "url":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kr;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kr;->A01:[Ljava/lang/String;

    const-string v1, "hOpA8yyYIRQLuX6WeWELRCriZfzSUGqk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41998
    .local v5, "prefix":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41999
    const/4 v0, 0x1

    return v0

    .line 42000
    :cond_3
    return p0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/Wm;Landroid/content/Intent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 42001
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kr;->A07:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ky;

    .line 42002
    .local p0, "externalActivityLauncher":Lcom/facebook/ads/redexgen/X/Ky;
    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0D(Lcom/facebook/ads/redexgen/X/Wm;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/Ky;)Z

    move-result v0

    return v0
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/Wm;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/Ky;)Z
    .locals 4
    .param p2    # Lcom/facebook/ads/redexgen/X/Ky;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 42003
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0W(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 42004
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0B(Landroid/content/Intent;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42005
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kr;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42006
    :cond_0
    move-object v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kr;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kr;->A01:[Ljava/lang/String;

    const-string v1, "jqmGLToeS8inmCxtBfGXr03CfYNSNKmj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    .line 42007
    .local p0, "startContext":Landroid/content/Context;
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kr;->A01:[Ljava/lang/String;

    const-string v1, "ctsTbgZeY1xezNeU5XhATjOgO8HutIFY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wm;->A0A()Landroid/app/Activity;

    move-result-object v0

    .line 42008
    .local p1, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_4

    .line 42009
    move-object v3, v0

    .line 42010
    :goto_1
    if-eqz p2, :cond_3

    .line 42011
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0Y(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 42012
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0B(Landroid/content/Intent;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42013
    :cond_3
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42014
    const/4 v0, 0x1

    return v0

    .line 42015
    :cond_4
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 42016
    :cond_5
    invoke-interface {p2, v3, p1}, Lcom/facebook/ads/redexgen/X/Ky;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
