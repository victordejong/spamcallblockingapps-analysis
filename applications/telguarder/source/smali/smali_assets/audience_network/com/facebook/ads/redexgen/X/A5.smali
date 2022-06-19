.class public final Lcom/facebook/ads/redexgen/X/A5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/DW;->A0b(Lcom/facebook/ads/redexgen/X/AW;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/DW;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/AW;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/A5;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DW;Lcom/facebook/ads/redexgen/X/AW;)V
    .locals 0

    .line 20815
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/A5;->A00:Lcom/facebook/ads/redexgen/X/DW;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/A5;->A01:Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/A5;->A02:[B

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

    const/16 v0, 0x4c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/A5;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x51t
        0x6ct
        0x7bt
        0x44t
        0x78t
        0x75t
        0x6dt
        0x71t
        0x66t
        0x5dt
        0x79t
        0x64t
        0x78t
        0x5dt
        0x7at
        0x60t
        0x71t
        0x66t
        0x7at
        0x75t
        0x78t
        0x52t
        0x69t
        0x62t
        0x7ft
        0x77t
        0x62t
        0x64t
        0x73t
        0x62t
        0x63t
        0x27t
        0x62t
        0x75t
        0x75t
        0x68t
        0x75t
        0x27t
        0x63t
        0x62t
        0x6bt
        0x6et
        0x71t
        0x62t
        0x75t
        0x6et
        0x69t
        0x60t
        0x27t
        0x6at
        0x62t
        0x74t
        0x74t
        0x66t
        0x60t
        0x62t
        0x27t
        0x68t
        0x69t
        0x27t
        0x62t
        0x7ft
        0x73t
        0x62t
        0x75t
        0x69t
        0x66t
        0x6bt
        0x27t
        0x73t
        0x6ft
        0x75t
        0x62t
        0x66t
        0x63t
        0x29t
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v5, p0

    .line 20816
    .local p0, "this":Lcom/facebook/ads/redexgen/X/A5;
    :try_start_0
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/A5;->A00:Lcom/facebook/ads/redexgen/X/DW;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/A5;->A01:Lcom/facebook/ads/redexgen/X/AW;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0V(Lcom/facebook/ads/redexgen/X/DW;Lcom/facebook/ads/redexgen/X/AW;)V

    .line 20817
    return-void
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/A0; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20818
    :catch_0
    move-exception v4

    .line 20819
    .local v0, "e":Lcom/facebook/ads/redexgen/X/A0;
    :try_start_1
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/A5;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x15

    const/16 v1, 0x37

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/A5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20820
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20821
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/A5;
    :catchall_0
    move-exception v0

    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/A0;
    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
