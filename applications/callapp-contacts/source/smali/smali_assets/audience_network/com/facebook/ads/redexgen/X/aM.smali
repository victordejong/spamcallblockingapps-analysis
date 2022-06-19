.class public final Lcom/facebook/ads/redexgen/X/aM;
.super Lcom/facebook/ads/redexgen/X/48;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/48<",
        "Lcom/facebook/ads/redexgen/X/RA;",
        ">;"
    }
.end annotation


# static fields
.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/M9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/QE;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ot;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Landroid/util/SparseBooleanArray;

.field public final A08:Lcom/facebook/ads/redexgen/X/16;

.field public final A09:Lcom/facebook/ads/redexgen/X/7D;

.field public final A0A:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A0B:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0C:Lcom/facebook/ads/redexgen/X/cD;

.field public final A0D:Lcom/facebook/ads/redexgen/X/La;

.field public final A0E:Lcom/facebook/ads/redexgen/X/9v;

.field public final A0F:Lcom/facebook/ads/redexgen/X/IB;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aM;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/cD;Lcom/facebook/ads/redexgen/X/M9;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9v;Lcom/facebook/ads/redexgen/X/IB;)V
    .locals 1
    .param p9    # Lcom/facebook/ads/redexgen/X/IB;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ot;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/16;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Lcom/facebook/ads/redexgen/X/cD;",
            "Lcom/facebook/ads/redexgen/X/M9;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/9v;",
            "Lcom/facebook/ads/redexgen/X/IB;",
            ")V"
        }
    .end annotation

    .line 67236
    .local p3, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/48;-><init>()V

    .line 67237
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A07:Landroid/util/SparseBooleanArray;

    .line 67238
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aM;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67239
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/aM;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    .line 67240
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/aM;->A0C:Lcom/facebook/ads/redexgen/X/cD;

    .line 67241
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/cD;->A10()Lcom/facebook/ads/redexgen/X/7D;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A09:Lcom/facebook/ads/redexgen/X/7D;

    .line 67242
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/cD;->A19()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A04:Lcom/facebook/ads/redexgen/X/QE;

    .line 67243
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/cD;->A18()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A0D:Lcom/facebook/ads/redexgen/X/La;

    .line 67244
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/aM;->A03:Lcom/facebook/ads/redexgen/X/M9;

    .line 67245
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aM;->A08:Lcom/facebook/ads/redexgen/X/16;

    .line 67246
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aM;->A06:Ljava/util/List;

    .line 67247
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/aM;->A05:Ljava/lang/String;

    .line 67248
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/aM;->A0E:Lcom/facebook/ads/redexgen/X/9v;

    .line 67249
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/aM;->A0F:Lcom/facebook/ads/redexgen/X/IB;

    .line 67250
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RA;
    .locals 9

    .line 67251
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aM;->A03:Lcom/facebook/ads/redexgen/X/M9;

    if-eqz v4, :cond_1

    iget v3, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/aM;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/aM;->A0G:[Ljava/lang/String;

    const-string v1, "HBGrR4E5Ou8lGOrZM15HBBDd4CDBRH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Dws66no3otUyrKWRXf01RsEai20ZIn"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 67252
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/aM;
    .end local p1    # null:Landroid/view/ViewGroup;
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 67253
    :cond_2
    new-instance v1, Lcom/facebook/ads/redexgen/X/O0;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aM;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aM;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/aM;->A08:Lcom/facebook/ads/redexgen/X/16;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/aM;->A04:Lcom/facebook/ads/redexgen/X/QE;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/aM;->A0D:Lcom/facebook/ads/redexgen/X/La;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/O0;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A0F:Lcom/facebook/ads/redexgen/X/IB;

    .line 67254
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O0;->A0I(Lcom/facebook/ads/redexgen/X/IB;)Lcom/facebook/ads/redexgen/X/O0;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A0C:Lcom/facebook/ads/redexgen/X/cD;

    .line 67255
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O0;->A0G(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/O0;

    move-result-object v0

    .line 67256
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O0;->A0J()Lcom/facebook/ads/redexgen/X/O1;

    move-result-object v3

    .line 67257
    .local p0, "params":Lcom/facebook/ads/redexgen/X/O1;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aM;->A0C:Lcom/facebook/ads/redexgen/X/cD;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aM;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A0E:Lcom/facebook/ads/redexgen/X/9v;

    .line 67258
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nk;->A00(Lcom/facebook/ads/redexgen/X/O1;Lcom/facebook/ads/redexgen/X/cD;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9v;)Lcom/facebook/ads/redexgen/X/2l;

    move-result-object v2

    .line 67259
    .local p1, "cardLayout":Lcom/facebook/ads/redexgen/X/2l;
    new-instance v1, Lcom/facebook/ads/redexgen/X/RA;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aM;->A07:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aM;->A04:Lcom/facebook/ads/redexgen/X/QE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A06:Ljava/util/List;

    .line 67260
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/aM;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/RA;-><init>(Lcom/facebook/ads/redexgen/X/9o;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QE;ILcom/facebook/ads/redexgen/X/XJ;)V

    .line 67261
    return-object v1
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "V9PMqjfJwvT67ZYY54"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KoZhm2HVOxwdWjftAINQcNHkYZyOyrrP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1oETx6NwESVuh0koANzr27EeUl20v2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JzBcWsy5jAKTLTxYYehZ60pyLdP8SU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yKgplvdSiwxmZlK2YFEMAzZYc4XxSzpb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "X0kbEjSxeWmcBGftN2ECOwyfDlZVnKJa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Tg1eBciSulZI8G7Ss5ny454cnfyvXG1B"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XTdAnKcq2fXupzVpmV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aM;->A0G:[Ljava/lang/String;

    return-void
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/RA;I)V
    .locals 10

    .line 67262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A06:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ot;

    .line 67263
    .local p0, "cardInfo":Lcom/facebook/ads/redexgen/X/Ot;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A04:Lcom/facebook/ads/redexgen/X/QE;

    move-object v1, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0n(Lcom/facebook/ads/redexgen/X/QE;)V

    .line 67264
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aM;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aM;->A09:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/aM;->A0D:Lcom/facebook/ads/redexgen/X/La;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/aM;->A05:Ljava/lang/String;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/aM;->A02:I

    iget v9, p0, Lcom/facebook/ads/redexgen/X/aM;->A01:I

    invoke-virtual/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/RA;->A0m(Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/La;Ljava/lang/String;III)V

    .line 67265
    return-void
.end method


# virtual methods
.method public final bridge synthetic A07(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1

    .line 67266
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/aM;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    return-object v0
.end method

.method public final A0E()I
    .locals 1

    .line 67267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0F(Lcom/facebook/ads/redexgen/X/4c;I)V
    .locals 0

    .line 67268
    check-cast p1, Lcom/facebook/ads/redexgen/X/RA;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/aM;->A03(Lcom/facebook/ads/redexgen/X/RA;I)V

    return-void
.end method

.method public final A0G(III)V
    .locals 0

    .line 67269
    iput p1, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:I

    .line 67270
    iput p2, p0, Lcom/facebook/ads/redexgen/X/aM;->A02:I

    .line 67271
    iput p3, p0, Lcom/facebook/ads/redexgen/X/aM;->A01:I

    .line 67272
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/QE;)V
    .locals 0

    .line 67273
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aM;->A04:Lcom/facebook/ads/redexgen/X/QE;

    .line 67274
    return-void
.end method
