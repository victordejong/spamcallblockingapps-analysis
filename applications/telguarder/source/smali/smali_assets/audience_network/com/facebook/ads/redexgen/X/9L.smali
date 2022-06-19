.class public final Lcom/facebook/ads/redexgen/X/9L;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/WF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/9e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/8D;

.field public final A02:Lcom/facebook/ads/redexgen/X/9H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9H<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/9V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9V<",
            "Lcom/facebook/ads/redexgen/X/J9;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/J9;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9L;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9L;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/J9;Lcom/facebook/ads/redexgen/X/9H;Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/J9;",
            "Lcom/facebook/ads/redexgen/X/9H<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/9V<",
            "Lcom/facebook/ads/redexgen/X/J9;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/8D;",
            ")V"
        }
    .end annotation

    .line 19698
    .local p2, "callback":Lcom/facebook/ads/redexgen/X/9H;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<Ljava/lang/String;>;"
    .local p3, "database":Lcom/facebook/ads/redexgen/X/9V;, "Lcom/facebook/ads/internal/eventstorage/record/RecordDatabase<Lcom/facebook/ads/internal/logging/AdEvent;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19699
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9L;->A04:Lcom/facebook/ads/redexgen/X/J9;

    .line 19700
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9L;->A03:Lcom/facebook/ads/redexgen/X/9V;

    .line 19701
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9L;->A02:Lcom/facebook/ads/redexgen/X/9H;

    .line 19702
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9L;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 19703
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9L;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xc

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final varargs A01([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    return-object v7

    :cond_0
    move-object v4, p0

    .line 19704
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9L;
    .local v1, "voids":[Ljava/lang/Void;
    const/4 v6, 0x0

    .line 19705
    .local v0, "eventId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 19706
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9L;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9L;->A04:Lcom/facebook/ads/redexgen/X/J9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J9;->A06()Lcom/facebook/ads/redexgen/X/JF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JF;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A7p(Ljava/lang/String;)V

    .line 19707
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9L;->A04:Lcom/facebook/ads/redexgen/X/J9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J9;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19708
    return-object v7

    .line 19709
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19710
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    const/16 v1, 0xf

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9L;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9L;->A04:Lcom/facebook/ads/redexgen/X/J9;

    .line 19711
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J9;->A06()Lcom/facebook/ads/redexgen/X/JF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JF;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9L;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9L;->A04:Lcom/facebook/ads/redexgen/X/J9;

    .line 19712
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J9;->A09()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19713
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/9L;
    :cond_2
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/9L;->A03:Lcom/facebook/ads/redexgen/X/9V;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9L;->A04:Lcom/facebook/ads/redexgen/X/J9;

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/WF;->A09(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/J9;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->AEG([B)V

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9e; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19714
    .restart local v0    # "eventId":Ljava/lang/String;
    .restart local v1    # "voids":[Ljava/lang/Void;
    :catch_0
    move-exception v5

    .line 19715
    .local v7, "e":Lcom/facebook/ads/redexgen/X/9e;
    :try_start_1
    iput-object v5, v4, Lcom/facebook/ads/redexgen/X/9L;->A00:Lcom/facebook/ads/redexgen/X/9e;

    .line 19716
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9L;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 19717
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/16 v2, 0x2c

    const/16 v1, 0xf

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9L;->A00(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A25:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 19718
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 19719
    .end local v7    # "e":Lcom/facebook/ads/redexgen/X/9e;
    :goto_0
    return-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "eventId":Ljava/lang/String;
    .end local v1    # "voids":[Ljava/lang/Void;
    :catchall_0
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9L;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    .end local v0
    .end local v1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9L;->A06:[Ljava/lang/String;

    const-string v1, "5Cj0OJ8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Ky5U9GulnagLtx6bUSIovb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v7

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x3b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9L;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x14t
        0x59t
        0x6et
        0x6et
        0x73t
        0x6et
        0x3ct
        0x71t
        0x79t
        0x6ft
        0x6ft
        0x7dt
        0x7bt
        0x79t
        0x3ct
        0x7ft
        0x7dt
        0x72t
        0x72t
        0x73t
        0x68t
        0x3ct
        0x7et
        0x79t
        0x3ct
        0x72t
        0x69t
        0x70t
        0x70t
        0x63t
        0x40t
        0x48t
        0x48t
        0x46t
        0x41t
        0x48t
        0xft
        0x4at
        0x59t
        0x4at
        0x41t
        0x5bt
        0x15t
        0xft
        0x66t
        0x71t
        0x77t
        0x7bt
        0x66t
        0x70t
        0x4bt
        0x70t
        0x75t
        0x60t
        0x75t
        0x76t
        0x75t
        0x67t
        0x71t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cTsYj2yMjYrMVtfLZhg5tpsQXTmZ2L6v"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1ODeQdS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MjKdTP384bDgpJcXPHF9DBLza2zf9fmc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oENYqiQmID1ZgUGV3yv1Z3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OKDvpRlHiQKUXGPaoG3LAaepPD9JbMOL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "c3AKMwkn2feg5hl17zYlirXYtAM27ud3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7io5Jd82RhZ8d81sYCmUl0kRzVuA9q44"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fVqMVu7PLFCH74egqcN8hdP32P7TDTuP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9L;->A06:[Ljava/lang/String;

    return-void
.end method

.method private final A04(Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v6, p0

    .line 19720
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9L;
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9L;->A00:Lcom/facebook/ads/redexgen/X/9e;

    if-nez v0, :cond_1

    .line 19721
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9L;->A02:Lcom/facebook/ads/redexgen/X/9H;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9H;->A02(Ljava/lang/Object;)V

    goto :goto_0

    .line 19722
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/9L;
    :cond_1
    iget-object v5, v6, Lcom/facebook/ads/redexgen/X/9L;->A02:Lcom/facebook/ads/redexgen/X/9H;

    const/4 v4, 0x0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9L;->A00:Lcom/facebook/ads/redexgen/X/9e;

    .line 19723
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9e;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/16 v1, 0x1c

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9L;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/internal/util/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19724
    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/9H;->A01(ILjava/lang/String;)V

    .line 19725
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object v1, p0

    .line 19726
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9L;
    :try_start_0
    check-cast p1, [Ljava/lang/Void;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/9L;->A01([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/9L;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 19727
    .local p0, "this":Lcom/facebook/ads/redexgen/X/9L;
    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/9L;->A04(Ljava/lang/String;)V

    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/9L;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
