.class public final Lcom/facebook/ads/redexgen/X/MB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/JK;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/MB;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)V
    .locals 0

    .line 43848
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MB;->A00:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Z2hbS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Ic9Plg2RHJALgAmeO078aNsKQGOal"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "b0P4J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qPaw7oHv0CzCeGcF5yFKpd54yMlUwCSF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7gZAPHVUavlnb441EbFGztdAJQMZxuOt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Mm2iJyxsEvC3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "o6m8JBk94F2OCejIYcL1MXv5hOBXGoqA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4FWTxMbWeUMvWQb2hMO2cIzUW3drHp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/MB;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 43849
    .local p0, "this":Lcom/facebook/ads/redexgen/X/MB;
    .local v4, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/MB;->A00:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)Lcom/facebook/ads/redexgen/X/M5;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/MB;->A00:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)Lcom/facebook/ads/redexgen/X/MR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MR;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43850
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/MB;->A00:Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)Lcom/facebook/ads/redexgen/X/M5;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/M5;->A9j()V

    .line 43851
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/MB;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "v":Landroid/view/View;
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/MB;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/MB;->A01:[Ljava/lang/String;

    const-string v1, "5QsO86P0olwWLm0uuSyeI2U4VEnOIWE5"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
