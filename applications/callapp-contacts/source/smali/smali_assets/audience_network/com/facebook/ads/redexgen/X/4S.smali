.class public final Lcom/facebook/ads/redexgen/X/4S;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/4R;

.field public A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            ">;"
        }
    .end annotation
.end field

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/4a;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A08:Lcom/facebook/ads/redexgen/X/Eq;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 1

    .line 11024
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11025
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    .line 11026
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    .line 11027
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    .line 11028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    .line 11029
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A07:Ljava/util/List;

    .line 11030
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A03:I

    .line 11031
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:I

    return-void
.end method

.method private final A00(IZ)Landroid/view/View;
    .locals 2

    .line 11032
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/4S;->A0J(IZJ)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    return-object v0
.end method

.method private final A01(I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 10

    .line 11033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v0, "changedScrapSize":I
    if-nez v8, :cond_1

    .line 11034
    .end local v0    # "changedScrapSize":I
    :cond_0
    return-object v9

    .line 11035
    :cond_1
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    const/16 v7, 0x20

    if-ge v2, v8, :cond_3

    .line 11036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 11037
    .local v8, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0j()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0J()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 11038
    invoke-virtual {v1, v7}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11039
    return-object v1

    .line 11040
    .end local v8    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11041
    .end local p0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0C()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11042
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A00:Lcom/facebook/ads/redexgen/X/T7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/T7;->A0E(I)I

    move-result v1

    .line 11043
    .local p0, "offsetPosition":I
    if-lez v1, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 11044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/48;->A05(I)J

    move-result-wide v5

    .line 11045
    .local v8, "id":J
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v4, v8, :cond_5

    .line 11046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4c;

    .line 11047
    .local v7, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0j()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0L()J

    move-result-wide v1

    cmp-long v0, v1, v5

    if-nez v0, :cond_4

    .line 11048
    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11049
    return-object v3

    .line 11050
    .end local v7    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11051
    .end local p0    # "offsetPosition":I
    .end local v8    # "id":J
    .end local v2    # "i":I
    :cond_5
    return-object v9
.end method

.method private final A02(IZ)Lcom/facebook/ads/redexgen/X/4c;
    .locals 5

    .line 11052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 11053
    .local p0, "scrapCount":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 11054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 11055
    .local p2, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0J()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 11056
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/4Z;->A09:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11057
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11058
    return-object v1

    .line 11059
    .end local p2    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11060
    .end local p1    # "i":I
    :cond_2
    if-nez p2, :cond_4

    .line 11061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A09(I)Landroid/view/View;

    move-result-object v2

    .line 11062
    .local p1, "view":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 11063
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v4

    .line 11064
    .local p2, "vh":Lcom/facebook/ads/redexgen/X/4c;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3i;->A0H(Landroid/view/View;)V

    .line 11065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3i;->A08(Landroid/view/View;)I

    move-result v1

    .line 11066
    .local v0, "layoutIndex":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    .line 11067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3i;->A0D(I)V

    .line 11068
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4S;->A0X(Landroid/view/View;)V

    .line 11069
    const/16 v0, 0x2020

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11070
    return-object v4

    .line 11071
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d7

    const/16 v1, 0x34

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11072
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11073
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "vh":Lcom/facebook/ads/redexgen/X/4c;
    .end local v0    # "layoutIndex":I
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 11074
    .local p1, "cacheSize":I
    const/4 v2, 0x0

    .local p2, "i":I
    :goto_1
    if-ge v2, v3, :cond_7

    .line 11075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 11076
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0J()I

    move-result v0

    if-ne v0, p1, :cond_6

    .line 11077
    if-nez p2, :cond_5

    .line 11078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11079
    :cond_5
    return-object v1

    .line 11080
    .end local v0    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11081
    .end local p2    # "i":I
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private final A03(JIZ)Lcom/facebook/ads/redexgen/X/4c;
    .locals 7

    .line 11082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11083
    .local p0, "count":I
    add-int/lit8 v4, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 11084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4c;

    .line 11085
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0L()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11086
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0I()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 11087
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11088
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11089
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_8

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11090
    :cond_0
    if-nez p4, :cond_1

    .line 11091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11092
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->removeDetachedView(Landroid/view/View;Z)V

    .line 11093
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4S;->A0W(Landroid/view/View;)V

    .line 11094
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 11095
    .end local p1    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11096
    .local p1, "cacheSize":I
    add-int/lit8 v4, v0, -0x1

    .local v2, "i":I
    :goto_2
    const/4 v6, 0x0

    if-ltz v4, :cond_c

    .line 11097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4c;

    .line 11098
    .local p4, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0L()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_7

    .line 11099
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0I()I

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "lrD7iCy3KBiO8gA6PsFToJiVZrW1xMAl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "amz9CZtibeJcU8bEqG7a4ZYgRNeZgxWk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne p3, v5, :cond_6

    .line 11100
    :goto_3
    if-nez p4, :cond_3

    .line 11101
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "or4YmCu0ppqzW1VFAnuQtpcwvOCNSyKL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "x7G8xrEgau2heO3LEdjWfX9qC3RDyC0d"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11102
    :cond_3
    :goto_4
    return-object v3

    :cond_4
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "kYzWBiiTSiU3KogqfJ4EJctPAodLTQqF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kIBKgO4naDZyukeXVXxcwMENrZxoY36q"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne p3, v5, :cond_6

    goto :goto_3

    .line 11103
    :cond_6
    if-nez p4, :cond_7

    .line 11104
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/4S;->A08(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    goto/16 :goto_1

    .line 11105
    .end local p4    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_2

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "q3aWXTgT7NsVf007"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11106
    const/4 v5, 0x2

    const/16 v4, 0xe

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "NC6bFXUosLdTEwJsXrsHGkbXBsQUMG7q"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, v5, v4}, Lcom/facebook/ads/redexgen/X/4c;->A0V(II)V

    .line 11107
    :cond_9
    :goto_5
    return-object v3

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "kBSMDIkt47Rx4hHhTamY1xnSrMWRxYxp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kToZLwND7zKVFlbtf8XZb6UwHA5zPLAu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v5, v4}, Lcom/facebook/ads/redexgen/X/4c;->A0V(II)V

    goto :goto_5

    .line 11108
    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "2lrbY7WLbUziAPe6QkcwvBQ2VEr9QFta"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v6

    .line 11109
    .end local v2    # "i":I
    :cond_c
    return-object v6
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4S;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x30b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4S;->A09:[B

    return-void

    :array_0
    .array-data 1
        -0x5bt
        -0x12t
        -0x8t
        -0x3at
        -0x7t
        -0x7t
        -0x1at
        -0x18t
        -0x13t
        -0x16t
        -0x17t
        -0x41t
        -0x3bt
        -0x20t
        0x27t
        0x1et
        0x1et
        0x2bt
        0x1dt
        0x2ct
        -0xet
        -0x35t
        -0x30t
        -0x3et
        -0x15t
        0x16t
        0x7t
        0xft
        -0x3et
        0x5t
        0x11t
        0x17t
        0x10t
        0x16t
        -0x24t
        -0x26t
        -0x21t
        0x24t
        0x25t
        0x12t
        0x25t
        0x16t
        -0x15t
        -0x63t
        -0x45t
        -0x3at
        -0x3at
        -0x41t
        -0x42t
        0x7at
        -0x33t
        -0x43t
        -0x34t
        -0x45t
        -0x36t
        0x7at
        -0x30t
        -0x3dt
        -0x41t
        -0x2ft
        0x7at
        -0x2ft
        -0x3dt
        -0x32t
        -0x3et
        0x7at
        -0x45t
        -0x38t
        0x7at
        -0x3dt
        -0x38t
        -0x30t
        -0x45t
        -0x3at
        -0x3dt
        -0x42t
        0x7at
        -0x30t
        -0x3dt
        -0x41t
        -0x2ft
        -0x78t
        0x7at
        -0x5dt
        -0x38t
        -0x30t
        -0x45t
        -0x3at
        -0x3dt
        -0x42t
        0x7at
        -0x30t
        -0x3dt
        -0x41t
        -0x2ft
        -0x33t
        0x7at
        -0x43t
        -0x45t
        -0x38t
        -0x38t
        -0x37t
        -0x32t
        0x7at
        -0x44t
        -0x41t
        0x7at
        -0x34t
        -0x41t
        -0x31t
        -0x33t
        -0x41t
        -0x42t
        0x7at
        -0x40t
        -0x34t
        -0x37t
        -0x39t
        0x7at
        -0x33t
        -0x43t
        -0x34t
        -0x45t
        -0x36t
        -0x7at
        0x7at
        -0x32t
        -0x3et
        -0x41t
        -0x2dt
        0x7at
        -0x33t
        -0x3et
        -0x37t
        -0x31t
        -0x3at
        -0x42t
        0x7at
        -0x34t
        -0x41t
        -0x44t
        -0x37t
        -0x31t
        -0x38t
        -0x42t
        0x7at
        -0x40t
        -0x34t
        -0x37t
        -0x39t
        0x7at
        -0x34t
        -0x41t
        -0x43t
        -0x2dt
        -0x43t
        -0x3at
        -0x41t
        -0x34t
        0x7at
        -0x36t
        -0x37t
        -0x37t
        -0x3at
        -0x78t
        -0x7t
        0x1et
        0x13t
        0x1ft
        0x1et
        0x23t
        0x19t
        0x23t
        0x24t
        0x15t
        0x1et
        0x13t
        0x29t
        -0x30t
        0x14t
        0x15t
        0x24t
        0x15t
        0x13t
        0x24t
        0x15t
        0x14t
        -0x22t
        -0x30t
        -0x7t
        0x1et
        0x26t
        0x11t
        0x1ct
        0x19t
        0x14t
        -0x30t
        0x19t
        0x24t
        0x15t
        0x1dt
        -0x30t
        0x20t
        0x1ft
        0x23t
        0x19t
        0x24t
        0x19t
        0x1ft
        0x1et
        -0x30t
        -0xdt
        0x18t
        0xdt
        0x19t
        0x18t
        0x1dt
        0x13t
        0x1dt
        0x1et
        0xft
        0x18t
        0xdt
        0x23t
        -0x36t
        0xet
        0xft
        0x1et
        0xft
        0xdt
        0x1et
        0xft
        0xet
        -0x28t
        -0x36t
        -0xdt
        0x18t
        0x20t
        0xbt
        0x16t
        0x13t
        0xet
        -0x36t
        0x20t
        0x13t
        0xft
        0x21t
        -0x36t
        0x12t
        0x19t
        0x16t
        0xet
        0xft
        0x1ct
        -0x36t
        0xbt
        0xet
        0xbt
        0x1at
        0x1et
        0xft
        0x1ct
        -0x36t
        0x1at
        0x19t
        0x1dt
        0x13t
        0x1et
        0x13t
        0x19t
        0x18t
        -0x7dt
        -0x58t
        -0x50t
        -0x65t
        -0x5at
        -0x5dt
        -0x62t
        0x5at
        -0x5dt
        -0x52t
        -0x61t
        -0x59t
        0x5at
        -0x56t
        -0x57t
        -0x53t
        -0x5dt
        -0x52t
        -0x5dt
        -0x57t
        -0x58t
        0x5at
        -0x3ft
        -0x2ft
        -0x20t
        -0x31t
        -0x22t
        -0x22t
        -0x2dt
        -0x2et
        -0x72t
        -0x23t
        -0x20t
        -0x72t
        -0x31t
        -0x1et
        -0x1et
        -0x31t
        -0x2ft
        -0x2at
        -0x2dt
        -0x2et
        -0x72t
        -0x1ct
        -0x29t
        -0x2dt
        -0x1bt
        -0x1ft
        -0x72t
        -0x25t
        -0x31t
        -0x19t
        -0x72t
        -0x24t
        -0x23t
        -0x1et
        -0x72t
        -0x30t
        -0x2dt
        -0x72t
        -0x20t
        -0x2dt
        -0x2ft
        -0x19t
        -0x2ft
        -0x26t
        -0x2dt
        -0x2et
        -0x64t
        -0x72t
        -0x29t
        -0x1ft
        -0x3ft
        -0x2ft
        -0x20t
        -0x31t
        -0x22t
        -0x58t
        -0x23t
        -0xat
        -0x7t
        -0x57t
        -0x13t
        -0x12t
        -0x3t
        -0x16t
        -0x14t
        -0xft
        -0x12t
        -0x13t
        -0x57t
        -0x1t
        -0xet
        -0x12t
        0x0t
        -0x57t
        -0x4t
        -0xft
        -0x8t
        -0x2t
        -0xbt
        -0x13t
        -0x57t
        -0x15t
        -0x12t
        -0x57t
        -0x5t
        -0x12t
        -0xat
        -0x8t
        -0x1t
        -0x12t
        -0x13t
        -0x57t
        -0x11t
        -0x5t
        -0x8t
        -0xat
        -0x57t
        -0x25t
        -0x12t
        -0x14t
        0x2t
        -0x14t
        -0xbt
        -0x12t
        -0x5t
        -0x21t
        -0xet
        -0x12t
        0x0t
        -0x57t
        -0x15t
        -0x12t
        -0x11t
        -0x8t
        -0x5t
        -0x12t
        -0x57t
        -0xet
        -0x3t
        -0x57t
        -0x14t
        -0x16t
        -0x9t
        -0x57t
        -0x15t
        -0x12t
        -0x57t
        -0x5t
        -0x12t
        -0x14t
        0x2t
        -0x14t
        -0xbt
        -0x12t
        -0x13t
        -0x3dt
        -0x57t
        -0x66t
        -0x48t
        -0x41t
        -0x51t
        -0x4ct
        -0x53t
        0x66t
        -0x46t
        -0x4bt
        0x66t
        -0x48t
        -0x55t
        -0x57t
        -0x41t
        -0x57t
        -0x4et
        -0x55t
        0x66t
        -0x59t
        -0x4ct
        0x66t
        -0x51t
        -0x53t
        -0x4ct
        -0x4bt
        -0x48t
        -0x55t
        -0x56t
        0x66t
        -0x44t
        -0x51t
        -0x55t
        -0x43t
        0x66t
        -0x52t
        -0x4bt
        -0x4et
        -0x56t
        -0x55t
        -0x48t
        0x74t
        0x66t
        -0x61t
        -0x4bt
        -0x45t
        0x66t
        -0x47t
        -0x52t
        -0x4bt
        -0x45t
        -0x4et
        -0x56t
        0x66t
        -0x54t
        -0x51t
        -0x48t
        -0x47t
        -0x46t
        0x66t
        -0x57t
        -0x59t
        -0x4et
        -0x4et
        0x66t
        -0x47t
        -0x46t
        -0x4bt
        -0x4at
        -0x71t
        -0x53t
        -0x4ct
        -0x4bt
        -0x48t
        -0x51t
        -0x4ct
        -0x53t
        -0x64t
        -0x51t
        -0x55t
        -0x43t
        0x6et
        -0x44t
        -0x51t
        -0x55t
        -0x43t
        0x6ft
        0x66t
        -0x58t
        -0x55t
        -0x54t
        -0x4bt
        -0x48t
        -0x55t
        0x66t
        -0x57t
        -0x59t
        -0x4et
        -0x4et
        -0x51t
        -0x4ct
        -0x53t
        0x66t
        -0x48t
        -0x55t
        -0x57t
        -0x41t
        -0x57t
        -0x4et
        -0x55t
        0x74t
        -0x13t
        -0x15t
        -0x6t
        -0x24t
        -0x11t
        -0x15t
        -0x3t
        -0x34t
        -0xbt
        -0x8t
        -0x2at
        -0xbt
        -0x7t
        -0x11t
        -0x6t
        -0x11t
        -0xbt
        -0xct
        -0x39t
        -0xct
        -0x16t
        -0x26t
        -0x1t
        -0xat
        -0x15t
        -0x5at
        -0x8t
        -0x15t
        -0x6t
        -0x5t
        -0x8t
        -0xct
        -0x15t
        -0x16t
        -0x5at
        -0x19t
        -0x5at
        -0x4t
        -0x11t
        -0x15t
        -0x3t
        -0x5at
        -0x6t
        -0x12t
        -0x19t
        -0x6t
        -0x5at
        -0x11t
        -0x7t
        -0x5at
        -0x11t
        -0x13t
        -0xct
        -0xbt
        -0x8t
        -0x15t
        -0x16t
        -0x4ct
        -0x5at
        -0x21t
        -0xbt
        -0x5t
        -0x5at
        -0xdt
        -0x5t
        -0x7t
        -0x6t
        -0x5at
        -0x17t
        -0x19t
        -0xet
        -0xet
        -0x5at
        -0x7t
        -0x6t
        -0xbt
        -0xat
        -0x31t
        -0x13t
        -0xct
        -0xbt
        -0x8t
        -0x11t
        -0xct
        -0x13t
        -0x5at
        -0x18t
        -0x15t
        -0x14t
        -0xbt
        -0x8t
        -0x15t
        -0x5at
        -0x8t
        -0x15t
        -0x6t
        -0x5t
        -0x8t
        -0xct
        -0x11t
        -0xct
        -0x13t
        -0x5at
        -0x6t
        -0x12t
        -0x11t
        -0x7t
        -0x5at
        -0x4t
        -0x11t
        -0x15t
        -0x3t
        -0x4ct
        -0x4et
        -0x50t
        -0x41t
        -0x5ft
        -0x4ct
        -0x50t
        -0x3et
        -0x6ft
        -0x46t
        -0x43t
        -0x65t
        -0x46t
        -0x42t
        -0x4ct
        -0x41t
        -0x4ct
        -0x46t
        -0x47t
        -0x74t
        -0x47t
        -0x51t
        -0x61t
        -0x3ct
        -0x45t
        -0x50t
        0x6bt
        -0x43t
        -0x50t
        -0x41t
        -0x40t
        -0x43t
        -0x47t
        -0x50t
        -0x51t
        0x6bt
        -0x54t
        0x6bt
        -0x3ft
        -0x4ct
        -0x50t
        -0x3et
        0x6bt
        -0x3et
        -0x4dt
        -0x4ct
        -0x52t
        -0x4dt
        0x6bt
        -0x51t
        -0x46t
        -0x50t
        -0x42t
        0x6bt
        -0x47t
        -0x46t
        -0x41t
        0x6bt
        -0x4dt
        -0x54t
        -0x3ft
        -0x50t
        0x6bt
        -0x54t
        0x6bt
        -0x5ft
        -0x4ct
        -0x50t
        -0x3et
        -0x6dt
        -0x46t
        -0x49t
        -0x51t
        -0x50t
        -0x43t
        -0x3ft
        -0x4at
        -0x32t
        -0x3ct
        -0x36t
        -0x37t
        0x75t
        -0x42t
        -0x3dt
        -0x47t
        -0x46t
        -0x33t
        0x75t
        -0x38t
        -0x43t
        -0x3ct
        -0x36t
        -0x3ft
        -0x47t
        0x75t
        -0x3dt
        -0x3ct
        -0x37t
        0x75t
        -0x49t
        -0x46t
        0x75t
        -0x7et
        -0x7at
        0x75t
        -0x4at
        -0x45t
        -0x37t
        -0x46t
        -0x39t
        0x75t
        -0x36t
        -0x3dt
        -0x43t
        -0x42t
        -0x47t
        -0x42t
        -0x3dt
        -0x44t
        0x75t
        -0x4at
        0x75t
        -0x35t
        -0x42t
        -0x46t
        -0x34t
        -0x71t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ulA9tMpXJ0Fgz3L6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kmBp6JcSqPlb9eogqvbvj6g5ppHVaWSS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "klPqAM4BpBJNr6xIOjiQhoS6UO4TrOHS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7VyM9GgXJuu8YzSYQI3HrMroeBYRJajD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jF2bnw6E6wYHKm8plX11kYiLrSAbSJmD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6pBnRch9VxXRPJwtqH0gd323b09mKXXU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Clk2oRExhn8z5HC1wWkAqM8aEwWEfAA8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Myq33IQdIYqIzBMhSJhfspyke76FBM0c"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    return-void
.end method

.method private final A07()V
    .locals 1

    .line 11110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11111
    .local p0, "count":I
    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 11112
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4S;->A08(I)V

    .line 11113
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11114
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11115
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Eq;->A12()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A02:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A03()V

    .line 11117
    :cond_1
    return-void
.end method

.method private final A08(I)V
    .locals 2

    .line 11118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 11119
    .local p0, "viewHolder":Lcom/facebook/ads/redexgen/X/4c;
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A0e(Lcom/facebook/ads/redexgen/X/4c;Z)V

    .line 11120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11121
    return-void
.end method

.method private A09(Landroid/view/ViewGroup;Z)V
    .locals 6

    .line 11122
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v4, 0x1

    sub-int/2addr v5, v4

    .local p0, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 11123
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 11124
    .local p2, "view":Landroid/view/View;
    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 11125
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "0ZJbYELQTNKw4GYvMFOIJ2JFgvUoupt2"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/4S;->A09(Landroid/view/ViewGroup;Z)V

    .line 11126
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11127
    .end local p0    # "i":I
    :cond_2
    if-nez p2, :cond_3

    .line 11128
    return-void

    .line 11129
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 11130
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11131
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11132
    .end local p0
    :goto_1
    return-void

    .line 11133
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 11134
    .local p0, "visibility":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11135
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 2

    .line 11136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11137
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    .line 11138
    .local p0, "itemView":Landroid/view/View;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/2z;->A00(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 11139
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2z;->A09(Landroid/view/View;I)V

    .line 11140
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/2z;->A0E(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11141
    const/16 v0, 0x4000

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A09:Lcom/facebook/ads/redexgen/X/TP;

    .line 11143
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TP;->A0A()Lcom/facebook/ads/redexgen/X/2d;

    move-result-object v0

    .line 11144
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2z;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2d;)V

    .line 11145
    .end local p0    # "itemView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 2

    .line 11146
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 11147
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A09(Landroid/view/ViewGroup;Z)V

    .line 11148
    :cond_0
    return-void
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 1

    .line 11149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A07:Lcom/facebook/ads/redexgen/X/4T;

    if-eqz v0, :cond_0

    .line 11150
    const/4 v0, 0x0

    throw v0

    .line 11151
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    .line 11152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    if-eqz v0, :cond_1

    .line 11153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0t:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4k;->A0C(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11154
    :cond_1
    return-void
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/4c;)Z
    .locals 6

    .line 11155
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    return v0

    .line 11157
    :cond_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    if-ltz v0, :cond_4

    iget v1, p1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 11158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 11159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/48;->A04(I)I

    move-result v1

    .line 11160
    .local p0, "type":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0I()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 11161
    return v5

    .line 11162
    .end local p0    # "type":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0C()Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_3

    .line 11163
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0L()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/48;->A05(I)J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    .line 11164
    :cond_3
    return v0

    .line 11165
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd3

    const/16 v1, 0x3c

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11166
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/4c;IIJ)Z
    .locals 9

    .line 11167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11168
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0I()I

    move-result v4

    .line 11169
    .local p0, "viewType":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getNanoTime()J

    move-result-wide v5

    .line 11170
    .local v4, "startBindNs":J
    const-wide v1, 0x7fffffffffffffffL

    move-wide v7, p4

    cmp-long v0, v7, v1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    .line 11171
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "We3abAYlnqMpJzTP"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/4R;->A0B(IJJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11172
    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11173
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/48;->A0B(Lcom/facebook/ads/redexgen/X/4c;I)V

    .line 11174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getNanoTime()J

    move-result-wide v0

    .line 11175
    .local p1, "endBindNs":J
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0I()I

    move-result v2

    sub-long/2addr v0, v5

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/4R;->A06(IJ)V

    .line 11176
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4S;->A0A(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11178
    iput p3, p1, Lcom/facebook/ads/redexgen/X/4c;->A04:I

    .line 11179
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0F()I
    .locals 1

    .line 11180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final A0G(I)Landroid/view/View;
    .locals 1

    .line 11181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    return-object v0
.end method

.method public final A0H(I)Landroid/view/View;
    .locals 1

    .line 11182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A00(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/4R;
    .locals 1

    .line 11183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    if-nez v0, :cond_0

    .line 11184
    new-instance v0, Lcom/facebook/ads/redexgen/X/4R;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4R;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    .line 11185
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    return-object v0
.end method

.method public final A0J(IZJ)Lcom/facebook/ads/redexgen/X/4c;
    .locals 22
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11186
    move-object/from16 v2, p0

    move-object v2, v2

    move/from16 v13, p1

    if-ltz v13, :cond_1a

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    if-ge v13, v0, :cond_1a

    .line 11187
    const/4 v9, 0x0

    .line 11188
    .local v2, "fromScrapOrHiddenOrCache":Z
    const/4 v11, 0x0

    .line 11189
    .local v13, "holder":Lcom/facebook/ads/redexgen/X/4c;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 11190
    invoke-direct {v2, v13}, Lcom/facebook/ads/redexgen/X/4S;->A01(I)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v11

    .line 11191
    if-eqz v11, :cond_9

    const/4 v9, 0x1

    .line 11192
    :cond_0
    :goto_0
    move/from16 v7, p2

    if-nez v11, :cond_3

    .line 11193
    invoke-direct {v2, v13, v7}, Lcom/facebook/ads/redexgen/X/4S;->A02(IZ)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v11

    .line 11194
    if-eqz v11, :cond_3

    .line 11195
    invoke-direct {v2, v11}, Lcom/facebook/ads/redexgen/X/4S;->A0D(Lcom/facebook/ads/redexgen/X/4c;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 11196
    if-nez v7, :cond_2

    .line 11197
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11198
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11199
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Eq;->removeDetachedView(Landroid/view/View;Z)V

    .line 11200
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0T()V

    .line 11201
    :cond_1
    :goto_1
    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/4S;->A0c(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11202
    :cond_2
    const/4 v11, 0x0

    .line 11203
    :cond_3
    :goto_2
    move-wide/from16 v14, p3

    if-nez v11, :cond_f

    .line 11204
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A00:Lcom/facebook/ads/redexgen/X/T7;

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/T7;->A0E(I)I

    move-result v5

    .line 11205
    .local v7, "offsetPosition":I
    if-ltz v5, :cond_c

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v0

    if-ge v5, v0, :cond_c

    .line 11206
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/48;->A04(I)I

    move-result v6

    .line 11207
    .local v14, "type":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0C()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11208
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/48;->A05(I)J

    move-result-wide v0

    invoke-direct {v2, v0, v1, v6, v7}, Lcom/facebook/ads/redexgen/X/4S;->A03(JIZ)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v11

    .line 11209
    if-eqz v11, :cond_4

    .line 11210
    iput v5, v11, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    .line 11211
    const/4 v9, 0x1

    .line 11212
    :cond_4
    if-nez v11, :cond_5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A04:Lcom/facebook/ads/redexgen/X/4a;

    if-eqz v0, :cond_5

    .line 11213
    invoke-virtual {v0, v2, v13, v6}, Lcom/facebook/ads/redexgen/X/4a;->A00(Lcom/facebook/ads/redexgen/X/4S;II)Landroid/view/View;

    move-result-object v1

    .line 11214
    .local v4, "view":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 11215
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Eq;->A1I(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v11

    .line 11216
    if-eqz v11, :cond_b

    .line 11217
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-nez v0, :cond_a

    .line 11218
    .end local v4    # "view":Landroid/view/View;
    :cond_5
    if-nez v11, :cond_6

    .line 11219
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4S;->A0I()Lcom/facebook/ads/redexgen/X/4R;

    move-result-object v7

    sget-object v5, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v5, v0

    const/4 v0, 0x3

    aget-object v5, v5, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_15

    sget-object v5, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "3K2bfdY4Lns5cH4Uqi6qZhk44zURNmgZ"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4R;->A04(I)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v11

    .line 11220
    if-eqz v11, :cond_6

    .line 11221
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0R()V

    .line 11222
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Eq;->A1C:Z

    if-eqz v0, :cond_6

    .line 11223
    invoke-direct {v2, v11}, Lcom/facebook/ads/redexgen/X/4S;->A0B(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11224
    :cond_6
    if-nez v11, :cond_f

    .line 11225
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getNanoTime()J

    move-result-wide v18

    .line 11226
    .local v4, "start":J
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v14, v7

    if-eqz v0, :cond_d

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    .line 11227
    move/from16 v17, v6

    move-wide/from16 v20, v14

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v21}, Lcom/facebook/ads/redexgen/X/4R;->A0C(IJJ)Z

    move-result v0

    if-nez v0, :cond_d

    .line 11228
    const/4 v0, 0x0

    return-object v0

    .line 11229
    :cond_7
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11230
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0P()V

    goto/16 :goto_1

    .line 11231
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 11232
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 11233
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x21c

    const/16 v1, 0x71

    const/16 v0, 0x4c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11234
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11235
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x28d

    const/16 v1, 0x4a

    const/16 v0, 0x11

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11236
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11237
    .end local v14    # "type":I
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa5

    const/16 v1, 0x2e

    const/16 v0, 0x76

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    const/16 v1, 0x8

    const/16 v0, 0x7e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    const/16 v1, 0x8

    const/16 v0, 0x77

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    .line 11238
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11239
    :cond_d
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    sget-object v8, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v8, v0

    const/4 v0, 0x3

    aget-object v8, v8, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_19

    sget-object v8, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "ofPrqBOY4KV1O5mmTOXtQojU6rRVoJMb"

    const/4 v0, 0x5

    aput-object v1, v8, v0

    const-string v1, "dfUBDtyf096LhSCdUEMmmzbvfUZbBbNe"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    invoke-virtual {v7, v5, v6}, Lcom/facebook/ads/redexgen/X/48;->A06(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v11

    .line 11240
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Eq;->A12()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 11241
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A0I(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Eq;

    move-result-object v1

    .line 11242
    .local v9, "innerView":Lcom/facebook/ads/redexgen/X/Eq;
    if-eqz v1, :cond_e

    .line 11243
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A09:Ljava/lang/ref/WeakReference;

    .line 11244
    .end local v9    # "innerView":Lcom/facebook/ads/redexgen/X/Eq;
    :cond_e
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getNanoTime()J

    move-result-wide v0

    .line 11245
    .local v9, "end":J
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    sub-long v0, v0, v18

    invoke-virtual {v5, v6, v0, v1}, Lcom/facebook/ads/redexgen/X/4R;->A07(IJ)V

    .line 11246
    .end local v2    # "fromScrapOrHiddenOrCache":Z
    .end local v13    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    .local v9, "fromScrapOrHiddenOrCache":Z
    .local v11, "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_f
    if-eqz v9, :cond_10

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-nez v0, :cond_10

    .line 11247
    const/16 v1, 0x2000

    invoke-virtual {v11, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0l(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 11248
    invoke-virtual {v11, v4, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0V(II)V

    .line 11249
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:Z

    if-eqz v0, :cond_10

    .line 11250
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/4G;->A00(Lcom/facebook/ads/redexgen/X/4c;)I

    move-result v0

    .line 11251
    .local v2, "changeFlags":I
    or-int/lit16 v5, v0, 0x1000

    .line 11252
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Eq;->A05:Lcom/facebook/ads/redexgen/X/4G;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    .line 11253
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0M()Ljava/util/List;

    move-result-object v0

    .line 11254
    invoke-virtual {v4, v1, v11, v5, v0}, Lcom/facebook/ads/redexgen/X/4G;->A08(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4c;ILjava/util/List;)Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v1

    .line 11255
    .local v13, "info":Lcom/facebook/ads/redexgen/X/4F;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v11, v1}, Lcom/facebook/ads/redexgen/X/Eq;->A1n(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;)V

    .line 11256
    .end local v2    # "changeFlags":I
    .end local v13    # "info":Lcom/facebook/ads/redexgen/X/4F;
    :cond_10
    const/4 v5, 0x0

    .line 11257
    .local v0, "bound":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0b()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 11258
    iput v13, v11, Lcom/facebook/ads/redexgen/X/4c;->A04:I

    .line 11259
    .end local v0    # "bound":Z
    :cond_11
    :goto_3
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 11260
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_13

    .line 11261
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4L;

    .line 11262
    .local v13, "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11263
    .restart local v13    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4L;
    :goto_4
    iput-object v11, v4, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4c;

    .line 11264
    if-eqz v9, :cond_12

    if-eqz v5, :cond_12

    :goto_5
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    .line 11265
    return-object v11

    .line 11266
    :cond_12
    const/4 v3, 0x0

    goto :goto_5

    .line 11267
    .end local v13    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4L;
    :cond_13
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Eq;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 11268
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Eq;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4L;

    .line 11269
    .restart local v13    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 11270
    .end local v13    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/4L;
    :cond_14
    sget-object v1, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_16

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "WeHbAL2DpvJL4iRMn0O7hIhaGbvumhB7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v4, Lcom/facebook/ads/redexgen/X/4L;

    goto :goto_4

    .line 11271
    :cond_17
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0b()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0h()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11272
    :cond_18
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A00:Lcom/facebook/ads/redexgen/X/T7;

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/T7;->A0E(I)I

    move-result v12

    .line 11273
    .local v0, "offsetPosition":I
    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/4S;->A0E(Lcom/facebook/ads/redexgen/X/4c;IIJ)Z

    move-result v5

    goto :goto_3

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11274
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v13
    .end local v9    # "fromScrapOrHiddenOrCache":Z
    .end local v11    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    .end local v0    # "offsetPosition":I
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x10f

    const/16 v1, 0x16

    const/4 v0, 0x0

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    const/4 v1, 0x1

    const/16 v0, 0x63

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x15

    const/16 v1, 0xe

    const/16 v0, 0x68

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    .line 11275
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11276
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0K()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            ">;"
        }
    .end annotation

    .line 11277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A07:Ljava/util/List;

    return-object v0
.end method

.method public final A0L()V
    .locals 4

    .line 11278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 11279
    .local p0, "cachedCount":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 11280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    .line 11281
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0N()V

    .line 11282
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11283
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 11284
    .local v0, "scrapCount":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 11285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0N()V

    .line 11286
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11287
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "w7WcMXH384MQxArKBWq9tfOfmOANhXYh"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ji6HgViVTGyvfONq8Vqt8Uaju4D1iJHU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 11288
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 11289
    .local v2, "changedScrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 11290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0N()V

    .line 11291
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11292
    .end local v2    # "changedScrapCount":I
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public final A0M()V
    .locals 1

    .line 11293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 11295
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11296
    :cond_0
    return-void
.end method

.method public final A0N()V
    .locals 4

    .line 11297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 11298
    .local p0, "cachedCount":I
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 11299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    .line 11300
    .local v3, "holder":Lcom/facebook/ads/redexgen/X/4c;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4L;

    .line 11301
    .local v2, "layoutParams":Lcom/facebook/ads/redexgen/X/4L;
    if-eqz v1, :cond_0

    .line 11302
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4L;->A01:Z

    .line 11303
    .end local v3    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    .end local v2    # "layoutParams":Lcom/facebook/ads/redexgen/X/4L;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11304
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final A0O()V
    .locals 6

    .line 11305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 11307
    .local p0, "cachedCount":I
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 11308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4c;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11309
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "kx9etu5Uswf3mlSSd54JM5SDJxoMGNTv"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kxxNK4Rys8aPJuu822sP3fs8sDM7v1G0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 11310
    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11311
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0Z(Ljava/lang/Object;)V

    .line 11312
    .end local v0    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11313
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4S;->A07()V

    .line 11314
    :cond_3
    return-void
.end method

.method public final A0P()V
    .locals 5

    .line 11315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4K;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4K;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "kSelswvDf1EbxUzrii1mBr6dHJR0d4zj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kcuGN1lunmBh6z5P1vsNJWvgiUTpOK0Q"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget v1, v3, Lcom/facebook/ads/redexgen/X/4K;->A00:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 11316
    .local p0, "extraCache":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A03:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:I

    .line 11317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 11318
    .local v0, "i":I
    :goto_2
    if-ltz v4, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "kpxxdOz3cEfo3MLV8RPQuR2Jasv2n6jF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kgO1H2GjmHeLX2ZusVi9gFRUJKE1zGI0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:I

    if-le v3, v0, :cond_3

    .line 11319
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/4S;->A08(I)V

    .line 11320
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 11321
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public final A0Q()V
    .locals 1

    .line 11322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11323
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4S;->A07()V

    .line 11324
    return-void
.end method

.method public final A0R(I)V
    .locals 0

    .line 11325
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4S;->A03:I

    .line 11326
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4S;->A0P()V

    .line 11327
    return-void
.end method

.method public final A0S(II)V
    .locals 4

    .line 11328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 11329
    .local p0, "cachedCount":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 11330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 11331
    .local p2, "holder":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v1, :cond_0

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    if-lt v0, p1, :cond_0

    .line 11332
    const/4 v0, 0x1

    invoke-virtual {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0X(IZ)V

    .line 11333
    .end local p2    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11334
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method public final A0T(II)V
    .locals 10

    .line 11335
    if-ge p1, p2, :cond_3

    .line 11336
    move v8, p1

    .line 11337
    .local p0, "start":I
    move v7, p2

    .line 11338
    .local p1, "end":I
    const/4 v6, -0x1

    .line 11339
    .local p2, "inBetweenOffset":I
    .restart local p2    # "inBetweenOffset":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 11340
    .local v8, "cachedCount":I
    const/4 v4, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v4, v5, :cond_5

    .line 11341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4c;

    .line 11342
    .local v6, "holder":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v3, :cond_0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    if-lt v0, v8, :cond_0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    if-le v0, v7, :cond_1

    .line 11343
    .end local v6    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11344
    :cond_1
    iget v9, v3, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "kvvW4F2OCwdEIl1qwIuxYVFpmp0ugJY5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kzcCp2wTfEGQm2KGuN32b5oIYABnQWPG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v1, 0x0

    if-ne v9, p1, :cond_2

    .line 11345
    sub-int v0, p2, p1

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0X(IZ)V

    goto :goto_2

    .line 11346
    :cond_2
    invoke-virtual {v3, v6, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0X(IZ)V

    goto :goto_2

    .line 11347
    .end local p0    # "start":I
    .end local p1    # "end":I
    .end local p2    # "inBetweenOffset":I
    :cond_3
    move v8, p2

    .line 11348
    .restart local p0    # "start":I
    move v7, p1

    .line 11349
    .restart local p1    # "end":I
    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11350
    .end local v7    # "i":I
    :cond_5
    return-void
.end method

.method public final A0U(II)V
    .locals 4

    .line 11351
    add-int v3, p1, p2

    .line 11352
    .local p0, "positionEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11353
    .local p1, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local p2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 11354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 11355
    .local v3, "holder":Lcom/facebook/ads/redexgen/X/4c;
    if-nez v1, :cond_1

    .line 11356
    .end local v3    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    .end local v0
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 11357
    :cond_1
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    .line 11358
    .local v0, "pos":I
    if-lt v0, p1, :cond_0

    if-ge v0, v3, :cond_0

    .line 11359
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11360
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/4S;->A08(I)V

    goto :goto_1

    .line 11361
    .end local p2    # "i":I
    :cond_2
    return-void
.end method

.method public final A0V(IIZ)V
    .locals 4

    .line 11362
    add-int v3, p1, p2

    .line 11363
    .local p0, "removedEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11364
    .local p1, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local p2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 11365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 11366
    .local p3, "holder":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v1, :cond_0

    .line 11367
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    if-lt v0, v3, :cond_1

    .line 11368
    neg-int v0, p2

    invoke-virtual {v1, v0, p3}, Lcom/facebook/ads/redexgen/X/4c;->A0X(IZ)V

    .line 11369
    .end local p3    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 11370
    :cond_1
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    if-lt v0, p1, :cond_0

    .line 11371
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0U(I)V

    .line 11372
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/4S;->A08(I)V

    goto :goto_1

    .line 11373
    .end local p2    # "i":I
    :cond_2
    return-void
.end method

.method public final A0W(Landroid/view/View;)V
    .locals 2

    .line 11374
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 11375
    .local p0, "holder":Lcom/facebook/ads/redexgen/X/4c;
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A01(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4S;)Lcom/facebook/ads/redexgen/X/4S;

    .line 11376
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0G(Lcom/facebook/ads/redexgen/X/4c;Z)Z

    .line 11377
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0P()V

    .line 11378
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4S;->A0c(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11379
    return-void
.end method

.method public final A0X(Landroid/view/View;)V
    .locals 5

    .line 11380
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v2

    .line 11381
    .local p0, "holder":Lcom/facebook/ads/redexgen/X/4c;
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0l(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11382
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Eq;->A21(Lcom/facebook/ads/redexgen/X/4c;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11383
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "cscHAR4ImnAFzAxZJ9yqjMNa91RcN8Vb"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const-string v1, "pspTzLDNU823NSI2ymIgIumCpfqVQlal"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0C()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11384
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0Y(Lcom/facebook/ads/redexgen/X/4S;Z)V

    .line 11385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11386
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2b

    const/16 v1, 0x7a

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11387
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11388
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 11389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    .line 11390
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v2, p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0Y(Lcom/facebook/ads/redexgen/X/4S;Z)V

    .line 11391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11392
    :goto_0
    return-void
.end method

.method public final A0Y(Landroid/view/View;)V
    .locals 3

    .line 11393
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v2

    .line 11394
    .local p0, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11395
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->removeDetachedView(Landroid/view/View;Z)V

    .line 11396
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11397
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0T()V

    .line 11398
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4S;->A0c(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11399
    return-void

    .line 11400
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11401
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0P()V

    goto :goto_0
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/48;Lcom/facebook/ads/redexgen/X/48;Z)V
    .locals 1

    .line 11402
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4S;->A0Q()V

    .line 11403
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4S;->A0I()Lcom/facebook/ads/redexgen/X/4R;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4R;->A09(Lcom/facebook/ads/redexgen/X/48;Lcom/facebook/ads/redexgen/X/48;Z)V

    .line 11404
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/4R;)V
    .locals 2

    .line 11405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    if-eqz v0, :cond_0

    .line 11406
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4R;->A05()V

    .line 11407
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    .line 11408
    if-eqz p1, :cond_1

    .line 11409
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Lcom/facebook/ads/redexgen/X/4R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getAdapter()Lcom/facebook/ads/redexgen/X/48;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4R;->A08(Lcom/facebook/ads/redexgen/X/48;)V

    .line 11410
    :cond_1
    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/4a;)V
    .locals 0

    .line 11411
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4S;->A04:Lcom/facebook/ads/redexgen/X/4a;

    .line 11412
    return-void
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 9

    .line 11413
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0e()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11414
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x125

    const/16 v1, 0x38

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11415
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0e()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    .line 11416
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11417
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0f()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "QZZbfikyhDCMiV1imXgamooHNWBI4VfH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_f

    .line 11418
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-nez v0, :cond_e

    .line 11419
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0F(Lcom/facebook/ads/redexgen/X/4c;)Z

    move-result v8

    .line 11420
    .local p0, "transientStatePreventsRecycling":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    if-eqz v0, :cond_d

    if-eqz v8, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    .line 11421
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/48;->A0D(Lcom/facebook/ads/redexgen/X/4c;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    .line 11422
    .local v4, "forceRecycle":Z
    :goto_0
    const/4 v7, 0x0

    .line 11423
    .local v3, "cached":Z
    const/4 v6, 0x0

    .line 11424
    .local v0, "recycled":Z
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11425
    :cond_4
    iget v5, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "JXkbPmQXP2BcwiEI3FqqjfiGok6rwhAB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-lez v5, :cond_8

    :goto_1
    const/16 v0, 0x20e

    .line 11426
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0l(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 11427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 11428
    .local v0, "cachedViewSize":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:I

    if-lt v2, v0, :cond_5

    if-lez v2, :cond_5

    .line 11429
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/4S;->A08(I)V

    .line 11430
    add-int/lit8 v2, v2, -0x1

    .line 11431
    .local p1, "targetCacheIndex":I
    :cond_5
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Eq;->A12()Z

    move-result v0

    if-eqz v0, :cond_7

    if-lez v2, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A02:Lcom/facebook/ads/redexgen/X/T8;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    .line 11432
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T8;->A06(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 11433
    add-int/lit8 v2, v2, -0x1

    .line 11434
    .local v3, "cacheIndex":I
    :goto_2
    if-ltz v2, :cond_6

    .line 11435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4c;->A03:I

    .line 11436
    .local v2, "cachedPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A02:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/T8;->A06(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 11437
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 11438
    .end local v3    # "cacheIndex":I
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 11439
    const/4 v7, 0x1

    .line 11440
    .end local p1    # "targetCacheIndex":I
    .end local v0    # "cachedViewSize":I
    :cond_8
    if-nez v7, :cond_9

    .line 11441
    invoke-virtual {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/4S;->A0e(Lcom/facebook/ads/redexgen/X/4c;Z)V

    .line 11442
    const/4 v6, 0x1

    .line 11443
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0t:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4k;->A0C(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11444
    if-nez v7, :cond_a

    if-nez v6, :cond_a

    if-eqz v8, :cond_a

    .line 11445
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11446
    :cond_a
    return-void

    .line 11447
    .end local v2    # "cachedPos":I
    :cond_b
    add-int/lit8 v2, v2, -0x1

    .line 11448
    goto :goto_2

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A0A:[Ljava/lang/String;

    const-string v1, "iMRb6lH7bzEtCSJD4TfZYArDATXy6kqw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-lez v5, :cond_8

    goto :goto_1

    .line 11449
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 11450
    .end local p0    # "transientStatePreventsRecycling":Z
    .end local v4    # "forceRecycle":Z
    .end local v3
    .end local v0
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1ae

    const/16 v1, 0x6e

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11451
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11452
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15d

    const/16 v1, 0x51

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4S;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11453
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 1

    .line 11454
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0D(Lcom/facebook/ads/redexgen/X/4c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11456
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A01(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4S;)Lcom/facebook/ads/redexgen/X/4S;

    .line 11457
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0G(Lcom/facebook/ads/redexgen/X/4c;Z)Z

    .line 11458
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0P()V

    .line 11459
    return-void

    .line 11460
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final A0e(Lcom/facebook/ads/redexgen/X/4c;Z)V
    .locals 3

    .line 11461
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Eq;->A0u(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11462
    const/16 v2, 0x4000

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/4c;->A0l(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11463
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/facebook/ads/redexgen/X/4c;->A0V(II)V

    .line 11464
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/2z;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2d;)V

    .line 11465
    :cond_0
    if-eqz p2, :cond_1

    .line 11466
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4S;->A0C(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11467
    :cond_1
    iput-object v1, p1, Lcom/facebook/ads/redexgen/X/4c;->A08:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11468
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4S;->A0I()Lcom/facebook/ads/redexgen/X/4R;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4R;->A0A(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 11469
    return-void
.end method
