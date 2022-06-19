.class public final Lcom/facebook/ads/redexgen/X/Rz;
.super Landroid/os/AsyncTask;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/8B;"
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/NW;

.field public A03:Z

.field public final A04:I

.field public final A05:I

.field public final A06:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/NU;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public final A09:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rz;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rz;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;IILcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1

    .line 51056
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51057
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A03:Z

    .line 51058
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:I

    .line 51059
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:I

    .line 51060
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A07:Ljava/lang/ref/WeakReference;

    .line 51061
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A06:Ljava/lang/ref/WeakReference;

    .line 51062
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A08:Ljava/lang/ref/WeakReference;

    .line 51063
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A09:Ljava/lang/ref/WeakReference;

    .line 51064
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Rz;->A04:I

    .line 51065
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:I

    .line 51066
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 2

    .line 51067
    const/16 v1, 0xc

    const/16 v0, 0x10

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/view/ViewGroup;IILcom/facebook/ads/redexgen/X/Wm;)V

    .line 51068
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 3

    .line 51069
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51070
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Rz;->A03:Z

    .line 51071
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:I

    .line 51072
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:I

    .line 51073
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A07:Ljava/lang/ref/WeakReference;

    .line 51074
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A06:Ljava/lang/ref/WeakReference;

    .line 51075
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A08:Ljava/lang/ref/WeakReference;

    .line 51076
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A09:Ljava/lang/ref/WeakReference;

    .line 51077
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Rz;->A04:I

    .line 51078
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:I

    .line 51079
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NU;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1

    .line 51080
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51081
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A03:Z

    .line 51082
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:I

    .line 51083
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:I

    .line 51084
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A07:Ljava/lang/ref/WeakReference;

    .line 51085
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A06:Ljava/lang/ref/WeakReference;

    .line 51086
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A08:Ljava/lang/ref/WeakReference;

    .line 51087
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A09:Ljava/lang/ref/WeakReference;

    .line 51088
    const/16 v0, 0xc

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A04:I

    .line 51089
    const/16 v0, 0x10

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:I

    .line 51090
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rz;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x54

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rz;->A0A:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x2dt
        0x2ft
        0x24t
        0x2ft
        0x38t
        0x23t
        0x29t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tk2ciTRcvMIsX7PNNAsbqXfz4cjsZNd3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5z01THRYCfHu8Ay0wH5meUoLhFHMZyns"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VYXg8wObxMc7BeMRrzz5UEer"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1KBjMNFbEleLBxdQS2J3kw1LUfJ9GnIf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "PvEnCL5gthOso5MBRjJGXOGrZMhqPY73"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dw8jODS3DySi5ymezTFU6bMU1A3tjNXQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rz;->A0B:[Ljava/lang/String;

    return-void
.end method

.method private final A03([Landroid/graphics/Bitmap;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 51091
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Rz;
    .local v1, "result":[Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Rz;->A08:Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    .line 51092
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Rz;->A08:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 51093
    .local p1, "imageView":Landroid/widget/ImageView;
    aget-object v0, p1, v6

    if-eqz v0, :cond_1

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Rz;->A03:Z

    if-nez v0, :cond_1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Rz;->A04:I

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 51094
    aget-object v0, p1, v6

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51095
    return-void

    .line 51096
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Rz;
    :cond_1
    if-eqz v1, :cond_2

    .line 51097
    aget-object v0, p1, v5

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51098
    .end local p1    # "imageView":Landroid/widget/ImageView;
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Rz;->A06:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 51099
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Rz;->A06:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/NU;

    .line 51100
    .local p1, "blurBorderView":Lcom/facebook/ads/redexgen/X/NU;
    if-eqz v2, :cond_3

    .line 51101
    aget-object v1, p1, v5

    aget-object v0, p1, v6

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NU;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 51102
    .end local p1    # "blurBorderView":Lcom/facebook/ads/redexgen/X/NU;
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Rz;->A09:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Rz;->A09:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    aget-object v0, p1, v6

    if-eqz v0, :cond_4

    .line 51103
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Rz;->A09:Ljava/lang/ref/WeakReference;

    .line 51104
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Rz;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget-object v1, p1, v6

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 51105
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 51106
    :cond_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Rz;->A02:Lcom/facebook/ads/redexgen/X/NW;

    if-eqz v0, :cond_6

    .line 51107
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Rz;->A02:Lcom/facebook/ads/redexgen/X/NW;

    aget-object v0, p1, v5

    if-eqz v0, :cond_5

    const/4 v5, 0x1

    :cond_5
    invoke-interface {v1, v5}, Lcom/facebook/ads/redexgen/X/NW;->AAI(Z)V

    .line 51108
    :cond_6
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "result":[Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final varargs A04([Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .locals 12

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    return-object v11

    :cond_0
    move-object v6, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rz;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_5

    .line 51109
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Rz;
    .local v4, "urls":[Ljava/lang/String;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rz;->A0B:[Ljava/lang/String;

    const-string v1, "Jzd8uX0XYQJZtrGuhrAJ2cBOXObB1Sdn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v10, 0x0

    :try_start_0
    aget-object v4, p1, v10

    .line 51110
    .local v11, "url":Ljava/lang/String;
    const/4 v7, 0x0

    .line 51111
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 51112
    .local v1, "blurBitmap":Landroid/graphics/Bitmap;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Rz;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Wm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51113
    .local v0, "context":Lcom/facebook/ads/redexgen/X/Wm;
    const/4 v9, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rz;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rz;->A0B:[Ljava/lang/String;

    const-string v1, "bv0UYUwFwYp94NQ105UqaFrunwxSHAuK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v8, 0x2

    if-nez v3, :cond_1

    .line 51114
    :try_start_1
    new-array v0, v8, [Landroid/graphics/Bitmap;

    aput-object v7, v0, v10

    aput-object v5, v0, v9

    return-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51115
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Rz;
    :cond_1
    :try_start_2
    new-instance v2, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iget v1, v6, Lcom/facebook/ads/redexgen/X/Rz;->A00:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Rz;->A01:I

    invoke-virtual {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0M(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 51116
    if-eqz v7, :cond_2

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Rz;->A03:Z

    if-nez v0, :cond_2

    .line 51117
    iget v1, v6, Lcom/facebook/ads/redexgen/X/Rz;->A04:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Rz;->A05:I

    invoke-static {v3, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Wm;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51118
    :catchall_0
    move-exception v4

    .line 51119
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A00(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A1F:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 51120
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 51121
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    new-array v0, v8, [Landroid/graphics/Bitmap;

    aput-object v7, v0, v10

    aput-object v5, v0, v9

    return-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51122
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51123
    .end local v11    # "url":Ljava/lang/String;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1
    .end local v0    # "context":Lcom/facebook/ads/redexgen/X/Wm;
    .end local v4    # "urls":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rz;->A0B:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rz;->A0B:[Ljava/lang/String;

    const-string v1, "caPrFgLZt2WaPlUZLvOtKYt7S4BN2jGU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v11

    :cond_4
    return-object v11

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A05()Lcom/facebook/ads/redexgen/X/Rz;
    .locals 1

    .line 51124
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:I

    .line 51125
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:I

    .line 51126
    return-object p0
.end method

.method public final A06(II)Lcom/facebook/ads/redexgen/X/Rz;
    .locals 0

    .line 51127
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:I

    .line 51128
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:I

    .line 51129
    return-object p0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/NW;)Lcom/facebook/ads/redexgen/X/Rz;
    .locals 0

    .line 51130
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A02:Lcom/facebook/ads/redexgen/X/NW;

    .line 51131
    return-object p0
.end method

.method public final A08(Ljava/lang/String;)V
    .locals 3

    .line 51132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 51133
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A02:Lcom/facebook/ads/redexgen/X/NW;

    if-eqz v0, :cond_0

    .line 51134
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/NW;->AAI(Z)V

    .line 51135
    :cond_0
    return-void

    .line 51136
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lo;->A06:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51137
    return-void
.end method

.method public final A5U()Lcom/facebook/ads/redexgen/X/Wm;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Wm;

    return-object v0
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object v1, p0

    .line 51139
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Rz;
    :try_start_0
    check-cast p1, [Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/Rz;->A04([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Rz;
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

    .line 51140
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Rz;
    :try_start_0
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/Rz;->A03([Landroid/graphics/Bitmap;)V

    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Rz;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
