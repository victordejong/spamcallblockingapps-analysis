.class public final Lcom/facebook/ads/redexgen/X/S8;
.super Lcom/facebook/ads/redexgen/X/48;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/48<",
        "Lcom/facebook/ads/redexgen/X/R6;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/M7;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/Q9;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Oo;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Landroid/util/SparseBooleanArray;

.field public final A08:Lcom/facebook/ads/redexgen/X/16;

.field public final A09:Lcom/facebook/ads/redexgen/X/7D;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0B:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0C:Lcom/facebook/ads/redexgen/X/T6;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Lc;

.field public final A0E:Lcom/facebook/ads/redexgen/X/9v;

.field public final A0F:Lcom/facebook/ads/redexgen/X/I6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/T6;Lcom/facebook/ads/redexgen/X/M7;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9v;Lcom/facebook/ads/redexgen/X/I6;)V
    .locals 1
    .param p9    # Lcom/facebook/ads/redexgen/X/I6;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Oo;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/16;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Lcom/facebook/ads/redexgen/X/T6;",
            "Lcom/facebook/ads/redexgen/X/M7;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/9v;",
            "Lcom/facebook/ads/redexgen/X/I6;",
            ")V"
        }
    .end annotation

    .line 51275
    .local p3, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/48;-><init>()V

    .line 51276
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A07:Landroid/util/SparseBooleanArray;

    .line 51277
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S8;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51278
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/S8;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    .line 51279
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/S8;->A0C:Lcom/facebook/ads/redexgen/X/T6;

    .line 51280
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/T6;->A10()Lcom/facebook/ads/redexgen/X/7D;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A09:Lcom/facebook/ads/redexgen/X/7D;

    .line 51281
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/T6;->A19()Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A04:Lcom/facebook/ads/redexgen/X/Q9;

    .line 51282
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/T6;->A18()Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A0D:Lcom/facebook/ads/redexgen/X/Lc;

    .line 51283
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/S8;->A03:Lcom/facebook/ads/redexgen/X/M7;

    .line 51284
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/S8;->A08:Lcom/facebook/ads/redexgen/X/16;

    .line 51285
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/S8;->A06:Ljava/util/List;

    .line 51286
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/S8;->A05:Ljava/lang/String;

    .line 51287
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/S8;->A0E:Lcom/facebook/ads/redexgen/X/9v;

    .line 51288
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/S8;->A0F:Lcom/facebook/ads/redexgen/X/I6;

    .line 51289
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/R6;
    .locals 9

    .line 51290
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/S8;->A03:Lcom/facebook/ads/redexgen/X/M7;

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A00:I

    if-nez v0, :cond_1

    .line 51291
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/S8;
    .end local p1    # null:Landroid/view/ViewGroup;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 51292
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nv;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/S8;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/S8;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/S8;->A08:Lcom/facebook/ads/redexgen/X/16;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/S8;->A04:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/S8;->A0D:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Nv;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A0F:Lcom/facebook/ads/redexgen/X/I6;

    .line 51293
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nv;->A0I(Lcom/facebook/ads/redexgen/X/I6;)Lcom/facebook/ads/redexgen/X/Nv;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A0C:Lcom/facebook/ads/redexgen/X/T6;

    .line 51294
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nv;->A0G(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Nv;

    move-result-object v0

    .line 51295
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nv;->A0J()Lcom/facebook/ads/redexgen/X/Nw;

    move-result-object v3

    .line 51296
    .local p0, "params":Lcom/facebook/ads/redexgen/X/Nw;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/S8;->A0C:Lcom/facebook/ads/redexgen/X/T6;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S8;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A0E:Lcom/facebook/ads/redexgen/X/9v;

    .line 51297
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A00(Lcom/facebook/ads/redexgen/X/Nw;Lcom/facebook/ads/redexgen/X/T6;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9v;)Lcom/facebook/ads/redexgen/X/2l;

    move-result-object v2

    .line 51298
    .local p1, "cardLayout":Lcom/facebook/ads/redexgen/X/2l;
    new-instance v1, Lcom/facebook/ads/redexgen/X/R6;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/S8;->A07:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/S8;->A04:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A06:Ljava/util/List;

    .line 51299
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/S8;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/R6;-><init>(Lcom/facebook/ads/redexgen/X/9o;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/Q9;ILcom/facebook/ads/redexgen/X/Wm;)V

    .line 51300
    return-object v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/R6;I)V
    .locals 10

    .line 51301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A06:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Oo;

    .line 51302
    .local p0, "cardInfo":Lcom/facebook/ads/redexgen/X/Oo;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A04:Lcom/facebook/ads/redexgen/X/Q9;

    move-object v1, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/R6;->A0n(Lcom/facebook/ads/redexgen/X/Q9;)V

    .line 51303
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/S8;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/S8;->A09:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/S8;->A0D:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/S8;->A05:Ljava/lang/String;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/S8;->A00:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/S8;->A02:I

    iget v9, p0, Lcom/facebook/ads/redexgen/X/S8;->A01:I

    invoke-virtual/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/R6;->A0m(Lcom/facebook/ads/redexgen/X/Oo;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/Lc;Ljava/lang/String;III)V

    .line 51304
    return-void
.end method


# virtual methods
.method public final bridge synthetic A07(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1

    .line 51305
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/S8;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/R6;

    move-result-object v0

    return-object v0
.end method

.method public final A0E()I
    .locals 1

    .line 51306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0F(Lcom/facebook/ads/redexgen/X/4c;I)V
    .locals 0

    .line 51307
    check-cast p1, Lcom/facebook/ads/redexgen/X/R6;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/S8;->A02(Lcom/facebook/ads/redexgen/X/R6;I)V

    return-void
.end method

.method public final A0G(III)V
    .locals 0

    .line 51308
    iput p1, p0, Lcom/facebook/ads/redexgen/X/S8;->A00:I

    .line 51309
    iput p2, p0, Lcom/facebook/ads/redexgen/X/S8;->A02:I

    .line 51310
    iput p3, p0, Lcom/facebook/ads/redexgen/X/S8;->A01:I

    .line 51311
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/Q9;)V
    .locals 0

    .line 51312
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S8;->A04:Lcom/facebook/ads/redexgen/X/Q9;

    .line 51313
    return-void
.end method
