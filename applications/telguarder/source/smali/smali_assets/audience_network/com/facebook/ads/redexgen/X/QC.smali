.class public final Lcom/facebook/ads/redexgen/X/QC;
.super Lcom/facebook/ads/redexgen/X/Q8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PZ;->A08(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Lc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Oo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JC;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Lc;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Oo;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/PZ;

.field public final synthetic A04:Ljava/lang/String;

.field public final synthetic A05:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PZ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Oo;Lcom/facebook/ads/redexgen/X/JC;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 0

    .line 49153
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QC;->A03:Lcom/facebook/ads/redexgen/X/PZ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/QC;->A04:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/Oo;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/QC;->A00:Lcom/facebook/ads/redexgen/X/JC;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/QC;->A05:Ljava/util/Map;

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/QC;->A01:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q8;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 4

    .line 49154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A03:Lcom/facebook/ads/redexgen/X/PZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PZ;->A04(Lcom/facebook/ads/redexgen/X/PZ;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A04:Ljava/lang/String;

    .line 49155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A03:Lcom/facebook/ads/redexgen/X/PZ;

    .line 49156
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PZ;->A03(Lcom/facebook/ads/redexgen/X/PZ;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/Oo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oo;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49157
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/QC;->A00:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/QC;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A05:Ljava/util/Map;

    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A03:Lcom/facebook/ads/redexgen/X/PZ;

    .line 49158
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PZ;->A05(Lcom/facebook/ads/redexgen/X/PZ;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A01:Lcom/facebook/ads/redexgen/X/Lc;

    .line 49159
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 49160
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v0

    .line 49161
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8c(Ljava/lang/String;Ljava/util/Map;)V

    .line 49162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A03:Lcom/facebook/ads/redexgen/X/PZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PZ;->A03(Lcom/facebook/ads/redexgen/X/PZ;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/Oo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oo;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 49163
    :cond_0
    return-void
.end method
