.class public final Lcom/facebook/ads/redexgen/X/8J;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseQueryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/8M;

.field public final A01:Lcom/facebook/ads/redexgen/X/Wl;

.field public final A02:Lcom/facebook/ads/redexgen/X/8N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/8N<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/9H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9H<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8J;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/8N;Lcom/facebook/ads/redexgen/X/9H;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wl;",
            "Lcom/facebook/ads/redexgen/X/8N<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/9H<",
            "TT;>;)V"
        }
    .end annotation

    .line 17722
    .local p0, "this":Lcom/facebook/ads/redexgen/X/8J;, "Lcom/facebook/ads/internal/database/AdDatabaseHelper$DatabaseQueryAsyncTask<TT;>;"
    .local p2, "query":Lcom/facebook/ads/redexgen/X/8N;, "Lcom/facebook/ads/internal/database/AdDatabaseQuery<TT;>;"
    .local p3, "callback":Lcom/facebook/ads/redexgen/X/9H;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<TT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17723
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8J;->A02:Lcom/facebook/ads/redexgen/X/8N;

    .line 17724
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/8J;->A03:Lcom/facebook/ads/redexgen/X/9H;

    .line 17725
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8J;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    .line 17726
    return-void
.end method

.method private final varargs A00([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    return-object v7

    :cond_0
    move-object v6, p0

    .line 17727
    .local p0, "this":Lcom/facebook/ads/redexgen/X/8J;, "Lcom/facebook/ads/internal/database/AdDatabaseHelper$DatabaseQueryAsyncTask<TT;>;"
    .local v0, "params":[Ljava/lang/Void;
    const/4 v5, 0x0

    .line 17728
    .local v0, "queryReturn":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/8J;->A02:Lcom/facebook/ads/redexgen/X/8N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8N;->A04()Ljava/lang/Object;

    move-result-object v5

    .line 17729
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/8J;->A02:Lcom/facebook/ads/redexgen/X/8N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8N;->A00()Lcom/facebook/ads/redexgen/X/8M;

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8M;

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17730
    .restart local v0    # "queryReturn":Ljava/lang/Object;, "TT;"
    .restart local v0    # "queryReturn":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v4

    .line 17731
    .local v7, "sqle":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/8J;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    .line 17732
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8J;->A01(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0k:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 17733
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 17734
    sget-object v0, Lcom/facebook/ads/redexgen/X/8M;->A08:Lcom/facebook/ads/redexgen/X/8M;

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8M;

    .line 17735
    .end local v7    # "sqle":Ljava/lang/Exception;
    :goto_0
    return-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/8J;, "Lcom/facebook/ads/internal/database/AdDatabaseHelper$DatabaseQueryAsyncTask<TT;>;"
    .end local v0    # "queryReturn":Ljava/lang/Object;, "TT;"
    .end local v0
    :catchall_0
    move-exception v0

    .end local v0
    .end local v0
    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v7
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8J;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x48

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8J;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x5t
        0x2t
        0x15t
        0x2t
        0x3t
        0x2t
        0x14t
        0x6t
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object v1, p0

    .line 17736
    .local p0, "this":Lcom/facebook/ads/redexgen/X/8J;, "Lcom/facebook/ads/internal/database/AdDatabaseHelper$DatabaseQueryAsyncTask<TT;>;"
    :try_start_0
    check-cast p1, [Ljava/lang/Void;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/8J;->A00([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/8J;, "Lcom/facebook/ads/internal/database/AdDatabaseHelper$DatabaseQueryAsyncTask<TT;>;"
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 17737
    .local p0, "this":Lcom/facebook/ads/redexgen/X/8J;, "Lcom/facebook/ads/internal/database/AdDatabaseHelper$DatabaseQueryAsyncTask<TT;>;"
    .local v0, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8M;

    if-nez v0, :cond_1

    .line 17738
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/8J;->A03:Lcom/facebook/ads/redexgen/X/9H;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9H;->A02(Ljava/lang/Object;)V

    goto :goto_0

    .line 17739
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/8J;, "Lcom/facebook/ads/internal/database/AdDatabaseHelper$DatabaseQueryAsyncTask<TT;>;"
    :cond_1
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/8J;->A03:Lcom/facebook/ads/redexgen/X/9H;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8M;->A02()I

    move-result v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/8J;->A00:Lcom/facebook/ads/redexgen/X/8M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8M;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9H;->A01(ILjava/lang/String;)V

    .line 17740
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
