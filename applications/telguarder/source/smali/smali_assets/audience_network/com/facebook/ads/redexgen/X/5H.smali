.class public final Lcom/facebook/ads/redexgen/X/5H;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeBannerImageLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/facebook/ads/redexgen/X/5J;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/5I;

.field public final A01:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5H;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5H;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/5I;Z)V
    .locals 0

    .line 13383
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13384
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5H;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 13385
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5H;->A00:Lcom/facebook/ads/redexgen/X/5I;

    .line 13386
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/5H;->A02:Z

    .line 13387
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/5I;ZLcom/facebook/ads/redexgen/X/aG;)V
    .locals 0

    .line 13388
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/5H;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/5I;Z)V

    return-void
.end method

.method private final varargs A00([Lcom/facebook/ads/redexgen/X/5J;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    return-object v8

    :cond_0
    move-object v6, p0

    .line 13389
    .local p0, "this":Lcom/facebook/ads/redexgen/X/5H;
    .local v7, "params":[Lcom/facebook/ads/redexgen/X/5J;
    if-eqz p1, :cond_3

    :try_start_0
    array-length v1, p1

    const/4 v0, 0x1

    if-ge v1, v0, :cond_1

    goto :goto_1

    .line 13390
    :cond_1
    const/4 v1, 0x0

    aget-object v0, p1, v1

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/5J;->A01:Ljava/lang/String;

    .line 13391
    .local v8, "url":Ljava/lang/String;
    aget-object v0, p1, v1

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/5J;->A00:Ljava/lang/String;

    .line 13392
    .local v0, "mediationData":Ljava/lang/String;
    const/4 v5, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13393
    :try_start_1
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/5H;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v1, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 13394
    const/4 v0, -0x1

    invoke-virtual {v1, v2, v0, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0M(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13395
    :catchall_0
    move-exception v4

    .line 13396
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/5H;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 13397
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5H;->A01(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A1F:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 13398
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 13399
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v5, :cond_2

    .line 13400
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/5H;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/5H;->A02:Z

    invoke-static {v1, v5, v0, v7}, Lcom/facebook/ads/redexgen/X/T6;->A05(Lcom/facebook/ads/redexgen/X/Wm;Landroid/graphics/Bitmap;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 13401
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/5H;
    :cond_2
    return-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "mediationData":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    .end local v6
    .end local v7    # "params":[Lcom/facebook/ads/redexgen/X/5J;
    :catchall_1
    move-exception v0

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v8

    .line 13402
    .restart local p0    # "this":Lcom/facebook/ads/redexgen/X/5H;
    .restart local v7    # "params":[Lcom/facebook/ads/redexgen/X/5J;
    :cond_3
    :goto_1
    return-object v8
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/5H;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v3, v0, 0x24

    sget-object v2, Lcom/facebook/ads/redexgen/X/5H;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/5H;->A04:[Ljava/lang/String;

    const-string v1, "XzO4PGfz9rpTObXE3Krp6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5H;->A03:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x47t
        0x45t
        0x4et
        0x45t
        0x52t
        0x49t
        0x43t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Er5x4Nf8UA9tVLePD2EX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DtYF9X90t5u"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "I941X6fzqWLmgCmjxes"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iBgQ7OI2DFUGAw4NUel9vSUdaaiAzSqO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QcmiodlDN7oY3kgnmckrDpvdiERsjn9V"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "b"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KLyCCmbDECCjA8c7XM6gY8wQDdZdMwfW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5H;->A04:[Ljava/lang/String;

    return-void
.end method

.method private final A04(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 13403
    .local p0, "this":Lcom/facebook/ads/redexgen/X/5H;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/5H;->A00:Lcom/facebook/ads/redexgen/X/5I;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/5I;->AAJ(Landroid/graphics/drawable/Drawable;)V

    .line 13404
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/5H;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object v1, p0

    .line 13405
    .local p0, "this":Lcom/facebook/ads/redexgen/X/5H;
    :try_start_0
    check-cast p1, [Lcom/facebook/ads/redexgen/X/5J;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/5H;->A00([Lcom/facebook/ads/redexgen/X/5J;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/5H;
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

    .line 13406
    .local p0, "this":Lcom/facebook/ads/redexgen/X/5H;
    :try_start_0
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/5H;->A04(Landroid/graphics/drawable/Drawable;)V

    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/5H;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
