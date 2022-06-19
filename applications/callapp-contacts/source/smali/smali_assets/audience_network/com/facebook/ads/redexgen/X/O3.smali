.class public final Lcom/facebook/ads/redexgen/X/O3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9m;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9m;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/O3;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9m;)V
    .locals 0

    .line 46141
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O3;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "c2PEJ6DOqpui9EPvmckbHNLd48C"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0LubsyKGJKKePfKATMceGef14XY86Ri5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "M6oVByKNfKe8LZIrCewzhyGONHgeYcNo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "g1oo9eCM7RcmOvTxZ1VejNMrbdbCR0G4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3al8rHdAj04D"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Lmo63BJo3ocNRJpk0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "u0Zxd4kfnWeayuGPbNnNq6ZbpiAglx3D"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JRUzdnx3lrNIQCskW6e2Avl8V"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/O3;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 46142
    .local p0, "this":Lcom/facebook/ads/redexgen/X/O3;
    .local v1, "v":Landroid/view/View;
    :try_start_0
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/O3;->A00:Lcom/facebook/ads/redexgen/X/9m;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9m;->A0H(Lcom/facebook/ads/redexgen/X/9m;Z)Z

    .line 46143
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/O3;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9m;->A0G(Lcom/facebook/ads/redexgen/X/9m;)V

    .line 46144
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/O3;
    .end local v1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/O3;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/O3;->A01:[Ljava/lang/String;

    const-string v1, "oQ6hKoRa6K50vxrlE5lU8mLQHveYoJVv"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "5HqmMGmqvKeUZ55y8iy1lLJbe1y4dd8I"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
