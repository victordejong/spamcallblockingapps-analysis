.class public final Lcom/facebook/ads/redexgen/X/Q9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5n;,
        Lcom/facebook/ads/redexgen/X/Q8;
    }
.end annotation


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;

.field public static final A0I:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/Kd;

.field public A05:Lcom/facebook/ads/redexgen/X/QA;

.field public A06:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public A07:Z

.field public A08:Z

.field public final A09:I

.field public final A0A:I

.field public final A0B:Landroid/os/Handler;

.field public final A0C:Landroid/view/View;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0E:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Q8;",
            ">;"
        }
    .end annotation
.end field

.field public final A0F:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 48853
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Q9;->A0N()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Q9;->A0M()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Q9;->A0I:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "IIZ",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Q8;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            ")V"
        }
    .end annotation

    .line 48854
    .local v0, "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/viewability/AdViewabilityChecker$Listener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48855
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0B:Landroid/os/Handler;

    .line 48856
    const/4 v3, 0x0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Q9;->A01:I

    .line 48857
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A02:I

    .line 48858
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Q9;->A08:Z

    .line 48859
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0L:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A05:Lcom/facebook/ads/redexgen/X/QA;

    .line 48860
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A06:Ljava/util/Map;

    .line 48861
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A03:J

    .line 48862
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Q9;->A00:I

    .line 48863
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Q9;->A07:Z

    .line 48864
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0D:Lcom/facebook/ads/redexgen/X/Wm;

    .line 48865
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0C:Landroid/view/View;

    .line 48866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 48867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0C:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 48868
    :cond_0
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0A:I

    .line 48869
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0E:Ljava/lang/ref/WeakReference;

    .line 48870
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0F:Z

    .line 48871
    if-gez p3, :cond_2

    .line 48872
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48873
    sget-object v3, Lcom/facebook/ads/redexgen/X/Q9;->A0I:Ljava/lang/String;

    const/16 v2, 0xd3

    const/16 v1, 0x1d

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48874
    :cond_1
    const/4 p3, 0x0

    .line 48875
    :cond_2
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Q9;->A09:I

    .line 48876
    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Q8;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            ")V"
        }
    .end annotation

    .line 48877
    .local v5, "mListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/viewability/AdViewabilityChecker$Listener;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v6, p4

    move-object v5, p3

    move v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Q9;-><init>(Landroid/view/View;IIZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 48878
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "IZ",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Q8;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            ")V"
        }
    .end annotation

    .line 48879
    .local v5, "mListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/viewability/AdViewabilityChecker$Listener;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p5

    move-object v5, p4

    move v4, p3

    move v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Q9;-><init>(Landroid/view/View;IIZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 48880
    return-void
.end method

.method public static A00(Landroid/view/View;)F
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 48881
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 48882
    .local p0, "resultAlpha":F
    .local v2, "currentView":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 48883
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 48884
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 48885
    .local p0, "alpha":F
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    .line 48886
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 48887
    :cond_1
    mul-float/2addr v2, v1

    .line 48888
    .end local p0    # "alpha":F
    goto :goto_0

    .line 48889
    :cond_2
    return v2
.end method

.method public static A01(ILandroid/view/View;)I
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 48890
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr v2, v0

    .line 48891
    .local p0, "viewArea":I
    const/high16 v1, 0x42c80000    # 100.0f

    if-lez v2, :cond_0

    int-to-float v0, v2

    div-float/2addr v1, v0

    .line 48892
    .local p1, "onePixelPercentage":F
    :cond_0
    int-to-double v2, p0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v2, p0, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v0, v1

    return v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Q9;)I
    .locals 0

    .line 48893
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A02:I

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Q9;)I
    .locals 0

    .line 48894
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0A:I

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Q9;)I
    .locals 0

    .line 48895
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A00:I

    return p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Q9;)I
    .locals 2

    .line 48896
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Q9;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A00:I

    return v1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Q9;)I
    .locals 0

    .line 48897
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A09:I

    return p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Q9;I)I
    .locals 0

    .line 48898
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Q9;->A00:I

    return p1
.end method

.method public static A08(Ljava/util/Vector;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation

    .line 48899
    .local v9, "rectangles":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/graphics/Rect;>;"
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v8

    .line 48900
    .local p0, "size":I
    mul-int/lit8 v0, v8, 0x2

    new-array v7, v0, [I

    .line 48901
    .local v8, "x":[I
    mul-int/lit8 v0, v8, 0x2

    new-array v6, v0, [I

    .line 48902
    .local v0, "y":[I
    mul-int/lit8 v1, v8, 0x2

    mul-int/lit8 v0, v8, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v1

    const-class v0, Z

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    .line 48903
    .local v7, "isCovered":[[Z
    const/4 v2, 0x0

    .line 48904
    .local v0, "xPos":I
    const/4 v1, 0x0

    .line 48905
    .local v6, "yPos":I
    const/4 v10, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v10, v8, :cond_0

    .line 48906
    invoke-virtual {p0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 48907
    .local v0, "r":Landroid/graphics/Rect;
    add-int/lit8 v4, v2, 0x1

    .end local v0    # "r":Landroid/graphics/Rect;
    .local v1, "xPos":I
    iget v0, v9, Landroid/graphics/Rect;->left:I

    aput v0, v7, v2

    .line 48908
    add-int/lit8 v3, v1, 0x1

    .end local v6    # "yPos":I
    .local v0, "yPos":I
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    aput v0, v6, v1

    .line 48909
    add-int/lit8 v2, v4, 0x1

    .end local v1    # "xPos":I
    .local v6, "xPos":I
    iget v0, v9, Landroid/graphics/Rect;->right:I

    aput v0, v7, v4

    .line 48910
    add-int/lit8 v1, v3, 0x1

    .end local v0    # "yPos":I
    .local v1, "yPos":I
    iget v0, v9, Landroid/graphics/Rect;->top:I

    aput v0, v6, v3

    .line 48911
    .end local v0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 48912
    .end local v1    # "yPos":I
    .end local v1
    .local v0, "xPos":I
    .local v6, "yPos":I
    :cond_0
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    .line 48913
    invoke-static {v6}, Ljava/util/Arrays;->sort([I)V

    .line 48914
    const/4 v11, 0x0

    .restart local v1    # "yPos":I
    :goto_1
    if-ge v11, v8, :cond_3

    .line 48915
    invoke-virtual {p0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 48916
    .restart local v0    # "xPos":I
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A09([II)I

    move-result v1

    .line 48917
    .local v1, "leftEdgeIndex":I
    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A09([II)I

    move-result v10

    .line 48918
    .local v0, "rightEdgeIndex":I
    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A09([II)I

    move-result v9

    .line 48919
    .local v5, "topEdgeIndex":I
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A09([II)I

    move-result v4

    .line 48920
    .local v5, "bottomEdgeIndex":I
    add-int/lit8 v3, v1, 0x1

    .local v2, "m":I
    :goto_2
    if-gt v3, v10, :cond_2

    .line 48921
    add-int/lit8 v2, v9, 0x1

    .local v1, "n":I
    :goto_3
    if-gt v2, v4, :cond_1

    .line 48922
    aget-object v1, v5, v3

    const/4 v0, 0x1

    aput-boolean v0, v1, v2

    .line 48923
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 48924
    .end local v1    # "n":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 48925
    .end local v0    # "rightEdgeIndex":I
    .end local v1
    .end local v0
    .end local v5    # "bottomEdgeIndex":I
    .end local v5
    .end local v2    # "m":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 48926
    .end local v1
    :cond_3
    const/4 v9, 0x0

    .line 48927
    .local v1, "area":I
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_4
    mul-int/lit8 v0, v8, 0x2

    if-ge v4, v0, :cond_6

    .line 48928
    const/4 v3, 0x0

    .local v1, "j":I
    :goto_5
    mul-int/lit8 v0, v8, 0x2

    if-ge v3, v0, :cond_5

    .line 48929
    aget-object v0, v5, v4

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_4

    aget v2, v7, v4

    add-int/lit8 v0, v4, -0x1

    aget v0, v7, v0

    sub-int/2addr v2, v0

    aget v1, v6, v3

    add-int/lit8 v0, v3, -0x1

    aget v0, v6, v0

    sub-int/2addr v1, v0

    mul-int/2addr v2, v1

    :goto_6
    add-int/2addr v9, v2

    .line 48930
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 48931
    :cond_4
    const/4 v2, 0x0

    goto :goto_6

    .line 48932
    .end local v1    # "j":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 48933
    .end local v0    # "i":I
    :cond_6
    return v9
.end method

.method public static A09([II)I
    .locals 4

    .line 48934
    const/4 v3, 0x0

    .line 48935
    .local p0, "low":I
    array-length v2, p0

    .line 48936
    .local p1, "high":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 48937
    sub-int v0, v2, v3

    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v3

    .line 48938
    .local v3, "mid":I
    aget v0, p0, v1

    if-ne v0, p1, :cond_0

    .line 48939
    return v1

    .line 48940
    :cond_0
    aget v0, p0, v1

    if-le v0, p1, :cond_1

    .line 48941
    move v2, v1

    goto :goto_0

    .line 48942
    :cond_1
    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    .line 48943
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Q9;J)J
    .locals 0

    .line 48944
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Q9;->A03:J

    return-wide p1
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Q9;)Landroid/os/Handler;
    .locals 0

    .line 48945
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0B:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Q9;)Landroid/view/View;
    .locals 0

    .line 48946
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0C:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/Kd;
    .locals 0

    .line 48947
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A04:Lcom/facebook/ads/redexgen/X/Kd;

    return-object p0
.end method

.method public static A0E(Landroid/view/View;ILcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/redexgen/X/QA;
    .locals 12

    .line 48948
    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 48949
    const/4 v4, 0x0

    const/16 v2, 0x1d8

    const/16 v1, 0x10

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 48950
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A07:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;)V

    return-object v0

    .line 48951
    :cond_0
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/J4;->A1i(Landroid/content/Context;)Z

    move-result v5

    const/16 v2, 0x216

    const/16 v1, 0x25

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x14b

    const/16 v1, 0x16

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_3

    .line 48952
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48953
    invoke-static {p0, v3, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 48954
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0J:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;)V

    return-object v0

    .line 48955
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Q9;->A0H:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Q9;->A0H:[Ljava/lang/String;

    const-string v1, "NobRvy4BnU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v5, :cond_6

    .line 48956
    invoke-static {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 48957
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0M:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48958
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 48959
    invoke-static {p0, v3, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 48960
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0G:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;)V

    return-object v0

    .line 48961
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Q9;->A0H:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Q9;->A0H:[Ljava/lang/String;

    const-string v1, "nxs5ab5SCgIt1bjehrDOKVWzL3WZqz6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "N9sY316uyLP0an2AsgJKvtC5gTj4eyT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v5, :cond_6

    .line 48962
    :goto_0
    invoke-static {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 48963
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0G:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;)V

    return-object v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Q9;->A0H:[Ljava/lang/String;

    const-string v1, "ovG54rbub0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "3miU82oxKB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v5, :cond_6

    goto :goto_0

    .line 48964
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 48965
    const/16 v2, 0x287

    const/16 v1, 0x25

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 48966
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0H:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;)V

    return-object v0

    .line 48967
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_9

    .line 48968
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x127

    const/16 v1, 0x24

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48969
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x1b

    const/4 v1, 0x4

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48970
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48971
    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 48972
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0F:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;)V

    return-object v0

    .line 48973
    :cond_9
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Q9;->A00(Landroid/view/View;)F

    move-result v1

    const v0, 0x3f666666    # 0.9f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_a

    .line 48974
    const/16 v2, 0x1e8

    const/16 v1, 0x1b

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 48975
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0A:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;)V

    return-object v0

    .line 48976
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Q9;->A0H:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_15

    .line 48977
    .local p0, "widthPixels":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Q9;->A0H:[Ljava/lang/String;

    const-string v1, "P7geMBqOxp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "ZGWxjrEaaX"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 48978
    .local v3, "heightPixels":I
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 48979
    .local v4, "location":[I
    :try_start_0
    invoke-virtual {p0, v8}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48980
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 48981
    .local v2, "targetRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 48982
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A06:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;)V

    return-object v0

    .line 48983
    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_c

    .line 48984
    const/16 v2, 0x2c9

    const/4 v1, 0x6

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Wm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 48985
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 48986
    .local v0, "display":Landroid/view/Display;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48987
    .local v1, "realMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 48988
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "realMetrics":Landroid/util/DisplayMetrics;
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    .restart local v1    # "metrics":Landroid/util/DisplayMetrics;
    .local v0, "visiblePercent":F
    :goto_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Q9;->A0K(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v1

    .line 48989
    .local v1, "rectVector":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/graphics/Rect;>;"
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Q9;->A08(Ljava/util/Vector;)I

    move-result v0

    .line 48990
    .local v0, "areaSize":I
    invoke-virtual {v1, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 48991
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Q9;->A08(Ljava/util/Vector;)I

    move-result v2

    sub-int/2addr v2, v0

    .line 48992
    .local v5, "targetVisibleAreaSize":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    mul-int/2addr v1, v0

    .line 48993
    .local v2, "targetAreaSize":I
    int-to-float v4, v2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v4, v0

    int-to-float v0, v1

    div-float/2addr v4, v0

    .line 48994
    .end local v0    # "areaSize":I
    .local v1, "visiblePercent":F
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/J4;->A1a(Landroid/content/Context;)Z

    move-result v1

    .line 48995
    .local v0, "checkByVisibleArea":Z
    invoke-static {p1, p0}, Lcom/facebook/ads/redexgen/X/Q9;->A01(ILandroid/view/View;)I

    move-result v3

    .line 48996
    .end local v1    # "visiblePercent":F
    .local v0, "mViewabilityThreshold":I
    int-to-float v2, v3

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v2, v0

    .line 48997
    .local p2, "visibleAreaThreshold":F
    if-eqz v1, :cond_d

    .line 48998
    cmpg-float v0, v4, v2

    if-gez v0, :cond_11

    .line 48999
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    .line 49000
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v0, 0x0

    .end local v0    # "mViewabilityThreshold":I
    .local v1, "checkByVisibleArea":Z
    aput-object v1, v3, v0

    .line 49001
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 49002
    const/16 v2, 0x23b

    const/16 v1, 0x4c

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 49003
    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 49004
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A03:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;F)V

    return-object v0

    .line 49005
    .end local v1    # "checkByVisibleArea":Z
    :cond_c
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Wm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    goto :goto_1

    .line 49006
    .end local v1
    .restart local v0    # "mViewabilityThreshold":I
    :cond_d
    const/4 v2, 0x0

    .end local v0    # "mViewabilityThreshold":I
    .restart local v1    # "checkByVisibleArea":Z
    aget v0, v8, v2

    if-ltz v0, :cond_e

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    aget v0, v8, v2

    sub-int/2addr v1, v0

    if-ge v1, v5, :cond_f

    .line 49007
    .end local p2    # "visibleAreaThreshold":F
    .end local p0    # "widthPixels":I
    .restart local p0    # "widthPixels":I
    .restart local v2    # "targetAreaSize":I
    :cond_e
    const/16 v2, 0x161

    const/16 v1, 0x2c

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 49008
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0C:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;F)V

    return-object v0

    .line 49009
    :cond_f
    int-to-double v5, v9

    .end local p2
    .end local p0    # "widthPixels":I
    .local p0, "visibleAreaThreshold":F
    .local v2, "widthPixels":I
    int-to-double v2, v3

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    sub-double v0, v10, v2

    mul-double/2addr v5, v0

    div-double/2addr v5, v10

    double-to-int v2, v5

    .line 49010
    .local p2, "verticalInvisibleThreshold":I
    iget v1, v7, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x1

    aget v0, v8, v0

    sub-int/2addr v1, v0

    if-le v1, v2, :cond_10

    .line 49011
    const/16 v2, 0x1b4

    const/16 v1, 0x24

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 49012
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0D:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;F)V

    return-object v0

    .line 49013
    :cond_10
    const/4 v0, 0x1

    aget v1, v8, v0

    add-int/2addr v1, v9

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 49014
    .local v0, "bottomDistance":I
    if-le v1, v2, :cond_11

    .line 49015
    const/16 v2, 0x18d

    const/16 v1, 0x27

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 49016
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0B:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;F)V

    return-object v0

    .line 49017
    .end local p2    # "verticalInvisibleThreshold":I
    .end local v0    # "bottomDistance":I
    :cond_11
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/M0;->A04(Lcom/facebook/ads/redexgen/X/Wm;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 49018
    const/16 v2, 0xb9

    const/16 v1, 0x1a

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 49019
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0K:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;F)V

    return-object v0

    .line 49020
    :cond_12
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/M1;->A01(Lcom/facebook/ads/redexgen/X/Wm;)Ljava/util/Map;

    move-result-object v3

    .line 49021
    .local p2, "windowInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Lk;->A04(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 49022
    const/16 v2, 0x9c

    const/16 v1, 0x1d

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 49023
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A09:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;F)V

    return-object v0

    .line 49024
    :cond_13
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/J4;->A1G(Landroid/content/Context;)Z

    move-result v0

    .line 49025
    .local p0, "blockLockScreens":Z
    if-eqz v0, :cond_14

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Lk;->A03(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 49026
    const/16 v2, 0x1f

    const/16 v1, 0x1f

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 49027
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A04:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;FLjava/util/Map;)V

    return-object v0

    .line 49028
    :cond_14
    const/16 v2, 0x203

    const/16 v1, 0x13

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 49029
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0I:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;FLjava/util/Map;)V

    return-object v0

    .line 49030
    .end local p0    # "blockLockScreens":Z
    .end local v2    # "widthPixels":I
    .end local v1    # "checkByVisibleArea":Z
    .end local v1
    .end local v0
    .end local v5    # "targetVisibleAreaSize":I
    .end local v2
    .end local v1
    .end local v0
    .end local v2
    .end local v1
    .restart local p0    # "blockLockScreens":Z
    .restart local v1    # "checkByVisibleArea":Z
    .end local p0    # "blockLockScreens":Z
    .restart local v2    # "widthPixels":I
    .local p0, "e":Ljava/lang/NullPointerException;
    :catch_0
    const/16 v2, 0x3e

    const/16 v1, 0x1e

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0O(Landroid/view/View;ZLjava/lang/String;)V

    .line 49031
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0F:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;)V

    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/QA;
    .locals 0

    .line 49032
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A05:Lcom/facebook/ads/redexgen/X/QA;

    return-object p0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/QA;
    .locals 0

    .line 49033
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q9;->A05:Lcom/facebook/ads/redexgen/X/QA;

    return-object p1
.end method

.method public static A0H(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Q9;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/Q9;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 49034
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0E:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/Q9;)Ljava/util/Map;
    .locals 0

    .line 49035
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A06:Ljava/util/Map;

    return-object p0
.end method

.method public static A0K(Landroid/view/View;)Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 49036
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 49037
    .local p0, "rectVector":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/graphics/Rect;>;"
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 49038
    return-object v3

    .line 49039
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 49040
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 49041
    .local v0, "childIndex":I
    add-int/lit8 v5, v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 49042
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Q9;->A0H:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_5

    .line 49043
    .local v4, "childView":Landroid/view/View;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Q9;->A0H:[Ljava/lang/String;

    const-string v1, "k1JcZ1wpbQO9ikEolBidSsMChjYk4Sl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "tjbQFFO1F8PkdaxFL56rw4qlI30x63G"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/Ow;

    const/4 v2, 0x0

    if-nez v0, :cond_4

    const/4 v1, 0x1

    .line 49044
    .local v4, "isNotMediationOverlay":Z
    :goto_1
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/RW;

    if-eqz v0, :cond_1

    .line 49045
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/QB;->A01(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 49046
    .local v0, "isNotDSLWebViewWithTransparentBackground":Z
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 49047
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Q9;->A0L(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 49048
    .end local v4    # "isNotMediationOverlay":Z
    .end local v4
    .end local v0    # "isNotDSLWebViewWithTransparentBackground":Z
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49049
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49050
    .end local v0
    :cond_6
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Q9;->A0K(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 49051
    return-object v3
.end method

.method public static A0L(Landroid/view/View;)Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 49052
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 49053
    .local p0, "visibleRectInView":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/graphics/Rect;>;"
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt v1, v0, :cond_1

    .line 49054
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    .line 49055
    .end local v2
    .end local v0
    :cond_0
    return-object v2

    .line 49056
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v5, 0xf5

    const/16 v4, 0x32

    sget-object v1, Lcom/facebook/ads/redexgen/X/Q9;->A0H:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_7

    sget-object v3, Lcom/facebook/ads/redexgen/X/Q9;->A0H:[Ljava/lang/String;

    const-string v1, "IkE0lymuYwIsZPrnhjlWmNJdNq4n"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const/16 v0, 0x6d

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49057
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 49058
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 49059
    .local v2, "isTransparentToolbar":Z
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 49060
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/QB;->A01(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    .line 49061
    :cond_2
    check-cast p0, Landroid/view/ViewGroup;

    .line 49062
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 49063
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0L(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 49064
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 49065
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 49066
    .end local v1    # "i":I
    :cond_4
    return-object v2

    .line 49067
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 49068
    .local v0, "viewRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49069
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 49070
    :cond_6
    return-object v2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0M()V
    .locals 1

    const/16 v0, 0x2cf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Q9;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0x6et
        0x76t
        0x73t
        0x7ct
        0x7ft
        -0x4ct
        0x73t
        0x73t
        0x77t
        0x6et
        -0x49t
        -0x3ft
        0x6et
        -0x79t
        -0x22t
        -0x30t
        -0x25t
        -0x31t
        -0x79t
        -0x27t
        -0x34t
        -0x38t
        -0x26t
        -0x2at
        -0x2bt
        -0x5ft
        -0x79t
        -0x45t
        -0x51t
        -0x9t
        -0x34t
        0x7et
        -0x5ft
        0x5dt
        -0x5at
        -0x50t
        0x5dt
        -0x54t
        -0x55t
        0x5dt
        -0x4ft
        -0x54t
        -0x53t
        0x5dt
        -0x54t
        -0x5dt
        0x5dt
        -0x4ft
        -0x5bt
        -0x5et
        0x5dt
        -0x77t
        -0x54t
        -0x60t
        -0x58t
        -0x50t
        -0x60t
        -0x51t
        -0x5et
        -0x5et
        -0x55t
        0x6bt
        -0x36t
        -0x18t
        -0xbt
        -0xbt
        -0xat
        -0x5t
        -0x59t
        -0x12t
        -0x14t
        -0x5t
        -0x59t
        -0xdt
        -0xat
        -0x16t
        -0x18t
        -0x5t
        -0x10t
        -0xat
        -0xbt
        -0x59t
        -0xat
        -0xbt
        -0x59t
        -0x6t
        -0x16t
        -0x7t
        -0x14t
        -0x14t
        -0xbt
        -0x4bt
        -0x2et
        -0x3t
        -0xdt
        0x1t
        -0x4t
        -0x4bt
        0x2t
        -0x52t
        -0x5t
        -0x11t
        -0x7t
        -0xdt
        -0x52t
        0x1t
        -0xdt
        -0x4t
        0x1t
        -0xdt
        -0x52t
        0x2t
        -0x3t
        -0x52t
        0x1t
        -0xdt
        0x2t
        -0x52t
        -0xft
        -0xat
        -0xdt
        -0xft
        -0x7t
        -0x52t
        -0x9t
        -0x4t
        0x2t
        -0xdt
        0x0t
        0x4t
        -0x11t
        -0x6t
        -0x52t
        -0xct
        -0x3t
        0x0t
        -0x52t
        -0x4t
        -0x3t
        -0x4t
        -0x45t
        0x0t
        -0xdt
        -0x2t
        -0xdt
        -0x11t
        0x2t
        -0x52t
        -0xft
        -0xat
        -0xdt
        -0xft
        -0x7t
        -0xdt
        0x0t
        -0x44t
        -0x3ct
        -0x22t
        -0xet
        -0x20t
        -0x12t
        -0x26t
        -0x15t
        -0x23t
        -0x67t
        -0x1et
        -0x14t
        -0x67t
        -0x18t
        -0x25t
        -0x14t
        -0x13t
        -0x15t
        -0x12t
        -0x24t
        -0x13t
        -0x1et
        -0x19t
        -0x20t
        -0x67t
        -0x11t
        -0x1et
        -0x22t
        -0x10t
        -0x59t
        -0x46t
        -0x36t
        -0x27t
        -0x34t
        -0x34t
        -0x2bt
        -0x79t
        -0x30t
        -0x26t
        -0x79t
        -0x2bt
        -0x2at
        -0x25t
        -0x79t
        -0x30t
        -0x2bt
        -0x25t
        -0x34t
        -0x27t
        -0x38t
        -0x36t
        -0x25t
        -0x30t
        -0x23t
        -0x34t
        -0x6bt
        -0x78t
        -0x64t
        -0x67t
        0x54t
        -0x58t
        -0x63t
        -0x69t
        -0x61t
        -0x67t
        -0x5at
        0x54t
        -0x69t
        -0x6bt
        -0x5et
        -0x5et
        -0x5dt
        -0x58t
        0x54t
        -0x6at
        -0x67t
        0x54t
        -0x5et
        -0x67t
        -0x65t
        -0x6bt
        -0x58t
        -0x63t
        -0x56t
        -0x67t
        -0x67t
        -0x54t
        -0x58t
        -0x46t
        0x63t
        -0x10t
        -0x4t
        -0x6t
        -0x45t
        -0xdt
        -0x12t
        -0x10t
        -0xet
        -0x11t
        -0x4t
        -0x4t
        -0x8t
        -0x45t
        -0x12t
        -0xft
        0x0t
        -0x45t
        -0xat
        -0x5t
        0x1t
        -0xet
        -0x1t
        -0x5t
        -0x12t
        -0x7t
        -0x45t
        0x3t
        -0xat
        -0xet
        0x4t
        -0x45t
        -0x2dt
        0x2t
        -0x7t
        -0x7t
        -0x20t
        -0x10t
        -0x1t
        -0xet
        -0xet
        -0x5t
        -0x32t
        -0xft
        -0x1ft
        -0x4t
        -0x4t
        -0x7t
        -0x11t
        -0x12t
        -0x1t
        -0x3t
        -0x2ft
        -0xct
        -0x1at
        -0x7t
        -0xbt
        0x7t
        -0x50t
        -0x8t
        -0xft
        0x3t
        -0x50t
        -0x7t
        -0x2t
        0x6t
        -0x7t
        0x3t
        -0x7t
        -0xet
        -0x4t
        -0xbt
        -0x50t
        -0xct
        -0x7t
        -0x3t
        -0xbt
        -0x2t
        0x3t
        -0x7t
        -0x1t
        -0x2t
        0x3t
        -0x50t
        -0x48t
        0x7t
        -0x33t
        -0x28t
        -0x54t
        -0x31t
        -0x3ft
        -0x2ct
        -0x30t
        -0x1et
        -0x75t
        -0x2dt
        -0x34t
        -0x22t
        -0x75t
        -0x27t
        -0x26t
        -0x75t
        -0x25t
        -0x34t
        -0x23t
        -0x30t
        -0x27t
        -0x21t
        -0x67t
        -0x56t
        0x7et
        -0x5ft
        -0x6dt
        -0x5at
        -0x5et
        -0x4ct
        0x5dt
        -0x5at
        -0x50t
        0x5dt
        -0x55t
        -0x54t
        -0x4ft
        0x5dt
        -0x5dt
        -0x4et
        -0x57t
        -0x57t
        -0x4at
        0x5dt
        -0x54t
        -0x55t
        0x5dt
        -0x50t
        -0x60t
        -0x51t
        -0x5et
        -0x5et
        -0x55t
        0x5dt
        -0x5bt
        -0x54t
        -0x51t
        -0x5at
        -0x49t
        -0x54t
        -0x55t
        -0x4ft
        -0x62t
        -0x57t
        -0x57t
        -0x4at
        0x6bt
        -0x57t
        0x7dt
        -0x60t
        -0x6et
        -0x5bt
        -0x5ft
        -0x4dt
        0x5ct
        -0x5bt
        -0x51t
        0x5ct
        -0x56t
        -0x55t
        -0x50t
        0x5ct
        -0x4et
        -0x5bt
        -0x51t
        -0x5bt
        -0x62t
        -0x58t
        -0x5ft
        0x5ct
        -0x5et
        -0x52t
        -0x55t
        -0x57t
        0x5ct
        -0x50t
        -0x5ct
        -0x5ft
        0x5ct
        -0x62t
        -0x55t
        -0x50t
        -0x50t
        -0x55t
        -0x57t
        0x6at
        -0x43t
        -0x6ft
        -0x4ct
        -0x5at
        -0x47t
        -0x4bt
        -0x39t
        0x70t
        -0x47t
        -0x3dt
        0x70t
        -0x42t
        -0x41t
        -0x3ct
        0x70t
        -0x3at
        -0x47t
        -0x3dt
        -0x47t
        -0x4et
        -0x44t
        -0x4bt
        0x70t
        -0x4at
        -0x3et
        -0x41t
        -0x43t
        0x70t
        -0x3ct
        -0x48t
        -0x4bt
        0x70t
        -0x3ct
        -0x41t
        -0x40t
        0x7et
        0xat
        -0x22t
        0x1t
        -0xdt
        0x6t
        0x2t
        0x14t
        -0x43t
        0x6t
        0x10t
        -0x43t
        0xbt
        0x12t
        0x9t
        0x9t
        -0x35t
        -0x54t
        -0x80t
        -0x5dt
        -0x6bt
        -0x58t
        -0x5ct
        -0x4at
        0x5ft
        -0x58t
        -0x4et
        0x5ft
        -0x4dt
        -0x52t
        -0x52t
        0x5ft
        -0x4dt
        -0x4ft
        -0x60t
        -0x53t
        -0x4et
        -0x51t
        -0x60t
        -0x4ft
        -0x5ct
        -0x53t
        -0x4dt
        0x6dt
        -0x5et
        0x76t
        -0x67t
        -0x75t
        -0x62t
        -0x66t
        -0x54t
        0x55t
        -0x62t
        -0x58t
        0x55t
        -0x55t
        -0x62t
        -0x58t
        -0x62t
        -0x69t
        -0x5ft
        -0x66t
        0x63t
        -0x6ft
        0x65t
        -0x78t
        0x7at
        -0x73t
        -0x77t
        -0x65t
        0x44t
        -0x6ct
        -0x7bt
        -0x6at
        -0x77t
        -0x6et
        -0x68t
        0x44t
        -0x73t
        -0x69t
        0x44t
        -0x6et
        -0x6dt
        -0x68t
        0x44t
        -0x69t
        -0x77t
        -0x68t
        0x44t
        -0x68t
        -0x6dt
        0x44t
        0x7at
        0x6dt
        0x77t
        0x6dt
        0x66t
        0x70t
        0x69t
        0x52t
        -0x29t
        -0x55t
        -0x32t
        -0x40t
        -0x2dt
        -0x31t
        -0x1ft
        -0x76t
        -0x20t
        -0x2dt
        -0x23t
        -0x2dt
        -0x34t
        -0x2at
        -0x31t
        -0x76t
        -0x35t
        -0x24t
        -0x31t
        -0x35t
        -0x76t
        -0x2dt
        -0x23t
        -0x76t
        -0x22t
        -0x27t
        -0x27t
        -0x76t
        -0x23t
        -0x29t
        -0x35t
        -0x2at
        -0x2at
        -0x76t
        -0x3bt
        -0x71t
        -0x68t
        -0x64t
        -0x30t
        -0x71t
        -0x71t
        -0x76t
        -0x20t
        -0x2dt
        -0x23t
        -0x2dt
        -0x34t
        -0x2at
        -0x31t
        -0x6at
        -0x76t
        -0x33t
        -0x21t
        -0x24t
        -0x24t
        -0x31t
        -0x28t
        -0x22t
        -0x76t
        -0x22t
        -0x2et
        -0x24t
        -0x31t
        -0x23t
        -0x2et
        -0x27t
        -0x2at
        -0x32t
        -0x76t
        -0x71t
        -0x68t
        -0x64t
        -0x30t
        -0x71t
        -0x71t
        -0x39t
        -0x69t
        0x6bt
        -0x72t
        -0x80t
        -0x6dt
        -0x71t
        -0x5ft
        0x4at
        -0x5ft
        -0x6dt
        -0x68t
        -0x72t
        -0x67t
        -0x5ft
        0x4at
        -0x6dt
        -0x63t
        0x4at
        -0x68t
        -0x67t
        -0x62t
        0x4at
        -0x63t
        -0x71t
        -0x62t
        0x4at
        -0x62t
        -0x67t
        0x4at
        -0x80t
        0x73t
        0x7dt
        0x73t
        0x6ct
        0x76t
        0x6ft
        0x58t
        -0x15t
        -0x14t
        -0xft
        -0x63t
        -0xdt
        -0x1at
        -0x1et
        -0xct
        -0x22t
        -0x21t
        -0x17t
        -0x1et
        0x15t
        0x7t
        -0x5dt
        -0x6at
        -0x6et
        -0x5ct
        -0x72t
        -0x71t
        -0x67t
        -0x6et
        -0x39t
        -0x3ft
        -0x33t
        -0x37t
        -0x46t
        -0x49t
        -0x4bt
        -0x1ct
        -0x2at
        -0x25t
        -0x2ft
        -0x24t
        -0x1ct
    .end array-data
.end method

.method public static A0N()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YuGvtiviQVR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZhJp0z4dUN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YWv4zGcwogafSGFsXYmLIXL4tbjSTGT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UM7SABu2ufM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2gPy2hJr9M"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yZRmnvTn4zHntgpYIACfXRb3ExDVKnv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qUSRIBeTtwG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WSvVNugGHbUgKJE0aBRLXmETVgvdQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Q9;->A0H:[Ljava/lang/String;

    return-void
.end method

.method public static A0O(Landroid/view/View;ZLjava/lang/String;)V
    .locals 4

    .line 49071
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf0

    const/4 v1, 0x5

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    const/4 v1, 0x4

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49073
    if-eqz p1, :cond_1

    const/16 v2, 0x2ba

    const/16 v1, 0x8

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    const/16 v1, 0xe

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49074
    :cond_0
    return-void

    .line 49075
    :cond_1
    const/16 v2, 0x2ac

    const/16 v1, 0xc

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/Q9;)Z
    .locals 0

    .line 49076
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A08:Z

    return p0
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/Q9;)Z
    .locals 0

    .line 49077
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A07:Z

    return p0
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/Q9;)Z
    .locals 0

    .line 49078
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0F:Z

    return p0
.end method


# virtual methods
.method public final declared-synchronized A0S()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 49079
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0Q;->values()[Lcom/facebook/ads/redexgen/X/0Q;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A05:Lcom/facebook/ads/redexgen/X/QA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A01()I

    move-result v0

    aget-object v0, v1, v0

    .line 49080
    .local p0, "resultCode":Lcom/facebook/ads/redexgen/X/0Q;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0Q;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A05:Lcom/facebook/ads/redexgen/X/QA;

    .line 49081
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A00()F

    move-result v1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v5, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49082
    monitor-exit p0

    return-object v0

    .line 49083
    .end local p0    # "resultCode":Lcom/facebook/ads/redexgen/X/0Q;
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0T()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 49084
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 49085
    .local p0, "viewabilityData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x2c4

    const/4 v1, 0x3

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A05:Lcom/facebook/ads/redexgen/X/QA;

    .line 49086
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 49087
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49088
    const/16 v2, 0x2c2

    const/4 v1, 0x2

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A05:Lcom/facebook/ads/redexgen/X/QA;

    .line 49089
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A00()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 49090
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49091
    const/16 v2, 0x2b8

    const/4 v1, 0x2

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q9;->A06:Ljava/util/Map;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 49092
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49093
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49094
    const/16 v2, 0x2c7

    const/4 v1, 0x2

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A03:J

    .line 49095
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A05(J)Ljava/lang/String;

    move-result-object v0

    .line 49096
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A05:Lcom/facebook/ads/redexgen/X/QA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A03()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49098
    monitor-exit p0

    return-object v3

    .line 49099
    .end local p0    # "viewabilityData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0U()V
    .locals 2

    monitor-enter p0

    .line 49100
    :try_start_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0L:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A05:Lcom/facebook/ads/redexgen/X/QA;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49101
    monitor-exit p0

    return-void

    .line 49102
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0V()V
    .locals 4

    monitor-enter p0

    .line 49103
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A04:Lcom/facebook/ads/redexgen/X/Kd;

    if-eqz v0, :cond_0

    .line 49104
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Q9;->A0W()V

    .line 49105
    .end local v0
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A07:Z

    if-eqz v0, :cond_1

    .line 49106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0D:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A35()V

    .line 49107
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0D:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/5n;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/5n;-><init>(Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A04:Lcom/facebook/ads/redexgen/X/Kd;

    .line 49108
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0B:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Q9;->A04:Lcom/facebook/ads/redexgen/X/Kd;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A01:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A08:Z

    .line 49110
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A00:I

    .line 49111
    sget-object v1, Lcom/facebook/ads/redexgen/X/0Q;->A0L:Lcom/facebook/ads/redexgen/X/0Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A05:Lcom/facebook/ads/redexgen/X/QA;

    .line 49112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A06:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49113
    monitor-exit p0

    return-void

    .line 49114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0W()V
    .locals 2

    monitor-enter p0

    .line 49115
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A07:Z

    if-eqz v0, :cond_0

    .line 49116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0D:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A36()V

    .line 49117
    .end local v0
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0B:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A04:Lcom/facebook/ads/redexgen/X/Kd;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A04:Lcom/facebook/ads/redexgen/X/Kd;

    .line 49119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A08:Z

    .line 49120
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A00:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49121
    monitor-exit p0

    return-void

    .line 49122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0X(I)V
    .locals 0

    .line 49123
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Q9;->A01:I

    .line 49124
    return-void
.end method

.method public final A0Y(I)V
    .locals 4

    .line 49125
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Q9;->A0F:Z

    if-nez v0, :cond_0

    .line 49126
    sget-object v3, Lcom/facebook/ads/redexgen/X/Q9;->A0I:Ljava/lang/String;

    const/16 v2, 0x5c

    const/16 v1, 0x40

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49127
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Q9;->A02:I

    .line 49128
    return-void
.end method

.method public final A0Z(Z)V
    .locals 0

    .line 49129
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Q9;->A07:Z

    .line 49130
    return-void
.end method

.method public final declared-synchronized A0a()Z
    .locals 4

    monitor-enter p0

    .line 49131
    :try_start_0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Q9;->A08:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Q9;->A0H:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Q9;->A0H:[Ljava/lang/String;

    const-string v1, "nCDO09axiAAyujtLFSviu2SPtHLEwBx"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "9TpflqqYzlCJa8MFZnORB2758ekEBQR"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    .end local v3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
