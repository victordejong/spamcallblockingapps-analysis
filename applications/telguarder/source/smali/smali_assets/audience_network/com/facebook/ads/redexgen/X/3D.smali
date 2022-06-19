.class public Lcom/facebook/ads/redexgen/X/3D;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3C;,
        Lcom/facebook/ads/redexgen/X/36;,
        Lcom/facebook/ads/redexgen/X/3A;,
        Lcom/facebook/ads/redexgen/X/b4;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$DecorView;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$OnAdapterChangeListener;,
        Lcom/facebook/ads/redexgen/X/39;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Lcom/facebook/ads/redexgen/X/38;,
        Lcom/facebook/ads/redexgen/X/35;
    }
.end annotation


# static fields
.field public static A0u:[B

.field public static A0v:[Ljava/lang/String;

.field public static final A0w:[I

.field public static final A0x:Landroid/view/animation/Interpolator;

.field public static final A0y:Lcom/facebook/ads/redexgen/X/3C;

.field public static final A0z:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/35;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/2k;

.field public A02:F

.field public A03:F

.field public A04:F

.field public A05:F

.field public A06:F

.field public A07:F

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:I

.field public A0F:I

.field public A0G:I

.field public A0H:I

.field public A0I:I

.field public A0J:I

.field public A0K:I

.field public A0L:I

.field public A0M:I

.field public A0N:I

.field public A0O:I

.field public A0P:I

.field public A0Q:I

.field public A0R:I

.field public A0S:Landroid/graphics/drawable/Drawable;

.field public A0T:Landroid/os/Parcelable;

.field public A0U:Landroid/view/VelocityTracker;

.field public A0V:Landroid/widget/EdgeEffect;

.field public A0W:Landroid/widget/EdgeEffect;

.field public A0X:Landroid/widget/Scroller;

.field public A0Y:Lcom/facebook/ads/redexgen/X/38;

.field public A0Z:Lcom/facebook/ads/redexgen/X/38;

.field public A0a:Lcom/facebook/ads/redexgen/X/39;

.field public A0b:Lcom/facebook/ads/redexgen/X/3A;

.field public A0c:Ljava/lang/ClassLoader;

.field public A0d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public A0e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public A0f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/38;",
            ">;"
        }
    .end annotation
.end field

.field public A0g:Z

.field public A0h:Z

.field public A0i:Z

.field public A0j:Z

.field public A0k:Z

.field public A0l:Z

.field public A0m:Z

.field public A0n:Z

.field public A0o:Z

.field public A0p:Z

.field public final A0q:Landroid/graphics/Rect;

.field public final A0r:Lcom/facebook/ads/redexgen/X/35;

.field public final A0s:Ljava/lang/Runnable;

.field public final A0t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/35;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 6920
    invoke-static {}, Lcom/facebook/ads/redexgen/X/3D;->A0D()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3D;->A0C()V

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v1, 0x0

    const v0, 0x10100b3

    aput v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0w:[I

    .line 6921
    new-instance v0, Lcom/facebook/ads/redexgen/X/31;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/31;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3D;->A0z:Ljava/util/Comparator;

    .line 6922
    new-instance v0, Lcom/facebook/ads/redexgen/X/32;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/32;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3D;->A0x:Landroid/view/animation/Interpolator;

    .line 6923
    new-instance v0, Lcom/facebook/ads/redexgen/X/3C;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3C;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3D;->A0y:Lcom/facebook/ads/redexgen/X/3C;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 6924
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 6925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    .line 6926
    new-instance v0, Lcom/facebook/ads/redexgen/X/35;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/35;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0r:Lcom/facebook/ads/redexgen/X/35;

    .line 6927
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0q:Landroid/graphics/Rect;

    .line 6928
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0O:I

    .line 6929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0T:Landroid/os/Parcelable;

    .line 6930
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0c:Ljava/lang/ClassLoader;

    .line 6931
    const v0, -0x800001

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:F

    .line 6932
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    .line 6933
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0L:I

    .line 6934
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 6935
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    .line 6936
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0n:Z

    .line 6937
    new-instance v0, Lcom/facebook/ads/redexgen/X/33;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/33;-><init>(Lcom/facebook/ads/redexgen/X/3D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0s:Ljava/lang/Runnable;

    .line 6938
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0P:I

    .line 6939
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0E()V

    .line 6940
    return-void
.end method

.method private final A00(F)F
    .locals 3

    .line 6941
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 6942
    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    .line 6943
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v0, v1

    return v0
.end method

.method private A01(IFII)I
    .locals 3

    .line 6944
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0H:I

    if-le v1, v0, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0K:I

    if-le v1, v0, :cond_2

    .line 6945
    if-lez p3, :cond_1

    .line 6946
    .local p0, "targetPage":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6947
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/35;

    .line 6948
    .local p1, "firstItem":Lcom/facebook/ads/redexgen/X/35;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/35;

    .line 6949
    .local p2, "lastItem":Lcom/facebook/ads/redexgen/X/35;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6950
    .end local p1    # "firstItem":Lcom/facebook/ads/redexgen/X/35;
    .end local p2    # "lastItem":Lcom/facebook/ads/redexgen/X/35;
    :cond_0
    return p1

    .line 6951
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6952
    .end local p0    # "targetPage":I
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-lt p1, v0, :cond_3

    const v0, 0x3ecccccd    # 0.4f

    .line 6953
    .local p0, "truncator":F
    :goto_1
    add-float/2addr p2, v0

    float-to-int v0, p2

    add-int/2addr p1, v0

    goto :goto_0

    .line 6954
    :cond_3
    const v0, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private A02(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5

    .line 6955
    if-nez p1, :cond_0

    .line 6956
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 6957
    :cond_0
    if-nez p2, :cond_1

    .line 6958
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 6959
    return-object p1

    .line 6960
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 6961
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 6962
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 6963
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 6964
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 6965
    .local p0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v0, v4, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    if-eq v4, p0, :cond_3

    .line 6966
    check-cast v4, Landroid/view/ViewGroup;

    .line 6967
    .local p1, "group":Landroid/view/ViewGroup;
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 6968
    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 6969
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 6970
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "TxsWzRbkVVm53KJb0hYxYLTaFP4RvuCR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "7IWTmTKlEE0GT3GusYYvAPWFxogbhPhf"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    add-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 6971
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 6972
    .end local p1    # "group":Landroid/view/ViewGroup;
    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6973
    :cond_3
    return-object p1
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/35;
    .locals 11

    .line 6974
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v1

    .line 6975
    .local p0, "width":I
    const/4 v6, 0x0

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v0

    int-to-float v7, v0

    int-to-float v0, v1

    div-float/2addr v7, v0

    .line 6976
    .local v6, "scrollOffset":F
    :goto_0
    if-lez v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    int-to-float v6, v0

    int-to-float v0, v1

    div-float/2addr v6, v0

    .line 6977
    .local v1, "marginOffset":F
    :cond_0
    const/4 v8, -0x1

    .line 6978
    .local v0, "lastPos":I
    const/4 v3, 0x0

    .line 6979
    .local v7, "lastOffset":F
    const/4 v2, 0x0

    .line 6980
    .local v0, "lastWidth":F
    const/4 v10, 0x1

    .line 6981
    .local v7, "first":Z
    const/4 v9, 0x0

    .line 6982
    .local v0, "lastItem":Lcom/facebook/ads/redexgen/X/35;
    const/4 v5, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_8

    .line 6983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/35;

    .line 6984
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-nez v10, :cond_1

    iget v1, v4, Lcom/facebook/ads/redexgen/X/35;->A02:I

    add-int/lit8 v0, v8, 0x1

    if-eq v1, v0, :cond_1

    .line 6985
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/3D;->A0r:Lcom/facebook/ads/redexgen/X/35;

    .line 6986
    add-float/2addr v3, v2

    add-float/2addr v3, v6

    iput v3, v4, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 6987
    add-int/lit8 v0, v8, 0x1

    iput v0, v4, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 6988
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/35;->A02:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/35;->A01:F

    .line 6989
    add-int/lit8 v5, v5, -0x1

    .line 6990
    :cond_1
    iget v3, v4, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 6991
    .local v8, "offset":F
    .local v3, "leftBound":F
    iget v8, v4, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v8, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "anv8UthCgv3bxkb"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-float/2addr v8, v6

    .line 6992
    .local v2, "rightBound":F
    if-nez v10, :cond_3

    cmpl-float v0, v7, v3

    if-ltz v0, :cond_7

    .line 6993
    :cond_3
    cmpg-float v0, v7, v8

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v5, v0, :cond_5

    .line 6994
    .restart local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .restart local v8    # "offset":F
    .restart local v3    # "leftBound":F
    .restart local v2    # "rightBound":F
    :cond_4
    return-object v4

    .line 6995
    :cond_5
    const/4 v10, 0x0

    .line 6996
    iget v8, v4, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 6997
    iget v2, v4, Lcom/facebook/ads/redexgen/X/35;->A01:F

    .line 6998
    move-object v9, v4

    .line 6999
    .end local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .end local v8    # "offset":F
    .end local v3    # "leftBound":F
    .end local v2    # "rightBound":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7000
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 7001
    :cond_7
    return-object v9

    .line 7002
    .end local v6    # "i":I
    .end local v0
    .end local v8
    .end local v3
    .end local v2
    :cond_8
    return-object v9
.end method

.method private final A04(I)Lcom/facebook/ads/redexgen/X/35;
    .locals 6

    .line 7003
    const/4 v5, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    .line 7004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/35;

    .line 7005
    .local p1, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget v3, v4, Lcom/facebook/ads/redexgen/X/35;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "FTW8lMLV1WF1uT7A98mx1WW44JTpX4mD"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "8smTuGxWqqiqky02WbAruJcj0nAU8eAT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v3, p1, :cond_0

    .line 7006
    return-object v4

    .line 7007
    .end local p1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7008
    .end local p0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private final A05(II)Lcom/facebook/ads/redexgen/X/35;
    .locals 2

    .line 7009
    new-instance v1, Lcom/facebook/ads/redexgen/X/35;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/35;-><init>()V

    .line 7010
    .local p0, "ii":Lcom/facebook/ads/redexgen/X/35;
    iput p1, v1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 7011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/2k;->A08(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/35;->A03:Ljava/lang/Object;

    .line 7012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/35;->A01:F

    .line 7013
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 7014
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7015
    :goto_0
    return-object v1

    .line 7016
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private final A06(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;
    .locals 4

    .line 7017
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "Cp8HLsoEDfOeEYMqWHrr049HoHROoinV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "T0VfZL8wtEwZV1iGxV5Hd4QPubsH4Hu8"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .local p1, "parent":Landroid/view/ViewParent;
    if-eq v3, p0, :cond_3

    .line 7018
    if-eqz v3, :cond_1

    instance-of v0, v3, Landroid/view/View;

    if-nez v0, :cond_2

    .line 7019
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 7020
    :cond_2
    move-object p1, v3

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 7021
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    return-object v0
.end method

.method private final A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;
    .locals 4

    .line 7022
    const/4 v3, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 7023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/35;

    .line 7024
    .local p1, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/35;->A03:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A0C(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7025
    return-object v2

    .line 7026
    .end local p1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7027
    .end local p0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0u:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x71

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A09()V
    .locals 1

    .line 7028
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    .line 7029
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0m:Z

    .line 7030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 7031
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 7032
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    .line 7033
    :cond_0
    return-void
.end method

.method private A0A()V
    .locals 2

    .line 7034
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 7035
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7036
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/36;

    .line 7037
    .local v0, "lp":Lcom/facebook/ads/redexgen/X/36;
    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_0

    .line 7038
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->removeViewAt(I)V

    .line 7039
    add-int/lit8 v1, v1, -0x1

    .line 7040
    .end local v1    # "child":Landroid/view/View;
    .end local v0    # "lp":Lcom/facebook/ads/redexgen/X/36;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7041
    .end local p0    # "i":I
    :cond_1
    return-void
.end method

.method private A0B()V
    .locals 4

    .line 7042
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0F:I

    if-eqz v0, :cond_2

    .line 7043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 7044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0d:Ljava/util/ArrayList;

    .line 7045
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v3

    .line 7046
    .local p0, "childCount":I
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 7047
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7048
    .local v0, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7049
    .end local v0    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7050
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 7051
    .end local v0
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0d:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/3D;->A0y:Lcom/facebook/ads/redexgen/X/3C;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7052
    .end local p0    # "childCount":I
    :cond_2
    return-void
.end method

.method public static A0C()V
    .locals 1

    const/16 v0, 0x1b2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3D;->A0u:[B

    return-void

    :array_0
    .array-data 1
        -0x20t
        -0x3t
        -0x2t
        -0x20t
        -0x6t
        0x2at
        0x3bt
        0x41t
        0x3ft
        0x4ct
        -0x6t
        0x3dt
        0x46t
        0x3bt
        0x4dt
        0x4dt
        0x14t
        -0x6t
        -0x58t
        -0x28t
        -0x17t
        -0x11t
        -0x13t
        -0x6t
        -0x58t
        -0xft
        -0x14t
        -0x3et
        -0x58t
        0xbt
        0x3bt
        0x5dt
        0x5at
        0x4dt
        0x57t
        0x50t
        0x58t
        0x4ct
        0x5ft
        0x54t
        0x4et
        0xbt
        0x4ct
        0x4ft
        0x4ct
        0x5bt
        0x5ft
        0x50t
        0x5dt
        0x25t
        0xbt
        -0x42t
        0x12t
        0xdt
        0xdt
        -0x42t
        0x11t
        0xbt
        -0x1t
        0xat
        0xat
        -0x27t
        -0x42t
        0x2t
        0x3t
        0x4t
        -0x1t
        0x13t
        0xat
        0x12t
        0x7t
        0xct
        0x5t
        -0x42t
        0x12t
        0xdt
        -0x42t
        0x10t
        0x4t
        0x4at
        0x53t
        0x59t
        0x52t
        0x48t
        0x1et
        0x4t
        -0x31t
        -0x13t
        -0x6t
        -0x6t
        -0x5t
        0x0t
        -0x54t
        -0x13t
        -0x10t
        -0x10t
        -0x54t
        -0x4t
        -0x13t
        -0xdt
        -0xft
        -0x2t
        -0x54t
        -0x10t
        -0xft
        -0x11t
        -0x5t
        -0x2t
        -0x54t
        0x2t
        -0xbt
        -0xft
        0x3t
        -0x54t
        -0x10t
        0x1t
        -0x2t
        -0xbt
        -0x6t
        -0xdt
        -0x54t
        -0x8t
        -0x13t
        0x5t
        -0x5t
        0x1t
        0x0t
        0x3dt
        0x50t
        0x5ct
        0x60t
        0x50t
        0x5et
        0x5ft
        0x50t
        0x4ft
        0xbt
        0x5at
        0x51t
        0x51t
        0x5et
        0x4et
        0x5dt
        0x50t
        0x50t
        0x59t
        0xbt
        0x5bt
        0x4ct
        0x52t
        0x50t
        0xbt
        0x57t
        0x54t
        0x58t
        0x54t
        0x5ft
        0xbt
        -0x39t
        -0x25t
        -0x28t
        -0x6dt
        -0x2ct
        -0x1dt
        -0x1dt
        -0x21t
        -0x24t
        -0x2at
        -0x2ct
        -0x19t
        -0x24t
        -0x1et
        -0x1ft
        -0x66t
        -0x1at
        -0x6dt
        -0x3dt
        -0x2ct
        -0x26t
        -0x28t
        -0x1bt
        -0x4ct
        -0x29t
        -0x2ct
        -0x1dt
        -0x19t
        -0x28t
        -0x1bt
        -0x6dt
        -0x2at
        -0x25t
        -0x2ct
        -0x1ft
        -0x26t
        -0x28t
        -0x29t
        -0x6dt
        -0x19t
        -0x25t
        -0x28t
        -0x6dt
        -0x2ct
        -0x29t
        -0x2ct
        -0x1dt
        -0x19t
        -0x28t
        -0x1bt
        -0x66t
        -0x1at
        -0x6dt
        -0x2at
        -0x1et
        -0x1ft
        -0x19t
        -0x28t
        -0x1ft
        -0x19t
        -0x1at
        -0x6dt
        -0x16t
        -0x24t
        -0x19t
        -0x25t
        -0x1et
        -0x18t
        -0x19t
        -0x6dt
        -0x2at
        -0x2ct
        -0x21t
        -0x21t
        -0x24t
        -0x1ft
        -0x26t
        -0x6dt
        -0x3dt
        -0x2ct
        -0x26t
        -0x28t
        -0x1bt
        -0x4ct
        -0x29t
        -0x2ct
        -0x1dt
        -0x19t
        -0x28t
        -0x1bt
        -0x6at
        -0x1ft
        -0x1et
        -0x19t
        -0x24t
        -0x27t
        -0x14t
        -0x49t
        -0x2ct
        -0x19t
        -0x2ct
        -0x3at
        -0x28t
        -0x19t
        -0x4at
        -0x25t
        -0x2ct
        -0x1ft
        -0x26t
        -0x28t
        -0x29t
        -0x6ct
        -0x6dt
        -0x48t
        -0x15t
        -0x1dt
        -0x28t
        -0x2at
        -0x19t
        -0x28t
        -0x29t
        -0x6dt
        -0x2ct
        -0x29t
        -0x2ct
        -0x1dt
        -0x19t
        -0x28t
        -0x1bt
        -0x6dt
        -0x24t
        -0x19t
        -0x28t
        -0x20t
        -0x6dt
        -0x2at
        -0x1et
        -0x18t
        -0x1ft
        -0x19t
        -0x53t
        -0x6dt
        0x10t
        0x23t
        0x1ft
        0x31t
        0xat
        0x1bt
        0x21t
        0x1ft
        0x2ct
        -0x3t
        0xet
        0xet
        0xbt
        0x13t
        -0x11t
        -0x1t
        0xet
        0xbt
        0x8t
        0x8t
        -0x44t
        0x10t
        0xet
        0x5t
        0x1t
        0x0t
        -0x44t
        0x10t
        0xbt
        -0x44t
        0x2t
        0x5t
        0xat
        0x0t
        -0x44t
        0x2t
        0xbt
        -0x1t
        0x11t
        0xft
        -0x44t
        -0x2t
        -0x3t
        0xft
        0x1t
        0x0t
        -0x44t
        0xbt
        0xat
        -0x44t
        0xat
        0xbt
        0xat
        -0x37t
        -0x1t
        0x4t
        0x5t
        0x8t
        0x0t
        -0x44t
        -0x1t
        0x11t
        0xet
        0xet
        0x1t
        0xat
        0x10t
        -0x44t
        0x2t
        0xbt
        -0x1t
        0x11t
        0xft
        0x1t
        0x0t
        -0x44t
        0x12t
        0x5t
        0x1t
        0x13t
        -0x44t
        0x43t
        0x42t
        0x24t
        0x35t
        0x3bt
        0x39t
        0x27t
        0x37t
        0x46t
        0x43t
        0x40t
        0x40t
        0x39t
        0x38t
        -0xct
        0x38t
        0x3dt
        0x38t
        -0xct
        0x42t
        0x43t
        0x48t
        -0xct
        0x37t
        0x35t
        0x40t
        0x40t
        -0xct
        0x47t
        0x49t
        0x44t
        0x39t
        0x46t
        0x37t
        0x40t
        0x35t
        0x47t
        0x47t
        -0xct
        0x3dt
        0x41t
        0x44t
        0x40t
        0x39t
        0x41t
        0x39t
        0x42t
        0x48t
        0x35t
        0x48t
        0x3dt
        0x43t
        0x42t
    .end array-data
.end method

.method public static A0D()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "e0WzfCgg5XcVfGi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ISw7K0NC0JjGKw3aqLZnEeCyQmnJarTP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Hy7VicQaJFFlWaz3OdTjA4ZWS7Vff8v7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WcFZxi67WO2ZtzqmgJX02c4dryVYoE5T"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rF0iooiSTOADQgiXw4j324HAbDkNAAle"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vgT88YiEWUZNicvmty9GpsXkAZSLF8rx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LdGmA2eGd1B3SK0OmViQAh3pNWcZcixS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9ZqOeGgvX4TfhHbWbTIbZxI4Pt81j06N"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    return-void
.end method

.method private final A0E()V
    .locals 5

    .line 7053
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->setWillNotDraw(Z)V

    .line 7054
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->setDescendantFocusability(I)V

    .line 7055
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->setFocusable(Z)V

    .line 7056
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 7057
    .local v0, "context":Landroid/content/Context;
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0x:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, v4, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    .line 7058
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 7059
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 7060
    .local v1, "density":F
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    .line 7061
    const/high16 v0, 0x43c80000    # 400.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0K:I

    .line 7062
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0J:I

    .line 7063
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, v4}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    .line 7064
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, v4}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    .line 7065
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0H:I

    .line 7066
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0C:I

    .line 7067
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0E:I

    .line 7068
    new-instance v0, Lcom/facebook/ads/redexgen/X/b4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/b4;-><init>(Lcom/facebook/ads/redexgen/X/3D;)V

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/2z;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2d;)V

    .line 7069
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2z;->A00(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 7070
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/2z;->A09(Landroid/view/View;I)V

    .line 7071
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/b5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/b5;-><init>(Lcom/facebook/ads/redexgen/X/3D;)V

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/2z;->A0B(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2j;)V

    .line 7072
    return-void
.end method

.method private A0F(I)V
    .locals 4

    .line 7073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0Z:Lcom/facebook/ads/redexgen/X/38;

    .line 7074
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A0f:Ljava/util/List;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "BVTy00cMA02UZPGNllJjIH3AYkDj1BkJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "OotLKoFjxgYdGdzuGdwdV1ikaCSVhdo5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 7075
    const/4 v2, 0x0

    .local p1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local p0, "z":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/38;

    .line 7077
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/38;
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/38;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7078
    .end local p0    # "z":I
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0Y:Lcom/facebook/ads/redexgen/X/38;

    .line 7079
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0G(I)V
    .locals 4

    .line 7080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0Z:Lcom/facebook/ads/redexgen/X/38;

    .line 7081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 7082
    const/4 v2, 0x0

    .local p1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .local p0, "z":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/38;

    .line 7084
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/38;
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/38;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7085
    .end local p0    # "z":I
    .end local p1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A0Y:Lcom/facebook/ads/redexgen/X/38;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "4rb2yAj5ZoXlknhTc0k5iLIM2Q42YAGW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "41sBen7QVcW8QpybBx2Vk0YgO7FBs6wg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 7086
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0H(I)V
    .locals 16

    .line 7087
    move-object/from16 v4, p0

    const/4 v11, 0x0

    .line 7088
    .local p0, "oldCurInfo":Lcom/facebook/ads/redexgen/X/35;
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 7089
    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/3D;->A04(I)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v11

    .line 7090
    iput v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    .line 7091
    .end local p0    # "oldCurInfo":Lcom/facebook/ads/redexgen/X/35;
    .local v1, "oldCurInfo":Lcom/facebook/ads/redexgen/X/35;
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-nez v0, :cond_1

    .line 7092
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->A0B()V

    .line 7093
    return-void

    .line 7094
    :cond_1
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    if-eqz v0, :cond_2

    .line 7095
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->A0B()V

    .line 7096
    return-void

    .line 7097
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3

    .line 7098
    return-void

    .line 7099
    :cond_3
    iget v2, v4, Lcom/facebook/ads/redexgen/X/3D;->A0L:I

    .line 7100
    .local v11, "pageLimit":I
    const/4 v1, 0x0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 7101
    .local v0, "startPos":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v6

    .line 7102
    .local v11, "N":I
    add-int/lit8 v1, v6, -0x1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 7103
    .local v11, "endPos":I
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0G:I

    if-ne v6, v0, :cond_27

    .line 7104
    .local p0, "curIndex":I
    const/4 v8, 0x0

    .line 7105
    .local v0, "curItem":Lcom/facebook/ads/redexgen/X/35;
    const/4 v7, 0x0

    :goto_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 7106
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/35;

    .line 7107
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-lt v1, v0, :cond_21

    .line 7108
    iget v1, v2, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v1, v0, :cond_4

    move-object v8, v2

    .line 7109
    :cond_4
    if-nez v8, :cond_5

    if-lez v6, :cond_5

    .line 7110
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    invoke-direct {v4, v0, v7}, Lcom/facebook/ads/redexgen/X/3D;->A05(II)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v8

    .line 7111
    :cond_5
    if-eqz v8, :cond_8

    .line 7112
    const/4 v15, 0x0

    .line 7113
    .local v2, "extraWidthLeft":F
    add-int/lit8 v5, v7, -0x1

    .line 7114
    .local v1, "itemIndex":I
    if-ltz v5, :cond_20

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/35;

    .line 7115
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v3

    .line 7116
    .local v0, "clientWidth":I
    const/high16 v12, 0x40000000    # 2.0f

    if-gtz v3, :cond_1f

    const/4 v1, 0x0

    .line 7117
    .local v0, "leftWidthNeeded":F
    :goto_2
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int/lit8 v13, v0, -0x1

    .local v0, "pos":I
    :goto_3
    if-ltz v13, :cond_6

    .line 7118
    cmpl-float v0, v15, v1

    if-ltz v0, :cond_18

    if-ge v13, v10, :cond_18

    .line 7119
    if-nez v2, :cond_1c

    .line 7120
    .end local v0    # "pos":I
    :cond_6
    iget v12, v8, Lcom/facebook/ads/redexgen/X/35;->A01:F

    .line 7121
    .local v4, "extraWidthRight":F
    add-int/lit8 v10, v7, 0x1

    .line 7122
    .end local v1    # "itemIndex":I
    .local v0, "itemIndex":I
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, v12, v0

    if-gez v0, :cond_7

    .line 7123
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_17

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/35;

    .line 7124
    .end local v0    # "itemIndex":I
    .local v1, "ii":Lcom/facebook/ads/redexgen/X/35;
    :goto_4
    if-gtz v3, :cond_15

    const/4 v2, 0x0

    .line 7125
    .local v0, "rightWidthNeeded":F
    :goto_5
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int/lit8 v3, v0, 0x1

    .local v10, "pos":I
    :goto_6
    if-ge v3, v6, :cond_7

    .line 7126
    cmpl-float v0, v12, v2

    if-ltz v0, :cond_c

    if-le v3, v9, :cond_c

    .line 7127
    if-nez v5, :cond_12

    .line 7128
    .end local v0    # "rightWidthNeeded":F
    .restart local v1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_7
    invoke-direct {v4, v8, v7, v11}, Lcom/facebook/ads/redexgen/X/3D;->A0R(Lcom/facebook/ads/redexgen/X/35;ILcom/facebook/ads/redexgen/X/35;)V

    .line 7129
    .end local v11    # "endPos":I
    .end local v0
    .restart local v6
    .restart local v1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v6

    .line 7130
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v11, "i":I
    :goto_7
    if-ge v5, v6, :cond_22

    .line 7131
    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7132
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/36;

    .line 7133
    .local v0, "lp":Lcom/facebook/ads/redexgen/X/36;
    iput v5, v3, Lcom/facebook/ads/redexgen/X/36;->A01:I

    .line 7134
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_b

    iget v1, v3, Lcom/facebook/ads/redexgen/X/36;->A00:F

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_b

    .line 7135
    invoke-direct {v4, v2}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v7

    .line 7136
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-eqz v7, :cond_b

    .line 7137
    iget v0, v7, Lcom/facebook/ads/redexgen/X/35;->A01:F

    iput v0, v3, Lcom/facebook/ads/redexgen/X/36;->A00:F

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7138
    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "EyT6xwfDNG2S3e9LtZYytN0s3Xm8cKUy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "L43v13w7qHrePnOf1vJtqhkFr9Wez5bL"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget v0, v7, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iput v0, v3, Lcom/facebook/ads/redexgen/X/36;->A02:I

    .line 7139
    .end local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .end local v0
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 7140
    .end local v6
    .end local v1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .restart local v11    # "i":I
    .restart local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .end local v11    # "i":I
    .end local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .restart local v6
    .restart local v1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_c
    if-eqz v5, :cond_f

    iget v0, v5, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ne v3, v0, :cond_f

    .line 7141
    iget v0, v5, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v12, v0

    .line 7142
    add-int/lit8 v10, v10, 0x1

    .line 7143
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_e

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v13, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v13, v0

    const/4 v0, 0x3

    aget-object v13, v13, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v13, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "IsA4bkdSyqEuCzjIc9UrR46Q3omYxVKd"

    const/4 v0, 0x4

    aput-object v1, v13, v0

    const-string v1, "uQMdRRPHCTPdIeSYH7tJM435sOxxqF9X"

    const/4 v0, 0x2

    aput-object v1, v13, v0

    check-cast v5, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_9

    :cond_d
    sget-object v13, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "Vvaq8MYPG9MCZuQ"

    const/4 v0, 0x0

    aput-object v1, v13, v0

    check-cast v5, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_9

    :cond_e
    const/4 v5, 0x0

    goto :goto_9

    .line 7144
    :cond_f
    invoke-direct {v4, v3, v10}, Lcom/facebook/ads/redexgen/X/3D;->A05(II)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7145
    .end local v1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .local v11, "ii":Lcom/facebook/ads/redexgen/X/35;
    add-int/lit8 v10, v10, 0x1

    .line 7146
    iget v0, v0, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v12, v0

    .line 7147
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_10

    if-ge v10, v13, :cond_11

    :goto_8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_9

    :cond_10
    sget-object v5, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "BbpcE6tkf1K6OjJ"

    const/4 v0, 0x0

    aput-object v1, v5, v0

    if-ge v10, v13, :cond_11

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    goto :goto_9

    .line 7148
    .end local v11    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .local v6, "pageLimit":I
    :cond_12
    iget v0, v5, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ne v3, v0, :cond_13

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/35;->A04:Z

    if-nez v0, :cond_13

    .line 7149
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7150
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    .end local v0
    .local v1, "startPos":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/35;->A03:Ljava/lang/Object;

    invoke-virtual {v1, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/2k;->A0B(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 7151
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_14

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/35;

    .line 7152
    .end local v11
    .restart local v1    # "startPos":I
    :cond_13
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 7153
    :cond_14
    const/4 v5, 0x0

    goto :goto_9

    .line 7154
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v0

    int-to-float v2, v0

    int-to-float v13, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16
    sget-object v3, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "yjiSNpko5C4HRuH1DqNZIljIP1AyIB8Y"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const-string v1, "4BabcLoEiYQllUHdwQ0JBCE7juXq8SlJ"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    div-float/2addr v2, v13

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr v2, v0

    goto/16 :goto_5

    .line 7155
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 7156
    .end local v4    # "childCount":I
    .restart local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_18
    if-eqz v2, :cond_1a

    iget v0, v2, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ne v13, v0, :cond_1a

    .line 7157
    iget v0, v2, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v15, v0

    .line 7158
    add-int/lit8 v5, v5, -0x1

    .line 7159
    if-ltz v5, :cond_19

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_a

    :cond_19
    const/4 v2, 0x0

    goto :goto_a

    .line 7160
    .end local v4
    .restart local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_1a
    add-int/lit8 v0, v5, 0x1

    invoke-direct {v4, v13, v0}, Lcom/facebook/ads/redexgen/X/3D;->A05(II)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7161
    .end local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .restart local v4    # "childCount":I
    iget v12, v0, Lcom/facebook/ads/redexgen/X/35;->A01:F

    sget-object v14, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v2, v14, v0

    const/4 v0, 0x3

    aget-object v14, v14, v0

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_9

    sget-object v14, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v2, "dloXpWDXOKz7FwqtlWspO43tyknOTTlF"

    const/4 v0, 0x4

    aput-object v2, v14, v0

    const-string v2, "sCPq7B1Nle5jSSIhAv3Hb4nKNO5mS7KT"

    const/4 v0, 0x2

    aput-object v2, v14, v0

    add-float/2addr v15, v12

    .line 7162
    add-int/lit8 v7, v7, 0x1

    .line 7163
    if-ltz v5, :cond_1b

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_a

    :cond_1b
    const/4 v2, 0x0

    goto :goto_a

    .line 7164
    :cond_1c
    iget v0, v2, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ne v13, v0, :cond_1d

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/35;->A04:Z

    if-nez v0, :cond_1d

    .line 7165
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7166
    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/35;->A03:Ljava/lang/Object;

    invoke-virtual {v12, v4, v13, v0}, Lcom/facebook/ads/redexgen/X/2k;->A0B(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 7167
    add-int/lit8 v5, v5, -0x1

    .line 7168
    add-int/lit8 v7, v7, -0x1

    .line 7169
    if-ltz v5, :cond_1e

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/35;

    .line 7170
    .end local v4    # "childCount":I
    .restart local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_1d
    :goto_a
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_3

    .line 7171
    :cond_1e
    const/4 v2, 0x0

    goto :goto_a

    .line 7172
    :cond_1f
    iget v0, v8, Lcom/facebook/ads/redexgen/X/35;->A01:F

    sub-float/2addr v12, v0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    int-to-float v0, v3

    div-float/2addr v1, v0

    add-float/2addr v1, v12

    goto/16 :goto_2

    .line 7173
    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 7174
    .end local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_21
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 7175
    .end local v11
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->A0B()V

    .line 7176
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 7177
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 7178
    .local v11, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_26

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/3D;->A06(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7179
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    :goto_b
    if-eqz v0, :cond_23

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-eq v1, v0, :cond_24

    .line 7180
    :cond_23
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_24

    .line 7181
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7182
    .local v0, "child":Landroid/view/View;
    invoke-direct {v4, v2}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7183
    if-eqz v0, :cond_25

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v1, v0, :cond_25

    .line 7184
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 7185
    .end local v11    # "currentFocused":Landroid/view/View;
    .end local v0    # "child":Landroid/view/View;
    .end local v0
    :cond_24
    return-void

    .line 7186
    .end local v0
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 7187
    :cond_26
    const/4 v0, 0x0

    goto :goto_b

    .line 7188
    .end local v11
    .end local v0
    .restart local v6    # "pageLimit":I
    .restart local v1    # "startPos":I
    :cond_27
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7189
    .end local p0    # "curIndex":I
    .local p0, "e":Landroid/content/res/Resources$NotFoundException;
    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 7190
    .local p0, "resName":Ljava/lang/String;
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x9e

    const/16 v1, 0x8e

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0G:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x4d

    const/16 v1, 0x9

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    const/16 v1, 0xb

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    const/16 v1, 0xe

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7191
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    const/16 v1, 0x16

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    .line 7192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0I(IFI)V
    .locals 3

    .line 7193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0Z:Lcom/facebook/ads/redexgen/X/38;

    .line 7194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 7195
    const/4 v2, 0x0

    .local p1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .local p0, "z":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/38;

    .line 7197
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/38;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/38;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7198
    .end local p0    # "z":I
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0Y:Lcom/facebook/ads/redexgen/X/38;

    .line 7199
    return-void
.end method

.method private final A0J(IFI)V
    .locals 14
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 7200
    move-object v5, p0

    iget v0, v5, Lcom/facebook/ads/redexgen/X/3D;->A0D:I

    const/4 v4, 0x1

    if-lez v0, :cond_9

    .line 7201
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v13

    .line 7202
    .local p1, "scrollX":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v7

    .line 7203
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v12

    .line 7204
    .local v5, "paddingRight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getWidth()I

    move-result v11

    .line 7205
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v6

    .line 7206
    .local v4, "childCount":I
    const/4 v3, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v3, v6, :cond_9

    .line 7207
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7208
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/36;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_8

    .line 7209
    .local v12, "lp":Lcom/facebook/ads/redexgen/X/36;
    sget-object v8, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "eLb4kWjiyFzQgYZ"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_1

    .line 7210
    .end local v7    # "child":Landroid/view/View;
    .end local v12    # "lp":Lcom/facebook/ads/redexgen/X/36;
    .end local v11
    .end local v6
    .end local v3
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7211
    :cond_1
    iget v0, v9, Lcom/facebook/ads/redexgen/X/36;->A04:I

    and-int/lit8 v10, v0, 0x7

    .line 7212
    .local v11, "hgrav":I
    .local v6, "childLeft":I
    if-eq v10, v4, :cond_6

    const/4 v0, 0x3

    if-eq v10, v0, :cond_5

    const/4 v9, 0x5

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_2

    sget-object v8, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "wE5mGPvbaI7ots8"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    if-eq v10, v9, :cond_3

    .line 7213
    :goto_2
    move v9, v7

    .line 7214
    :goto_3
    add-int/2addr v9, v13

    sget-object v8, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v8, v0

    const/4 v0, 0x7

    aget-object v8, v8, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    .line 7215
    sget-object v8, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "uxAiPsPngs8SIDO4tRfQK44SqJmHgDhw"

    const/4 v0, 0x4

    aput-object v1, v8, v0

    const-string v1, "yJsnz3u8fBxqiTxeHFqkA4CvaAoyIYwj"

    const/4 v0, 0x2

    aput-object v1, v8, v0

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v9, v0

    .line 7216
    .local v3, "childOffset":I
    if-eqz v9, :cond_0

    .line 7217
    invoke-virtual {v2, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    :cond_2
    sget-object v8, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "W8dfBriTrd9bOdE"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    if-eq v10, v9, :cond_3

    goto :goto_2

    .line 7218
    :cond_3
    sub-int v9, v11, v12

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_4

    sget-object v8, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "BgdSU2iatDRuS97WdbX1MSDWwOgw4tAr"

    const/4 v0, 0x5

    aput-object v1, v8, v0

    const-string v1, "Lecv9vMWKSbjxMCaYwCn2zKewWpHO8Fj"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    sub-int/2addr v9, v10

    .line 7219
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v12, v0

    goto :goto_3

    :cond_4
    sget-object v8, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "riezau9new0ehHfdYNhNO4SkySXfaQnv"

    const/4 v0, 0x4

    aput-object v1, v8, v0

    const-string v1, "wWqun582hokjz8uHqhcF24lNLQOrwtXh"

    const/4 v0, 0x2

    aput-object v1, v8, v0

    sub-int/2addr v9, v10

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v12, v0

    goto :goto_3

    .line 7220
    :cond_5
    move v9, v7

    .line 7221
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v7, v0

    .line 7222
    goto :goto_3

    .line 7223
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v11, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 7224
    goto/16 :goto_3

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7225
    .end local p1    # "scrollX":I
    .end local v0    # "width":I
    .end local v5    # "paddingRight":I
    .end local v0
    .end local v4    # "childCount":I
    .end local v13    # "i":I
    :cond_9
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0I(IFI)V

    .line 7226
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3D;->A0a:Lcom/facebook/ads/redexgen/X/39;

    if-eqz v0, :cond_b

    .line 7227
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    .line 7228
    .restart local p1    # "scrollX":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v3

    .line 7229
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v2, v3, :cond_b

    .line 7230
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7231
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/36;

    .line 7232
    .local v4, "lp":Lcom/facebook/ads/redexgen/X/36;
    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-eqz v0, :cond_a

    .line 7233
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/facebook/ads/redexgen/X/36;
    .end local v13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 7234
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    .line 7235
    .local v13, "transformPos":F
    const/4 v0, 0x0

    throw v0

    .line 7236
    .end local p1    # "scrollX":I
    .end local v0
    .end local v5    # "i":I
    :cond_b
    iput-boolean v4, v5, Lcom/facebook/ads/redexgen/X/3D;->A0g:Z

    .line 7237
    return-void
.end method

.method private final A0K(III)V
    .locals 13

    move v11, p2

    move v10, p1

    .line 7238
    move-object v4, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 7239
    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7240
    return-void

    .line 7241
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 7242
    .local v10, "wasScrolling":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 7243
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0l:Z

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    .line 7244
    .local v4, "sx":I
    :goto_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7245
    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7246
    .restart local v4    # "sx":I
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollY()I

    move-result v9

    .line 7247
    .local v0, "sy":I
    sub-int/2addr v10, v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_6

    .line 7248
    .local v0, "dx":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "Z0LZClJ0au8nSBm1r5wZo4UlFxtb531d"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "ZltNMTIOlLDzNXpQzZy3241df7YiJdYF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sub-int/2addr v11, v9

    .line 7249
    .local v8, "dy":I
    if-nez v10, :cond_4

    if-nez v11, :cond_4

    .line 7250
    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->A0S(Z)V

    .line 7251
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0g()V

    .line 7252
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->setScrollState(I)V

    .line 7253
    return-void

    .line 7254
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v8

    goto :goto_1

    .line 7255
    .end local v4    # "sx":I
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v8

    goto :goto_2

    .line 7256
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 7257
    :cond_4
    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7258
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/3D;->setScrollState(I)V

    .line 7259
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v6

    .line 7260
    .local p3, "width":I
    div-int/lit8 v7, v6, 0x2

    .line 7261
    .local v0, "halfWidth":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v1, v0

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v1, v5

    int-to-float v0, v6

    div-float/2addr v1, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 7262
    .local v9, "distanceRatio":F
    int-to-float v2, v7

    int-to-float v1, v7

    .line 7263
    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/3D;->A00(F)F

    move-result v0

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    .line 7264
    .local v10, "distance":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 7265
    .end local v1
    .local v0, "velocity":I
    if-lez v0, :cond_5

    .line 7266
    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    .line 7267
    .local v0, "duration":I
    .end local v0    # "duration":I
    .local v0, "duration":I
    :goto_3
    const/16 v0, 0x258

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 7268
    .end local v0    # "duration":I
    .local v1, "duration":I
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/3D;->A0l:Z

    .line 7269
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    .end local v0
    .local v11, "velocity":I
    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 7270
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2z;->A07(Landroid/view/View;)V

    .line 7271
    return-void

    .line 7272
    .end local v0
    :cond_5
    int-to-float v2, v6

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v0

    mul-float/2addr v2, v0

    .line 7273
    .local v0, "pageWidth":F
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v1, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    div-float/2addr v1, v0

    .line 7274
    .local v0, "pageDelta":F
    add-float/2addr v5, v1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v5, v0

    float-to-int v1, v5

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0L(IIII)V
    .locals 4

    .line 7275
    if-lez p2, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7277
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v0

    mul-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 7278
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3D;
    .end local p1    # null:I
    .end local p2    # null:I
    :cond_0
    :goto_0
    return-void

    .line 7279
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 7280
    .local p0, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    add-int/2addr p2, p4

    .line 7281
    .local p1, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v0

    .line 7282
    .local p2, "xpos":I
    int-to-float v1, v0

    int-to-float v0, p2

    div-float/2addr v1, v0

    .line 7283
    .local p3, "pageOffset":F
    int-to-float v0, p1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 7284
    .local p4, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 7285
    .end local p0    # "widthWithMargin":I
    .end local p1    # "oldWidthWithMargin":I
    .end local p2    # "xpos":I
    .end local p3    # "pageOffset":F
    .end local p4    # "newOffsetPixels":I
    goto :goto_0

    .line 7286
    :cond_2
    iget v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "zbIyuU4nFdtSfTRFogYOf2jKfKMbfeaA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/3D;->A04(I)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7287
    .local p0, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-eqz v0, :cond_4

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A00:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 7288
    .local p1, "scrollOffset":F
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float v0, p1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 7289
    .local p2, "scrollPos":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 7290
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0S(Z)V

    .line 7291
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    goto :goto_0

    .line 7292
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final A0M(IZ)V
    .locals 1

    .line 7293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    .line 7294
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0O(IZZ)V

    .line 7295
    return-void
.end method

.method private A0N(IZIZ)V
    .locals 5

    .line 7296
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A04(I)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v4

    .line 7297
    .local p0, "curInfo":Lcom/facebook/ads/redexgen/X/35;
    const/4 v1, 0x0

    .line 7298
    .local p1, "destX":I
    if-eqz v4, :cond_0

    .line 7299
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v0

    .line 7300
    .local p2, "width":I
    int-to-float v3, v0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:F

    iget v1, v4, Lcom/facebook/ads/redexgen/X/35;->A00:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    .line 7301
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 7302
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v3, v0

    float-to-int v1, v3

    .line 7303
    .end local p2    # "width":I
    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 7304
    invoke-direct {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/3D;->A0K(III)V

    .line 7305
    if-eqz p4, :cond_1

    .line 7306
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A0F(I)V

    .line 7307
    :cond_1
    :goto_0
    return-void

    .line 7308
    :cond_2
    if-eqz p4, :cond_3

    .line 7309
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A0F(I)V

    .line 7310
    :cond_3
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0S(Z)V

    .line 7311
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 7312
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0a(I)Z

    goto :goto_0
.end method

.method private final A0O(IZZ)V
    .locals 1

    .line 7313
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0P(IZZI)V

    .line 7314
    return-void
.end method

.method private final A0P(IZZI)V
    .locals 5

    .line 7315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    if-gtz v0, :cond_1

    .line 7316
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3D;
    .end local p2    # null:Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7317
    return-void

    .line 7318
    :cond_1
    if-nez p3, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "caHeuZPLB8pjODm"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    .line 7319
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7320
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7321
    :cond_3
    const/4 v2, 0x1

    if-gez p1, :cond_6

    .line 7322
    const/4 p1, 0x0

    .line 7323
    :cond_4
    :goto_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A0L:I

    .line 7324
    .local p2, "pageLimit":I
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int v0, v1, v3

    if-gt p1, v0, :cond_5

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_7

    .line 7325
    :cond_5
    const/4 v1, 0x0

    .local p3, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 7326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/35;

    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/35;->A04:Z

    .line 7327
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7328
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 7329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 7330
    .end local p3    # "i":I
    :cond_7
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-eq v0, p1, :cond_a

    .line 7331
    .local p0, "dispatchSelected":Z
    :goto_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    if-eqz v0, :cond_9

    .line 7332
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    .line 7333
    if-eqz v2, :cond_8

    .line 7334
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A0F(I)V

    .line 7335
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->requestLayout()V

    .line 7336
    :goto_3
    return-void

    .line 7337
    :cond_9
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A0H(I)V

    .line 7338
    invoke-direct {p0, p1, p2, p4, v2}, Lcom/facebook/ads/redexgen/X/3D;->A0N(IZIZ)V

    goto :goto_3

    .line 7339
    :cond_a
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private A0Q(Landroid/view/MotionEvent;)V
    .locals 3

    .line 7340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 7341
    .local p0, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 7342
    .local p1, "pointerId":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    if-ne v1, v0, :cond_0

    .line 7343
    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 7344
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 7345
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 7346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 7347
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 7348
    .end local v2    # "newPointerIndex":I
    :cond_0
    return-void

    .line 7349
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private A0R(Lcom/facebook/ads/redexgen/X/35;ILcom/facebook/ads/redexgen/X/35;)V
    .locals 12

    .line 7350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v11

    .line 7351
    .local p0, "N":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v1

    .line 7352
    .local p1, "width":I
    if-lez v1, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    int-to-float v4, v0

    int-to-float v0, v1

    div-float/2addr v4, v0

    .line 7353
    .local p2, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_9

    .line 7354
    iget v1, p3, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 7355
    .local p3, "oldCurPosition":I
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ge v1, v0, :cond_5

    .line 7356
    const/4 v5, 0x0

    .line 7357
    .local v0, "itemIndex":I
    .local v11, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget v3, p3, Lcom/facebook/ads/redexgen/X/35;->A00:F

    iget v0, p3, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v3, v0

    add-float/2addr v3, v4

    .line 7358
    .local v1, "offset":F
    add-int/lit8 v6, v1, 0x1

    .line 7359
    .local v0, "pos":I
    :goto_1
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-gt v6, v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    .line 7360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/35;

    .line 7361
    :goto_2
    iget v8, v7, Lcom/facebook/ads/redexgen/X/35;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "mMCGHDWlxFgMsjt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-le v6, v8, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v5, v0, :cond_1

    .line 7362
    add-int/lit8 v5, v5, 0x1

    .line 7363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "0GRoiU6ng6hdQPVw3EwHp4l2hIIYcNtn"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "8Y3rzgV9nzp3iIaIDQEcr4upuD8fyeiC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    check-cast v7, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_2

    .line 7364
    :cond_1
    :goto_3
    iget v0, v7, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ge v6, v0, :cond_2

    .line 7365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v0

    add-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 7366
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 7367
    :cond_2
    iput v3, v7, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 7368
    iget v0, v7, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 7369
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 7370
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7371
    .end local v0    # "pos":I
    .end local v11    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .end local v1    # "offset":F
    .end local v0
    :cond_5
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-le v1, v0, :cond_9

    .line 7372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 7373
    .restart local v0    # "pos":I
    .restart local v11    # "ii":Lcom/facebook/ads/redexgen/X/35;
    iget v6, p3, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 7374
    .restart local v1    # "offset":F
    add-int/lit8 v3, v1, -0x1

    .line 7375
    .restart local v0    # "pos":I
    :goto_4
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-lt v3, v0, :cond_9

    if-ltz v5, :cond_9

    .line 7376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v7, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v2, v7, v0

    const/4 v0, 0x7

    aget-object v7, v7, v0

    const/16 v0, 0x14

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_8

    sget-object v7, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v2, "sG2D1AU9vQNSSAZRjoe3z4C00Dqdfrqj"

    const/4 v0, 0x4

    aput-object v2, v7, v0

    const-string v2, "Rdd7cBladgYGVcjrx8uRB4qQBDUzOR2E"

    const/4 v0, 0x2

    aput-object v2, v7, v0

    check-cast v1, Lcom/facebook/ads/redexgen/X/35;

    .line 7377
    :goto_5
    iget v0, v1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ge v3, v0, :cond_6

    if-lez v5, :cond_6

    .line 7378
    add-int/lit8 v5, v5, -0x1

    .line 7379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_5

    .line 7380
    :cond_6
    :goto_6
    iget v0, v1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-le v3, v0, :cond_7

    .line 7381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v0

    add-float/2addr v0, v4

    sub-float/2addr v6, v0

    .line 7382
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 7383
    :cond_7
    iget v0, v1, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v0, v4

    sub-float/2addr v6, v0

    .line 7384
    iput v6, v1, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 7385
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_8
    check-cast v1, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_5

    .line 7386
    .end local p3    # "oldCurPosition":I
    .end local v0    # "pos":I
    .end local v11    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .end local v1    # "offset":F
    .end local v0
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 7387
    .local p3, "itemCount":I
    iget v6, p1, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 7388
    .local v0, "offset":F
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    add-int/lit8 v3, v0, -0x1

    .line 7389
    .local v11, "pos":I
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-nez v0, :cond_10

    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A00:F

    :goto_7
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:F

    .line 7390
    iget v1, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    add-int/lit8 v0, v11, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    if-ne v1, v0, :cond_f

    .line 7391
    iget v7, p1, Lcom/facebook/ads/redexgen/X/35;->A00:F

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "UG1gT2jUNjrId2t7MfTS74a15LtMOaPg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "2ozfqeZF2OaiC2JUfBmasK4DPIGaXMZO"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v7, v0

    sub-float/2addr v7, v10

    :goto_8
    iput v7, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d

    .line 7392
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "icTatsUiht4AjRSLPfh6XPjJPbhUZ0sF"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "b2D116l90T5me9fMxsyBUu50CZtZWawR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v8, p2, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v8, :cond_11

    .line 7393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/35;

    .line 7394
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    :goto_a
    iget v0, v9, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-le v3, v0, :cond_a

    .line 7395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    add-int/lit8 v1, v3, -0x1

    .end local v11    # "pos":I
    .local v4, "pos":I
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v0

    add-float/2addr v0, v4

    sub-float/2addr v6, v0

    move v3, v1

    goto :goto_a

    .line 7396
    .end local v4    # "pos":I
    .restart local v11    # "pos":I
    :cond_a
    iget v7, v9, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v7, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "SgZGqUZOfUbRscKwt61ZJH2C2qxkKaaL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "iEhLnshzYOduKlFOAhFClgc41xkECprr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sub-float/2addr v6, v7

    .line 7397
    iput v6, v9, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 7398
    iget v0, v9, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-nez v0, :cond_c

    iput v6, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:F

    .line 7399
    .end local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_c
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "QtgdpK39IRmx84t"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 v8, p2, -0x1

    goto :goto_9

    :cond_e
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v7, v0

    sub-float/2addr v7, v10

    goto/16 :goto_8

    .line 7400
    :cond_f
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    goto/16 :goto_8

    .line 7401
    :cond_10
    const v0, -0x800001

    goto/16 :goto_7

    .line 7402
    .end local v1    # "i":I
    :cond_11
    iget v3, p1, Lcom/facebook/ads/redexgen/X/35;->A00:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v3, v0

    add-float/2addr v3, v4

    .line 7403
    .end local v0
    .local v1, "offset":F
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    add-int/lit8 v7, v0, 0x1

    .line 7404
    .end local v11    # "pos":I
    .local v0, "pos":I
    add-int/lit8 v6, p2, 0x1

    .local v11, "i":I
    :goto_b
    if-ge v6, v5, :cond_14

    .line 7405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/35;

    .line 7406
    .restart local v0    # "pos":I
    :goto_c
    iget v0, v2, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ge v7, v0, :cond_12

    .line 7407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    add-int/lit8 v1, v7, 0x1

    .end local v0    # "pos":I
    .restart local v4    # "pos":I
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v0

    add-float/2addr v0, v4

    add-float/2addr v3, v0

    move v7, v1

    goto :goto_c

    .line 7408
    .end local v4    # "pos":I
    .restart local v0    # "pos":I
    :cond_12
    iget v1, v2, Lcom/facebook/ads/redexgen/X/35;->A02:I

    add-int/lit8 v0, v11, -0x1

    if-ne v1, v0, :cond_13

    .line 7409
    iget v0, v2, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v10

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    .line 7410
    :cond_13
    iput v3, v2, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 7411
    iget v0, v2, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 7412
    .end local v0    # "pos":I
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 7413
    .end local v11    # "i":I
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0n:Z

    .line 7414
    return-void
.end method

.method private A0S(Z)V
    .locals 6

    .line 7415
    iget v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A0P:I

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    if-ne v2, v0, :cond_3

    const/4 v5, 0x1

    .line 7416
    .local p0, "needPopulate":Z
    :goto_0
    if-eqz v5, :cond_1

    .line 7417
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    xor-int/2addr v1, v0

    .line 7419
    .local p1, "wasScrolling":Z
    if-eqz v1, :cond_1

    .line 7420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7421
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v3

    .line 7422
    .local v1, "oldX":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollY()I

    move-result v2

    .line 7423
    .local v4, "oldY":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 7424
    .local v0, "x":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 7425
    .local v5, "y":I
    if-ne v3, v1, :cond_0

    if-eq v2, v0, :cond_1

    .line 7426
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 7427
    if-eq v1, v3, :cond_1

    .line 7428
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0a(I)Z

    .line 7429
    .end local p1    # "wasScrolling":Z
    .end local v1    # "oldX":I
    .end local v4    # "oldY":I
    .end local v0    # "x":I
    .end local v5    # "y":I
    :cond_1
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    .line 7430
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 7431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/35;

    .line 7432
    .local v1, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/35;->A04:Z

    if-eqz v0, :cond_2

    .line 7433
    const/4 v5, 0x1

    .line 7434
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/35;->A04:Z

    .line 7435
    .end local v1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7436
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 7437
    .end local p1    # "i":I
    :cond_4
    if-eqz v5, :cond_5

    .line 7438
    if-eqz p1, :cond_6

    .line 7439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0s:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/2z;->A0C(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 7440
    :cond_5
    :goto_2
    return-void

    .line 7441
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0s:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private A0T(Z)V
    .locals 5

    .line 7442
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v4

    .line 7443
    .local p0, "childCount":I
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 7444
    if-eqz p1, :cond_0

    .line 7445
    iget v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A0N:I

    .line 7446
    .local v4, "layerType":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7447
    .end local v4    # "layerType":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7448
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 7449
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method private A0U(Z)V
    .locals 1

    .line 7450
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7451
    .local p0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 7452
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7453
    :cond_0
    return-void
.end method

.method private A0V()Z
    .locals 1

    .line 7454
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 7455
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A09()V

    .line 7456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 7457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 7458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 7459
    .local p0, "needsInvalidate":Z
    :goto_0
    return v0

    .line 7460
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0W()Z
    .locals 2

    .line 7461
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-lez v1, :cond_0

    .line 7462
    const/4 v0, 0x1

    sub-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0M(IZ)V

    .line 7463
    return v0

    .line 7464
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final A0X()Z
    .locals 3

    .line 7465
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v2, v0, :cond_0

    .line 7466
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0M(IZ)V

    .line 7467
    return v1

    .line 7468
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private A0Y(F)Z
    .locals 12

    .line 7469
    move-object v3, p0

    const/4 v11, 0x0

    .line 7470
    .local v3, "needsInvalidate":Z
    iget v1, v3, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    sub-float/2addr v1, p1

    .line 7471
    .local p1, "deltaX":F
    iput p1, v3, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 7472
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v0

    int-to-float v5, v0

    .line 7473
    .local v11, "oldScrollX":F
    add-float/2addr v5, v1

    .line 7474
    .local v1, "scrollX":F
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v4

    .line 7475
    .local v1, "width":I
    int-to-float v6, v4

    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A02:F

    mul-float/2addr v6, v0

    .line 7476
    .local v0, "leftBound":F
    int-to-float v7, v4

    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    mul-float/2addr v7, v0

    .line 7477
    .local v5, "rightBound":F
    const/4 v10, 0x1

    .line 7478
    .local v5, "leftAbsolute":Z
    const/4 v9, 0x1

    .line 7479
    .local v4, "rightAbsolute":Z
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/35;

    .line 7480
    .local v6, "firstItem":Lcom/facebook/ads/redexgen/X/35;
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/35;

    .line 7481
    .local v0, "lastItem":Lcom/facebook/ads/redexgen/X/35;
    iget v0, v8, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-eqz v0, :cond_0

    .line 7482
    const/4 v10, 0x0

    .line 7483
    iget v6, v8, Lcom/facebook/ads/redexgen/X/35;->A00:F

    int-to-float v0, v4

    mul-float/2addr v6, v0

    .line 7484
    :cond_0
    iget v1, v2, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_1

    .line 7485
    const/4 v9, 0x0

    .line 7486
    iget v7, v2, Lcom/facebook/ads/redexgen/X/35;->A00:F

    int-to-float v0, v4

    mul-float/2addr v7, v0

    .line 7487
    :cond_1
    cmpg-float v0, v5, v6

    if-gez v0, :cond_4

    .line 7488
    if-eqz v10, :cond_2

    .line 7489
    sub-float v5, v6, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_6

    .line 7490
    .local v6, "over":F
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "BqGUV6FWN85Kb3W2SyX26JGUB7qlw7kS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v0, v4

    div-float/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 7491
    const/4 v11, 0x1

    .line 7492
    .end local v6    # "over":F
    :cond_2
    move v5, v6

    .line 7493
    :cond_3
    :goto_0
    iget v1, v3, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    float-to-int v0, v5

    int-to-float v0, v0

    sub-float v0, v5, v0

    add-float/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 7494
    float-to-int v1, v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollY()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 7495
    float-to-int v0, v5

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0a(I)Z

    .line 7496
    return v11

    .line 7497
    :cond_4
    cmpl-float v0, v5, v7

    if-lez v0, :cond_3

    .line 7498
    if-eqz v9, :cond_5

    .line 7499
    sub-float/2addr v5, v7

    .line 7500
    .local p1, "over":F
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v0, v4

    div-float/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 7501
    const/4 v11, 0x1

    .line 7502
    .end local p1    # "over":F
    :cond_5
    move v5, v7

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0Z(FF)Z
    .locals 3

    .line 7503
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0I:I

    int-to-float v0, v0

    const/4 v2, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getWidth()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0I:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0a(I)Z
    .locals 9

    .line 7504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v2, 0x17d

    const/16 v1, 0x35

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    if-nez v3, :cond_2

    .line 7505
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    if-eqz v0, :cond_0

    .line 7506
    return v7

    .line 7507
    :cond_0
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/3D;->A0g:Z

    .line 7508
    const/4 v0, 0x0

    invoke-direct {p0, v7, v0, v7}, Lcom/facebook/ads/redexgen/X/3D;->A0J(IFI)V

    .line 7509
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0g:Z

    if-eqz v0, :cond_1

    .line 7510
    return v7

    .line 7511
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7512
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A03()Lcom/facebook/ads/redexgen/X/35;

    move-result-object v8

    .line 7513
    .local p0, "ii":Lcom/facebook/ads/redexgen/X/35;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v6

    .line 7514
    .local v3, "width":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    add-int v4, v6, v0

    .line 7515
    .local v1, "widthWithMargin":I
    int-to-float v3, v0

    int-to-float v0, v6

    div-float/2addr v3, v0

    .line 7516
    .local v2, "marginOffset":F
    iget v2, v8, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 7517
    .local v0, "currentPage":I
    int-to-float v1, p1

    int-to-float v0, v6

    div-float/2addr v1, v0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/35;->A00:F

    sub-float/2addr v1, v0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v0, v3

    div-float/2addr v1, v0

    .line 7518
    .local v5, "pageOffset":F
    int-to-float v0, v4

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 7519
    .local v7, "offsetPixels":I
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/3D;->A0g:Z

    .line 7520
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0J(IFI)V

    .line 7521
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0g:Z

    if-eqz v0, :cond_3

    .line 7522
    const/4 v0, 0x1

    return v0

    .line 7523
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0b(I)Z
    .locals 5

    .line 7524
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 7525
    .local p0, "currentFocused":Landroid/view/View;
    if-ne v3, p0, :cond_a

    .line 7526
    const/4 v3, 0x0

    .line 7527
    .end local p1    # null:I
    .end local v3
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 7528
    .local p1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 7529
    .local v3, "nextFocused":Landroid/view/View;
    const/16 v1, 0x42

    const/16 v0, 0x11

    if-eqz v2, :cond_6

    if-eq v2, v3, :cond_6

    .line 7530
    if-ne p1, v0, :cond_4

    .line 7531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0q:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/3D;->A02(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 7532
    .local v4, "nextLeft":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0q:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/3D;->A02(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 7533
    .local v0, "currLeft":I
    if-eqz v3, :cond_3

    if-lt v1, v0, :cond_3

    .line 7534
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0W()Z

    move-result v4

    .line 7535
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 7536
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->playSoundEffect(I)V

    .line 7537
    :cond_2
    return v4

    .line 7538
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v4

    goto :goto_1

    .line 7539
    :cond_4
    if-ne p1, v1, :cond_1

    .line 7540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0q:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/3D;->A02(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 7541
    .restart local v4    # "nextLeft":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0q:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/3D;->A02(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 7542
    .restart local v0    # "currLeft":I
    if-eqz v3, :cond_5

    if-gt v1, v0, :cond_5

    .line 7543
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0X()Z

    move-result v4

    goto :goto_1

    .line 7544
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v4

    goto :goto_1

    .line 7545
    :cond_6
    if-eq p1, v0, :cond_7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 7546
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0W()Z

    move-result v4

    goto :goto_1

    .line 7547
    :cond_8
    if-eq p1, v1, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 7548
    :cond_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0X()Z

    move-result v4

    goto :goto_1

    .line 7549
    :cond_a
    if-eqz v3, :cond_0

    .line 7550
    const/4 v2, 0x0

    .line 7551
    .local p1, "isChild":Z
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v3, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 7552
    if-ne v1, p0, :cond_c

    .line 7553
    const/4 v2, 0x1

    .line 7554
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_b
    if-nez v2, :cond_0

    .line 7555
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7556
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7557
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v4, "parent":Landroid/view/ViewParent;
    :goto_3
    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    .line 7558
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7559
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_3

    .line 7560
    :cond_c
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_2

    .line 7561
    .end local v4    # "parent":Landroid/view/ViewParent;
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x135

    const/16 v1, 0x48

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7562
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7563
    const/16 v2, 0x12c

    const/16 v1, 0x9

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7564
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private final A0c(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 7565
    const/4 v3, 0x0

    .line 7566
    .local p0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 7567
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v0, 0x15

    const/4 v1, 0x2

    if-eq v2, v0, :cond_5

    const/16 v0, 0x16

    if-eq v2, v0, :cond_3

    const/16 v0, 0x3d

    if-eq v2, v0, :cond_1

    .line 7568
    :cond_0
    :goto_0
    return v3

    .line 7569
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7570
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0b(I)Z

    move-result v3

    goto :goto_0

    .line 7571
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7572
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0b(I)Z

    move-result v3

    goto :goto_0

    .line 7573
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7574
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0X()Z

    move-result v3

    goto :goto_0

    .line 7575
    :cond_4
    const/16 v3, 0x42

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "96fHsVYp2UJpSxk"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/3D;->A0b(I)Z

    move-result v3

    .line 7576
    goto :goto_0

    .line 7577
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7578
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0W()Z

    move-result v3

    goto :goto_0

    .line 7579
    :cond_6
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0b(I)Z

    move-result v3

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0d(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7580
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 7581
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$DecorView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0e(Landroid/view/View;ZIII)Z
    .locals 13

    .line 7582
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v6, 0x1

    move/from16 v10, p3

    if-eqz v0, :cond_1

    .line 7583
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 7584
    .local p1, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    .line 7585
    .local v10, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 7586
    .local p4, "scrollY":I
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7587
    .local p5, "count":I
    add-int/lit8 v2, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 7588
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 7589
    .local v0, "child":Landroid/view/View;
    add-int v1, p4, v5

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v1, v0, :cond_0

    add-int v1, p4, v5

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge v1, v0, :cond_0

    add-int v1, p5, v4

    .line 7590
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v0

    if-lt v1, v0, :cond_0

    add-int v1, p5, v4

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v9, 0x1

    add-int v11, p4, v5

    .line 7591
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v11, v0

    add-int v12, p5, v4

    .line 7592
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v12, v0

    .line 7593
    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/3D;->A0e(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7594
    return v6

    .line 7595
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7596
    .end local p1    # "i":I
    .end local v10    # "scrollX":I
    .end local p4    # "scrollY":I
    .end local p5    # "count":I
    .end local p1
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, v10

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private getClientWidth()I
    .locals 2

    .line 7755
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 8178
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0p:Z

    if-eq v0, p1, :cond_0

    .line 8179
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0p:Z

    .line 8180
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0f()V
    .locals 13

    .line 7597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v7

    .line 7598
    .local p0, "adapterCount":I
    iput v7, p0, Lcom/facebook/ads/redexgen/X/3D;->A0G:I

    .line 7599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0L:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v6, 0x1

    add-int/2addr v0, v6

    const/4 v5, 0x0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    .line 7600
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "NUxzbYKB38C8830aSHSoc7rOuvQ6KKjw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "E23nb8MxwjqpvKiqrD17l4bR7FdWFUoL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge v3, v7, :cond_2

    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    .line 7601
    .local v0, "needPopulate":Z
    :goto_0
    iget v4, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    .line 7602
    .local v7, "newCurrItem":I
    const/4 v11, 0x0

    .line 7603
    .local v0, "isUpdating":Z
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 7604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/35;

    .line 7605
    .local v6, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/35;->A03:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A06(Ljava/lang/Object;)I

    move-result v8

    .line 7606
    .local v0, "newPos":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_4

    .line 7607
    .end local v6    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .end local v0    # "newPos":I
    :cond_3
    :goto_2
    add-int/2addr v3, v6

    goto :goto_1

    .line 7608
    :cond_4
    const/4 v0, -0x2

    if-ne v8, v0, :cond_6

    .line 7609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7610
    add-int/lit8 v3, v3, -0x1

    .line 7611
    if-nez v11, :cond_5

    .line 7612
    const/4 v11, 0x1

    .line 7613
    :cond_5
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget v1, v9, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/35;->A03:Ljava/lang/Object;

    invoke-virtual {v2, p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A0B(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 7614
    const/4 v12, 0x1

    .line 7615
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    iget v0, v9, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ne v1, v0, :cond_3

    .line 7616
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int/lit8 v0, v7, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 7617
    const/4 v12, 0x1

    goto :goto_2

    .line 7618
    :cond_6
    iget v10, v9, Lcom/facebook/ads/redexgen/X/35;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "CXZhbfMOsfHqdudS8oUHBRPLwe0MhJzA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v10, v8, :cond_3

    .line 7619
    iget v1, v9, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v1, v0, :cond_7

    .line 7620
    move v4, v8

    .line 7621
    :cond_7
    iput v8, v9, Lcom/facebook/ads/redexgen/X/35;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    .line 7622
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "nuby1bZs8jKJK7rkqs9ajCRBcIxNm0YN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "0Rmx2JLm7aBulgdoCmfHMSHVIg2nPwRL"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v12, 0x1

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7623
    .end local v0
    :cond_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/3D;->A0z:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7624
    if-eqz v12, :cond_c

    .line 7625
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v3

    .line 7626
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v2, v3, :cond_b

    .line 7627
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7628
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/36;

    .line 7629
    .local v5, "lp":Lcom/facebook/ads/redexgen/X/36;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_a

    .line 7630
    const/4 v0, 0x0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/36;->A00:F

    .line 7631
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/facebook/ads/redexgen/X/36;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7632
    .end local v6    # "i":I
    :cond_b
    invoke-direct {p0, v4, v5, v6}, Lcom/facebook/ads/redexgen/X/3D;->A0O(IZZ)V

    .line 7633
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->requestLayout()V

    .line 7634
    .end local v0
    :cond_c
    return-void
.end method

.method public final A0g()V
    .locals 1

    .line 7635
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0H(I)V

    .line 7636
    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 7637
    .local v6, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7638
    .local p0, "focusableCount":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getDescendantFocusability()I

    move-result v4

    .line 7639
    .local p1, "descendantFocusability":I
    const/high16 v0, 0x60000

    if-eq v4, v0, :cond_2

    .line 7640
    const/4 v5, 0x0

    .local p2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "IpvXuWuZmfdtaN6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge v5, v6, :cond_2

    .line 7641
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7642
    .local p3, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7643
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7644
    .local v3, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v1, v0, :cond_0

    .line 7645
    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 7646
    .end local p3    # "child":Landroid/view/View;
    .end local v3    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7647
    .end local p2    # "i":I
    :cond_2
    const/high16 v0, 0x40000

    if-ne v4, v0, :cond_3

    .line 7648
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v3, v0, :cond_6

    .line 7649
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7650
    return-void

    .line 7651
    :cond_4
    and-int/lit8 v1, p3, 0x1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_5

    .line 7652
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7653
    return-void

    .line 7654
    :cond_5
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7655
    :cond_6
    return-void
.end method

.method public final addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 7656
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local p0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 7657
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7658
    .local p1, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7659
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7660
    .local v3, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v1, v0, :cond_0

    .line 7661
    invoke-virtual {v2, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 7662
    .end local p1    # "child":Landroid/view/View;
    .end local v3    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7663
    .end local p0    # "i":I
    :cond_1
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .line 7664
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/3D;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7665
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/3D;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 7666
    :cond_0
    move-object v3, p3

    check-cast v3, Lcom/facebook/ads/redexgen/X/36;

    .line 7667
    .local p0, "lp":Lcom/facebook/ads/redexgen/X/36;
    iget-boolean v4, v3, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "0hKurRTmjdCHvNVYXWivI507L49T3Iz9"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3D;->A0d(Landroid/view/View;)Z

    move-result v0

    or-int/2addr v4, v0

    iput-boolean v4, v3, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    .line 7668
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0j:Z

    if-eqz v0, :cond_2

    .line 7669
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_3

    .line 7670
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/36;->A03:Z

    .line 7671
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3D;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 7672
    :goto_0
    return-void

    .line 7673
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 7674
    :cond_3
    const/16 v2, 0x56

    const/16 v1, 0x29

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final canScrollHorizontally(I)Z
    .locals 4

    .line 7675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 7676
    return v3

    .line 7677
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v0

    .line 7678
    .local p0, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v2

    .line 7679
    .local v0, "scrollX":I
    if-gez p1, :cond_2

    .line 7680
    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    if-le v2, v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 7681
    :cond_2
    if-lez p1, :cond_4

    .line 7682
    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    if-ge v2, v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    .line 7683
    :cond_4
    return v3
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 7684
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/36;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final computeScroll()V
    .locals 5

    .line 7685
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0l:Z

    .line 7686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7687
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v4

    .line 7688
    .local p0, "oldX":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollY()I

    move-result v3

    .line 7689
    .local v1, "oldY":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 7690
    .local v0, "x":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 7691
    .local v0, "y":I
    if-ne v4, v2, :cond_0

    if-eq v3, v1, :cond_1

    .line 7692
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 7693
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/3D;->A0a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7695
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 7696
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2z;->A07(Landroid/view/View;)V

    .line 7697
    return-void

    .line 7698
    .end local p0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v0    # "y":I
    .end local v0
    :cond_2
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0S(Z)V

    .line 7699
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 7700
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A0c(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7

    .line 7701
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v0, 0x1000

    if-ne v1, v0, :cond_0

    .line 7702
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "SnNuJhKin8DS21TzQefDZ7b1qeceX1Jv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "R0wvzxNXSAt5doStTJlFm1lxESFLXhHC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 7703
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7704
    .local p0, "childCount":I
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "LA2rc0K0poOotSQUO6QKpLGNHvEBCZdG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v3, v4, :cond_5

    .line 7705
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7706
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 7707
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    .line 7708
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "08daBwAiC3e1eMunN04MWwSicEkZtb5w"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "VX7AcKsgdRXMMXDzaUN7bbmrPcZJNGdB"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v6, :cond_3

    iget v1, v6, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v1, v0, :cond_3

    .line 7709
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7710
    const/4 v0, 0x1

    return v0

    .line 7711
    .end local v1    # "child":Landroid/view/View;
    .end local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7712
    .end local p1    # "i":I
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 7713
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 7714
    const/4 v6, 0x0

    .line 7715
    .local p0, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getOverScrollMode()I

    move-result v0

    .line 7716
    .local p1, "overScrollMode":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-eqz v0, :cond_3

    .line 7717
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 7718
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "05N514BeFeDJgHlm81yP34LPQc7rkHPA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "pzL9ltF7r1sXjfs3WepY84pTO2WENAbf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7719
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 7720
    .local v6, "restoreCount":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingTop()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v4, v0

    .line 7721
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getWidth()I

    move-result v3

    .line 7722
    .local v1, "width":I
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 7723
    neg-int v1, v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingTop()I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v2, v1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:F

    int-to-float v0, v3

    mul-float/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v4, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 7725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/2addr v6, v0

    .line 7726
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 7727
    .end local v6    # "restoreCount":I
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7728
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 7729
    .restart local v6    # "restoreCount":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getWidth()I

    move-result v5

    .line 7730
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingTop()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v4, v0

    .line 7731
    .local v1, "height":I
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 7732
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    int-to-float v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    neg-float v1, v1

    int-to-float v0, v5

    mul-float/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 7734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/2addr v6, v0

    .line 7735
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 7736
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7738
    .end local v6    # "restoreCount":I
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_4
    :goto_0
    if-eqz v6, :cond_5

    .line 7739
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2z;->A07(Landroid/view/View;)V

    .line 7740
    :cond_5
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 7741
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 7742
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0S:Landroid/graphics/drawable/Drawable;

    .line 7743
    .local p0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7744
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7745
    :cond_0
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 7746
    new-instance v0, Lcom/facebook/ads/redexgen/X/36;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/36;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 7747
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/36;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/36;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 7748
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/facebook/ads/redexgen/X/2k;
    .locals 1

    .line 7749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    return-object v0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 2

    .line 7750
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0F:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    add-int/lit8 v1, p1, -0x1

    sub-int/2addr v1, p2

    .line 7751
    .local p0, "index":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0d:Ljava/util/ArrayList;

    .line 7752
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A01:I

    .line 7753
    .local p1, "result":I
    return v0

    .line 7754
    :cond_0
    move v1, p2

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 7756
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 7757
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0L:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 7758
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 7759
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 7760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    .line 7761
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 7762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7765
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 7766
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 7767
    move-object/from16 v1, p0

    move-object v11, v1

    move-object/from16 v16, p1

    move-object/from16 v0, v16

    invoke-super {v1, v0}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 7768
    iget v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    if-lez v0, :cond_2

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0S:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-eqz v0, :cond_2

    .line 7769
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v12

    .line 7770
    .local v16, "scrollX":I
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/3D;->getWidth()I

    move-result v10

    .line 7771
    .local v11, "width":I
    iget v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    int-to-float v9, v0

    int-to-float v0, v10

    div-float/2addr v9, v0

    .line 7772
    .local v0, "marginOffset":F
    const/4 v8, 0x0

    .line 7773
    .local v0, "itemIndex":I
    iget-object v1, v11, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/35;

    .line 7774
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget v3, v4, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 7775
    .local v0, "offset":F
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 7776
    .local v0, "itemCount":I
    iget v6, v4, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 7777
    .local v12, "firstPos":I
    iget-object v1, v11, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/35;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 7778
    .local v10, "lastPos":I
    .local v0, "pos":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 7779
    :goto_1
    iget v0, v4, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-le v6, v0, :cond_0

    if-ge v8, v7, :cond_0

    .line 7780
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_1

    .line 7781
    :cond_0
    iget v0, v4, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ne v6, v0, :cond_3

    .line 7782
    iget v1, v4, Lcom/facebook/ads/redexgen/X/35;->A00:F

    iget v0, v4, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v1, v0

    int-to-float v0, v10

    mul-float/2addr v1, v0

    .line 7783
    .local v9, "drawAt":F
    iget v3, v4, Lcom/facebook/ads/redexgen/X/35;->A00:F

    iget v0, v4, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v3, v0

    add-float/2addr v3, v9

    .line 7784
    .end local v0    # "pos":I
    .local v0, "offset":F
    .end local v0    # "offset":F
    .local v9, "drawAt":F
    :goto_2
    iget v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    int-to-float v2, v0

    add-float/2addr v2, v1

    int-to-float v0, v12

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    .line 7785
    iget-object v15, v11, Lcom/facebook/ads/redexgen/X/3D;->A0S:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    iget v13, v11, Lcom/facebook/ads/redexgen/X/3D;->A0Q:I

    iget v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    .line 7786
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .end local v0
    .local v0, "marginOffset":F
    iget v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A09:I

    .line 7787
    invoke-virtual {v15, v14, v13, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7788
    iget-object v2, v11, Lcom/facebook/ads/redexgen/X/3D;->A0S:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7789
    .end local v0    # "marginOffset":F
    .restart local v0    # "marginOffset":F
    :cond_1
    add-int v0, v12, v10

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    .line 7790
    :cond_2
    return-void

    .line 7791
    .end local v9    # "drawAt":F
    .end local v0    # "marginOffset":F
    .restart local v0    # "marginOffset":F
    :cond_3
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v2

    .line 7792
    .local v9, "widthFactor":F
    add-float v1, v3, v2

    int-to-float v0, v10

    mul-float/2addr v1, v0

    .line 7793
    .local v0, "drawAt":F
    add-float/2addr v2, v9

    add-float/2addr v3, v2

    goto :goto_2

    .line 7794
    .end local v9    # "widthFactor":F
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    .line 7795
    move-object/from16 v4, p0

    move-object v4, v4

    move-object/from16 v5, p1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v3, v0, 0xff

    .line 7796
    .local v6, "action":I
    const/4 v1, 0x0

    const/4 v0, 0x3

    if-eq v3, v0, :cond_0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 7797
    :cond_0
    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/3D;->A0V()Z

    .line 7798
    const/4 v0, 0x0

    return v0

    .line 7799
    :cond_1
    if-eqz v3, :cond_3

    .line 7800
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    if-eqz v0, :cond_2

    .line 7801
    return v6

    .line 7802
    :cond_2
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0m:Z

    if-eqz v0, :cond_3

    .line 7803
    return v1

    .line 7804
    :cond_3
    const/4 v2, 0x2

    if-eqz v3, :cond_e

    if-eq v3, v2, :cond_7

    const/4 v0, 0x6

    if-eq v3, v0, :cond_6

    .line 7805
    :cond_4
    :goto_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    .line 7806
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    .line 7807
    :cond_5
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7808
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    return v0

    .line 7809
    :cond_6
    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/3D;->A0Q(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 7810
    :cond_7
    iget v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 7811
    .local v0, "activePointerId":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_8

    goto :goto_0

    .line 7812
    :cond_8
    invoke-virtual {v5, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 7813
    .local v2, "pointerIndex":I
    invoke-virtual {v5, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 7814
    .local v0, "x":F
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    sub-float v8, v2, v0

    .line 7815
    .local v0, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 7816
    .local v0, "xDiff":F
    invoke-virtual {v5, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 7817
    .local v3, "y":F
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A04:F

    sub-float v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 7818
    .local v0, "yDiff":F
    const/4 v10, 0x0

    cmpl-float v0, v8, v10

    if-eqz v0, :cond_a

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    invoke-direct {v4, v0, v8}, Lcom/facebook/ads/redexgen/X/3D;->A0Z(FF)Z

    move-result v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v3, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "EZKp9TCcvWp5KGK4NZAMSiBqs7aWzhUp"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    if-nez v9, :cond_a

    const/4 v15, 0x0

    float-to-int v3, v8

    float-to-int v1, v2

    float-to-int v0, v7

    .line 7819
    move-object v13, v4

    move-object v14, v4

    .end local v3    # "y":F
    .local v0, "y":F
    move/from16 v17, v1

    move/from16 v18, v0

    move/from16 v16, v3

    invoke-direct/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/3D;->A0e(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7820
    iput v2, v4, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 7821
    iput v7, v4, Lcom/facebook/ads/redexgen/X/3D;->A06:F

    .line 7822
    iput-boolean v6, v4, Lcom/facebook/ads/redexgen/X/3D;->A0m:Z

    .line 7823
    const/4 v0, 0x0

    return v0

    .line 7824
    .end local v3
    .restart local v0    # "y":F
    :cond_a
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    int-to-float v0, v0

    cmpl-float v0, v12, v0

    if-lez v0, :cond_d

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v12

    cmpl-float v0, v0, v11

    if-lez v0, :cond_d

    .line 7825
    iput-boolean v6, v4, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    .line 7826
    invoke-direct {v4, v6}, Lcom/facebook/ads/redexgen/X/3D;->A0U(Z)V

    sget-object v3, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x7

    aget-object v3, v3, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_10

    .line 7827
    sget-object v3, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "ybIINdNSgG3BiY9zlb2MMSjx9lyeSUU1"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/3D;->setScrollState(I)V

    .line 7828
    cmpl-float v0, v8, v10

    if-lez v0, :cond_c

    .line 7829
    iget v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A03:F

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    :goto_1
    iput v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 7830
    iput v7, v4, Lcom/facebook/ads/redexgen/X/3D;->A06:F

    .line 7831
    invoke-direct {v4, v6}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7832
    :cond_b
    :goto_2
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    if-eqz v0, :cond_4

    .line 7833
    invoke-direct {v4, v2}, Lcom/facebook/ads/redexgen/X/3D;->A0Y(F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7834
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/2z;->A07(Landroid/view/View;)V

    goto/16 :goto_0

    .line 7835
    :cond_c
    iget v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A03:F

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    goto :goto_1

    .line 7836
    :cond_d
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    .line 7837
    iput-boolean v6, v4, Lcom/facebook/ads/redexgen/X/3D;->A0m:Z

    goto :goto_2

    .line 7838
    .end local v0    # "y":F
    .end local v0
    .end local v2    # "pointerIndex":I
    .end local v0
    .end local v0
    .end local v0
    .end local v0
    :cond_e
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A03:F

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 7839
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A04:F

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A06:F

    .line 7840
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 7841
    iput-boolean v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A0m:Z

    .line 7842
    iput-boolean v6, v4, Lcom/facebook/ads/redexgen/X/3D;->A0l:Z

    .line 7843
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 7844
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0P:I

    if-ne v0, v2, :cond_f

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    .line 7845
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0C:I

    if-le v1, v0, :cond_f

    .line 7846
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "OaI1HMcnWaQHDD1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7847
    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    .line 7848
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3D;->A0g()V

    .line 7849
    iput-boolean v6, v4, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    .line 7850
    invoke-direct {v4, v6}, Lcom/facebook/ads/redexgen/X/3D;->A0U(Z)V

    .line 7851
    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/3D;->setScrollState(I)V

    goto/16 :goto_0

    .line 7852
    :cond_f
    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0S(Z)V

    .line 7853
    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    .line 7854
    goto/16 :goto_0

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    move/from16 v8, p5

    move/from16 v9, p4

    .line 7855
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v7

    .line 7856
    .local p1, "count":I
    sub-int v9, v9, p2

    .line 7857
    .local p2, "width":I
    sub-int v8, v8, p3

    .line 7858
    .local p3, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v11

    .line 7859
    .local v9, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingTop()I

    move-result v12

    .line 7860
    .local v8, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v17

    .line 7861
    .local v6, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingBottom()I

    move-result v16

    .line 7862
    .local v7, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v15

    .line 7863
    .local v9, "scrollX":I
    const/4 v10, 0x0

    .line 7864
    .local v8, "decorCount":I
    const/4 v2, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v7, :cond_8

    .line 7865
    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7866
    .local v17, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 7867
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/36;

    .line 7868
    .local v12, "lp":Lcom/facebook/ads/redexgen/X/36;
    .local v16, "childLeft":I
    .local v15, "childTop":I
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-eqz v0, :cond_0

    .line 7869
    iget v0, v3, Lcom/facebook/ads/redexgen/X/36;->A04:I

    and-int/lit8 v4, v0, 0x7

    .line 7870
    .local v10, "hgrav":I
    .end local v16    # "childLeft":I
    .local v2, "childLeft":I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/36;->A04:I

    and-int/lit8 v3, v0, 0x70

    .line 7871
    .local v16, "vgrav":I
    .end local v12    # "lp":Lcom/facebook/ads/redexgen/X/36;
    .local v3, "lp":Lcom/facebook/ads/redexgen/X/36;
    const/4 v0, 0x1

    if-eq v4, v0, :cond_6

    const/4 v0, 0x3

    if-eq v4, v0, :cond_5

    const/4 v0, 0x5

    if-eq v4, v0, :cond_4

    .line 7872
    move v4, v11

    .line 7873
    .end local v2    # "childLeft":I
    .local v12, "childLeft":I
    .end local v9    # "scrollX":I
    .local v2, "paddingLeft":I
    :goto_1
    const/16 v0, 0x10

    if-eq v3, v0, :cond_3

    const/16 v0, 0x30

    if-eq v3, v0, :cond_2

    const/16 v0, 0x50

    if-eq v3, v0, :cond_1

    .line 7874
    move v13, v12

    .line 7875
    .end local v15    # "childTop":I
    .local v9, "childTop":I
    :goto_2
    add-int/2addr v4, v15

    .line 7876
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v4

    .line 7877
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .end local v8    # "decorCount":I
    .local v0, "paddingTop":I
    add-int/2addr v0, v13

    .line 7878
    invoke-virtual {v1, v4, v13, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 7879
    add-int/lit8 v10, v10, 0x1

    .line 7880
    .end local v12    # "childLeft":I
    .end local v17    # "child":Landroid/view/View;
    .end local v16    # "vgrav":I
    .end local v15
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7881
    .end local v9    # "childTop":I
    .restart local v15    # "childTop":I
    :cond_1
    sub-int v13, v8, v16

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v13, v0

    .line 7882
    .end local v15    # "childTop":I
    .restart local v9    # "childTop":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sget-object v5, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v3, v5, v0

    const/4 v0, 0x7

    aget-object v5, v5, v0

    const/16 v0, 0x14

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_7

    sget-object v5, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v3, "4DhY9NaEfbkSZ9C"

    const/4 v0, 0x0

    aput-object v3, v5, v0

    add-int v16, v16, v14

    goto :goto_2

    .line 7883
    .end local v9    # "childTop":I
    .restart local v15    # "childTop":I
    :cond_2
    move v13, v12

    .line 7884
    .end local v15    # "childTop":I
    .restart local v9    # "childTop":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v12, v0

    .line 7885
    goto :goto_2

    .line 7886
    .end local v9    # "childTop":I
    .restart local v15    # "childTop":I
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v8, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 7887
    .end local v15    # "childTop":I
    .restart local v9    # "childTop":I
    goto :goto_2

    .line 7888
    .end local v12
    .restart local v2    # "paddingLeft":I
    :cond_4
    sub-int v4, v9, v17

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v4, v0

    .line 7889
    .end local v2    # "paddingLeft":I
    .restart local v12    # "childLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v17, v17, v0

    goto :goto_1

    .line 7890
    .end local v12    # "childLeft":I
    .restart local v2    # "paddingLeft":I
    :cond_5
    move v4, v11

    .line 7891
    .end local v2    # "paddingLeft":I
    .restart local v12    # "childLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v11, v0

    .line 7892
    goto :goto_1

    .line 7893
    .end local v12    # "childLeft":I
    .restart local v2    # "paddingLeft":I
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v9, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 7894
    .end local v2    # "paddingLeft":I
    .restart local v12    # "childLeft":I
    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7895
    .end local v11    # "i":I
    :cond_8
    sub-int/2addr v9, v11

    sub-int v9, v9, v17

    .line 7896
    .local v11, "childWidth":I
    const/4 v5, 0x0

    .local v17, "i":I
    :goto_3
    if-ge v5, v7, :cond_c

    .line 7897
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7898
    .local v15, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_a

    .line 7899
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x7

    aget-object v3, v3, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v3, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "z1EGVKAINgCK1pWg9AJjq4tA4jzMvRMS"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "NHHZP3L5Wb2TlMM1gmFw9TkZDHFcmZzw"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    check-cast v2, Lcom/facebook/ads/redexgen/X/36;

    .line 7900
    .local v10, "lp":Lcom/facebook/ads/redexgen/X/36;
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_a

    :goto_4
    invoke-direct {v6, v4}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .local v3, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-eqz v0, :cond_a

    .line 7901
    int-to-float v1, v9

    .end local p1    # "count":I
    .local v16, "ii":Lcom/facebook/ads/redexgen/X/35;
    .local v3, "count":I
    iget v0, v0, Lcom/facebook/ads/redexgen/X/35;->A00:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 7902
    .local p1, "loff":I
    add-int v3, v11, v0

    .line 7903
    .local v12, "childLeft":I
    .local v0, "childTop":I
    .end local p1    # "loff":I
    .local v3, "loff":I
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/36;->A03:Z

    if-eqz v0, :cond_9

    .line 7904
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/36;->A03:Z

    .line 7905
    int-to-float v1, v9

    .end local p2    # "width":I
    .local v3, "width":I
    iget v0, v2, Lcom/facebook/ads/redexgen/X/36;->A00:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7906
    .local p1, "widthSpec":I
    sub-int v0, v8, v12

    .end local v9    # "childTop":I
    .local v0, "paddingLeft":I
    sub-int v0, v0, v16

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7907
    .local p2, "heightSpec":I
    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 7908
    .end local p2    # "heightSpec":I
    .end local v9
    .restart local v3    # "width":I
    .restart local v0    # "paddingLeft":I
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v3

    .line 7909
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    move v0, v12

    .end local v0    # "paddingLeft":I
    .local v9, "childTop":I
    add-int/2addr v1, v0

    .line 7910
    invoke-virtual {v4, v3, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 7911
    .end local p1    # "widthSpec":I
    .end local p2
    .end local v9    # "childTop":I
    .end local v15    # "child":Landroid/view/View;
    .restart local v3    # "width":I
    .restart local v3    # "width":I
    .restart local v0    # "paddingLeft":I
    :cond_a
    add-int/lit8 v5, v5, 0x1

    const/16 v3, 0x8

    goto :goto_3

    .line 7912
    :cond_b
    check-cast v2, Lcom/facebook/ads/redexgen/X/36;

    .local v10, "lp":Lcom/facebook/ads/redexgen/X/36;
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_a

    goto :goto_4

    .line 7913
    .end local v3    # "width":I
    .end local v3
    .end local v0    # "paddingLeft":I
    .restart local p1    # "widthSpec":I
    .restart local p2    # "heightSpec":I
    .restart local v9    # "childTop":I
    .end local p1    # "widthSpec":I
    .end local p2    # "heightSpec":I
    .end local v9    # "childTop":I
    .end local v17    # "i":I
    .restart local v3    # "width":I
    .restart local v3    # "width":I
    .restart local v0    # "paddingLeft":I
    :cond_c
    iput v12, v6, Lcom/facebook/ads/redexgen/X/3D;->A0Q:I

    .line 7914
    sub-int v8, v8, v16

    iput v8, v6, Lcom/facebook/ads/redexgen/X/3D;->A09:I

    .line 7915
    iput v10, v6, Lcom/facebook/ads/redexgen/X/3D;->A0D:I

    .line 7916
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    if-eqz v0, :cond_d

    .line 7917
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    const/4 v0, 0x0

    invoke-direct {v6, v1, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0N(IZIZ)V

    .line 7918
    :goto_5
    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    .line 7919
    return-void

    .line 7920
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onMeasure(II)V
    .locals 15

    .line 7921
    move-object v9, p0

    const/4 v0, 0x0

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/3D;->getDefaultSize(II)I

    move-result v1

    .line 7922
    move/from16 v2, p2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/3D;->getDefaultSize(II)I

    move-result v0

    .line 7923
    invoke-virtual {v9, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->setMeasuredDimension(II)V

    .line 7924
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getMeasuredWidth()I

    move-result v8

    .line 7925
    .local v9, "measuredWidth":I
    div-int/lit8 v1, v8, 0xa

    .line 7926
    .local v1, "maxGutterSize":I
    iget v0, v9, Lcom/facebook/ads/redexgen/X/3D;->A0E:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v9, Lcom/facebook/ads/redexgen/X/3D;->A0I:I

    .line 7927
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v8, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v0

    sub-int/2addr v8, v0

    .line 7928
    .local v1, "childWidthSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingTop()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v4, v0

    .line 7929
    .local v2, "childHeightSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v6

    .line 7930
    .local v0, "size":I
    const/4 v5, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v7, 0x8

    if-ge v5, v6, :cond_e

    .line 7931
    invoke-virtual {v9, v5}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7932
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_5

    .line 7933
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/36;

    .line 7934
    .local v1, "lp":Lcom/facebook/ads/redexgen/X/36;
    if-eqz v11, :cond_5

    iget-boolean v0, v11, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-eqz v0, :cond_5

    .line 7935
    iget v0, v11, Lcom/facebook/ads/redexgen/X/36;->A04:I

    and-int/lit8 v13, v0, 0x7

    .line 7936
    .local v0, "hgrav":I
    iget v0, v11, Lcom/facebook/ads/redexgen/X/36;->A04:I

    and-int/lit8 v1, v0, 0x70

    .line 7937
    .local v8, "vgrav":I
    const/high16 v7, -0x80000000

    .line 7938
    .local v0, "widthMode":I
    const/high16 v2, -0x80000000

    .line 7939
    .local v8, "heightMode":I
    const/16 v0, 0x30

    if-eq v1, v0, :cond_0

    const/16 v0, 0x50

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v14, 0x1

    .line 7940
    .local v1, "consumeVertical":Z
    :goto_1
    const/4 v0, 0x3

    if-eq v13, v0, :cond_3

    const/4 v12, 0x5

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7941
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 7942
    :cond_2
    sget-object v3, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "9a0FyoC52B3yBXBi2GxtutV5LsdNQe1M"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "xl5cJkQWQfSP6Zwlt45arSi0METJpEUG"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    if-ne v13, v12, :cond_d

    :cond_3
    const/4 v12, 0x1

    .line 7943
    .local v0, "consumeHorizontal":Z
    :goto_2
    if-eqz v14, :cond_c

    .line 7944
    const/high16 v7, 0x40000000    # 2.0f

    .line 7945
    .local v4, "widthSize":I
    .local v0, "heightSize":I
    :cond_4
    :goto_3
    iget v1, v11, Lcom/facebook/ads/redexgen/X/36;->width:I

    .end local v9    # "measuredWidth":I
    .local v4, "measuredWidth":I
    const/4 v0, -0x2

    if-eq v1, v0, :cond_b

    .line 7946
    const/high16 v7, 0x40000000    # 2.0f

    .line 7947
    iget v1, v11, Lcom/facebook/ads/redexgen/X/36;->width:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_a

    .line 7948
    iget v3, v11, Lcom/facebook/ads/redexgen/X/36;->width:I

    .line 7949
    .end local v4    # "measuredWidth":I
    .local v2, "widthSize":I
    .end local v4
    .restart local v2    # "widthSize":I
    :goto_4
    iget v1, v11, Lcom/facebook/ads/redexgen/X/36;->height:I

    const/4 v0, -0x2

    if-eq v1, v0, :cond_9

    .line 7950
    const/high16 v2, 0x40000000    # 2.0f

    .line 7951
    iget v1, v11, Lcom/facebook/ads/redexgen/X/36;->height:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_8

    .line 7952
    iget v0, v11, Lcom/facebook/ads/redexgen/X/36;->height:I

    .line 7953
    .end local v0    # "heightSize":I
    .local v9, "heightSize":I
    .end local v8    # "heightMode":I
    .end local v0
    .restart local v9    # "heightSize":I
    .local v0, "heightMode":I
    .end local v1    # "consumeVertical":Z
    .local v8, "maxGutterSize":I
    :goto_5
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7954
    .local v1, "widthSpec":I
    .end local v2    # "widthSize":I
    .restart local v4    # "measuredWidth":I
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7955
    .local v2, "heightSpec":I
    invoke-virtual {v10, v1, v0}, Landroid/view/View;->measure(II)V

    .line 7956
    if-eqz v14, :cond_7

    .line 7957
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_6

    sub-int/2addr v4, v3

    .line 7958
    .end local v9    # "heightSize":I
    .end local v1    # "widthSpec":I
    .end local v0    # "heightMode":I
    .restart local v8    # "maxGutterSize":I
    .restart local v4    # "measuredWidth":I
    :cond_5
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "EqasZ8zwVhCwMRvet1jUrx6TZdyGyQkK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sub-int/2addr v4, v3

    goto :goto_6

    .line 7959
    :cond_7
    if-eqz v12, :cond_5

    .line 7960
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v8, v0

    goto :goto_6

    .line 7961
    .end local v9
    .restart local v0    # "heightMode":I
    :cond_8
    move v0, v4

    goto :goto_5

    .line 7962
    :cond_9
    move v0, v4

    goto :goto_5

    .line 7963
    .end local v2    # "heightSpec":I
    .restart local v4    # "measuredWidth":I
    :cond_a
    move v3, v8

    goto :goto_4

    .line 7964
    :cond_b
    move v3, v8

    goto :goto_4

    .line 7965
    :cond_c
    if-eqz v12, :cond_4

    .line 7966
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_3

    .line 7967
    :cond_d
    const/4 v12, 0x0

    goto :goto_2

    .line 7968
    .end local v8    # "maxGutterSize":I
    .end local v4    # "measuredWidth":I
    .restart local v9    # "heightSize":I
    .restart local v1    # "widthSpec":I
    .end local v9    # "heightSize":I
    .end local v1    # "widthSpec":I
    .end local v8
    .restart local v8    # "maxGutterSize":I
    .restart local v4    # "measuredWidth":I
    :cond_e
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, v9, Lcom/facebook/ads/redexgen/X/3D;->A0B:I

    .line 7969
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, v9, Lcom/facebook/ads/redexgen/X/3D;->A0A:I

    .line 7970
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/facebook/ads/redexgen/X/3D;->A0j:Z

    .line 7971
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0g()V

    .line 7972
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/facebook/ads/redexgen/X/3D;->A0j:Z

    .line 7973
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v5

    .line 7974
    .end local v0    # "heightMode":I
    .local v2, "size":I
    const/4 v4, 0x0

    .local v9, "i":I
    :goto_7
    if-ge v4, v5, :cond_11

    .line 7975
    invoke-virtual {v9, v4}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7976
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_10

    .line 7977
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/36;

    .line 7978
    .local v1, "lp":Lcom/facebook/ads/redexgen/X/36;
    if-eqz v2, :cond_f

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_10

    .line 7979
    :cond_f
    int-to-float v1, v8

    iget v0, v2, Lcom/facebook/ads/redexgen/X/36;->A00:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7980
    .local v0, "widthSpec":I
    iget v0, v9, Lcom/facebook/ads/redexgen/X/3D;->A0A:I

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->measure(II)V

    .line 7981
    .end local v0    # "widthSpec":I
    .end local v1    # "lp":Lcom/facebook/ads/redexgen/X/36;
    .end local v0
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 7982
    .end local v9    # "i":I
    :cond_11
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 6

    .line 7983
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v5

    .line 7984
    .local p0, "count":I
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 7985
    const/4 v4, 0x0

    .line 7986
    .local p1, "index":I
    const/4 v3, 0x1

    .line 7987
    .local p2, "increment":I
    .local v5, "end":I
    .local v0, "i":I
    :goto_0
    if-eq v4, v5, :cond_3

    .line 7988
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7989
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7990
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7991
    .local v3, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v1, v0, :cond_0

    .line 7992
    invoke-virtual {v2, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7993
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "Znu0WDOQkx79zIIXKJQFb47iIrfdw3ED"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "SboSqac50StP5vJHTPKGX42Xta1ZIbyJ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    .line 7994
    .end local v4    # "child":Landroid/view/View;
    .end local v3    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_0
    add-int/2addr v4, v3

    goto :goto_0

    .line 7995
    .end local p1    # "index":I
    .end local p2    # "increment":I
    .end local v5    # "end":I
    :cond_1
    add-int/lit8 v4, v5, -0x1

    .line 7996
    .restart local p1    # "index":I
    const/4 v3, -0x1

    .line 7997
    .restart local p2    # "increment":I
    const/4 v5, -0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7998
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 7999
    instance-of v0, p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    if-nez v0, :cond_0

    .line 8000
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8001
    return-void

    .line 8002
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 8003
    .local p0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    .line 8004
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 8005
    :cond_1
    check-cast p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;->unwrap(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    .line 8006
    .local p1, "state":Landroid/os/Parcelable;
    instance-of v0, v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_2

    .line 8007
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8008
    return-void

    .line 8009
    :cond_2
    check-cast v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;

    .line 8010
    .local v0, "ss":Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;
    invoke-virtual {v1}, Lcom/facebook/ads/internal/androidx/support/v4/view/AbsSavedState;->A02()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-eqz v0, :cond_3

    .line 8012
    iget v2, v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A00:I

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0O(IZZ)V

    .line 8013
    :goto_0
    return-void

    .line 8014
    :cond_3
    iget v0, v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0O:I

    .line 8015
    iget-object v0, v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A01:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0T:Landroid/os/Parcelable;

    .line 8016
    iget-object v0, v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A02:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0c:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 8017
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 8018
    .local p0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8019
    .local v0, "ss":Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    iput v0, v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A00:I

    .line 8020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-eqz v0, :cond_0

    .line 8021
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A07()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A01:Landroid/os/Parcelable;

    .line 8022
    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    .line 8023
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 8024
    if-eq p1, p3, :cond_0

    .line 8025
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    invoke-direct {p0, p1, p3, v0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0L(IIII)V

    .line 8026
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 8027
    move-object v4, p0

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0h:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 8028
    return v3

    .line 8029
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    .line 8030
    return v5

    .line 8031
    :cond_1
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "LvXhlgkzmvNssd6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    if-nez v0, :cond_3

    .line 8032
    .end local v3
    .end local v1
    :cond_2
    return v5

    .line 8033
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 8034
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    .line 8035
    :cond_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 8036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 8037
    .local v4, "action":I
    const/4 v7, 0x0

    .line 8038
    .local v3, "needsInvalidate":Z
    and-int/lit16 v1, v0, 0xff

    if-eqz v1, :cond_f

    if-eq v1, v3, :cond_e

    const/4 v0, 0x2

    if-eq v1, v0, :cond_a

    const/4 v0, 0x3

    if-eq v1, v0, :cond_9

    const/4 v0, 0x5

    if-eq v1, v0, :cond_8

    const/4 v0, 0x6

    if-eq v1, v0, :cond_7

    .line 8039
    :cond_5
    :goto_0
    if-eqz v7, :cond_6

    .line 8040
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2z;->A07(Landroid/view/View;)V

    .line 8041
    :cond_6
    return v3

    .line 8042
    :cond_7
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A0Q(Landroid/view/MotionEvent;)V

    .line 8043
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    goto :goto_0

    .line 8044
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 8045
    .local v0, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 8046
    .local v0, "x":F
    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 8047
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 8048
    goto :goto_0

    .line 8049
    .end local v0    # "x":F
    .end local v0
    :cond_9
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    if-eqz v0, :cond_5

    .line 8050
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    invoke-direct {v4, v0, v3, v5, v5}, Lcom/facebook/ads/redexgen/X/3D;->A0N(IZIZ)V

    .line 8051
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0V()Z

    move-result v7

    goto :goto_0

    .line 8052
    :cond_a
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    if-nez v0, :cond_c

    .line 8053
    iget v5, v4, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "xOMquiR2h81c5MYZBontN4EF9kNoPk4J"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Oa0rpDU6Vxb17myeKq3u649yrNwStVG1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 8054
    .local v0, "pointerIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_b

    .line 8055
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0V()Z

    move-result v7

    .line 8056
    goto :goto_0

    .line 8057
    :cond_b
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 8058
    .restart local v0    # "pointerIndex":I
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    sub-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 8059
    .local v5, "xDiff":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 8060
    .local v0, "y":F
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A06:F

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 8061
    .local v6, "yDiff":F
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_c

    cmpl-float v0, v5, v1

    if-lez v0, :cond_c

    .line 8062
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    .line 8063
    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->A0U(Z)V

    .line 8064
    iget v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A03:F

    sub-float/2addr v6, v1

    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_d

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 8065
    :goto_1
    iput v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 8066
    iput v2, v4, Lcom/facebook/ads/redexgen/X/3D;->A06:F

    .line 8067
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->setScrollState(I)V

    .line 8068
    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 8069
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 8070
    .local v2, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_c

    .line 8071
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8072
    .end local v0    # "y":F
    .end local v0
    .end local v5    # "xDiff":F
    .end local v0
    .end local v6    # "yDiff":F
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_c
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    if-eqz v0, :cond_5

    .line 8073
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 8074
    .local v0, "activePointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 8075
    .restart local v0    # "activePointerIndex":I
    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0Y(F)Z

    move-result v0

    or-int/2addr v7, v0

    .line 8076
    .end local v0    # "activePointerIndex":I
    .end local v0
    goto/16 :goto_0

    .line 8077
    :cond_d
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    goto :goto_1

    .line 8078
    :cond_e
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    if-eqz v0, :cond_5

    .line 8079
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    .line 8080
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v1, 0x3e8

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0J:I

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 8081
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v6, v0

    .line 8082
    .local v0, "initialVelocity":I
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    .line 8083
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v8

    .line 8084
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v2

    .line 8085
    .local v0, "scrollX":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A03()Lcom/facebook/ads/redexgen/X/35;

    move-result-object v7

    .line 8086
    .local v6, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    int-to-float v1, v0

    int-to-float v0, v8

    div-float/2addr v1, v0

    .line 8087
    .local v2, "marginOffset":F
    iget v5, v7, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 8088
    .local v0, "currentPage":I
    int-to-float v2, v2

    int-to-float v0, v8

    div-float/2addr v2, v0

    iget v0, v7, Lcom/facebook/ads/redexgen/X/35;->A00:F

    sub-float/2addr v2, v0

    iget v0, v7, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v0, v1

    div-float/2addr v2, v0

    .line 8089
    .local v1, "pageOffset":F
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 8090
    .local v0, "activePointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 8091
    .local v2, "x":F
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A03:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 8092
    .local v0, "totalDelta":I
    .end local v4    # "action":I
    .local v1, "action":I
    invoke-direct {v4, v5, v2, v6, v0}, Lcom/facebook/ads/redexgen/X/3D;->A01(IFII)I

    move-result v0

    .line 8093
    .local v4, "nextPage":I
    invoke-direct {v4, v0, v3, v3, v6}, Lcom/facebook/ads/redexgen/X/3D;->A0P(IZZI)V

    .line 8094
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0V()Z

    move-result v7

    .line 8095
    .end local v4    # "nextPage":I
    .end local v0    # "totalDelta":I
    .end local v0
    .end local v5    # "width":I
    .end local v0
    .end local v6    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .end local v2    # "x":F
    .end local v0
    .end local v1    # "action":I
    .end local v0
    .end local v2
    .end local v0
    goto/16 :goto_0

    .line 8096
    .end local v1
    .restart local v4    # "nextPage":I
    .end local v4    # "nextPage":I
    .restart local v1    # "action":I
    :cond_f
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 8097
    iput-boolean v5, v4, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_10

    .line 8098
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "NxXDsBxSO9qAsxtMfhqSO4FpjPQfKtvp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "c31Z8Oe7f81kGLNvpqtNm4aDmxtkJeXM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0g()V

    .line 8099
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A03:F

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 8100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A04:F

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A06:F

    .line 8101
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 8102
    goto/16 :goto_0

    .line 8103
    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "TP5FYXvYzrHQXjTrYZxGSpAYONm66bvH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "DiRqCJE2Rl2Trqmcin2kBAf6IiP2sL78"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0g()V

    .line 8104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A03:F

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 8105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A04:F

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A06:F

    .line 8106
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 8107
    goto/16 :goto_0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    .line 8108
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0j:Z

    if-eqz v0, :cond_0

    .line 8109
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->removeViewInLayout(Landroid/view/View;)V

    .line 8110
    :goto_0
    return-void

    .line 8111
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/facebook/ads/redexgen/X/2k;)V
    .locals 6

    .line 8112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 8113
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2k;->A0A(Landroid/database/DataSetObserver;)V

    .line 8114
    const/4 v5, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 8115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/35;

    .line 8116
    .local v3, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/35;->A03:Ljava/lang/Object;

    invoke-virtual {v2, p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A0B(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 8117
    .end local v3    # "ii":Lcom/facebook/ads/redexgen/X/35;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8118
    .end local p0    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "5tjoWE4Q5tO0E95pkDqQ6gCRa23v2VF9"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "zPJLPuVWeZXbdPcD4tg2pz6GDm3T23cV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8119
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0A()V

    .line 8120
    iput v4, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    .line 8121
    invoke-virtual {p0, v4, v4}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 8122
    .local p0, "oldAdapter":Lcom/facebook/ads/redexgen/X/2k;
    :cond_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    .line 8123
    iput v4, p0, Lcom/facebook/ads/redexgen/X/3D;->A0G:I

    .line 8124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-eqz v0, :cond_3

    .line 8125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0b:Lcom/facebook/ads/redexgen/X/3A;

    if-nez v0, :cond_2

    .line 8126
    new-instance v0, Lcom/facebook/ads/redexgen/X/3A;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3A;-><init>(Lcom/facebook/ads/redexgen/X/3D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0b:Lcom/facebook/ads/redexgen/X/3A;

    .line 8127
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0b:Lcom/facebook/ads/redexgen/X/3A;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A0A(Landroid/database/DataSetObserver;)V

    .line 8128
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    .line 8129
    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    .line 8130
    .local v3, "wasFirstLayout":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    .line 8131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0G:I

    .line 8132
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0O:I

    if-ltz v0, :cond_4

    .line 8133
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0O:I

    invoke-direct {p0, v0, v4, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0O(IZZ)V

    .line 8134
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0O:I

    .line 8135
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A0T:Landroid/os/Parcelable;

    .line 8136
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A0c:Ljava/lang/ClassLoader;

    .line 8137
    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0e:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 8138
    const/4 v1, 0x0

    .local p1, "i":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    if-ge v1, v0, :cond_6

    .line 8139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    .line 8140
    :cond_4
    if-nez v2, :cond_5

    .line 8141
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0g()V

    goto :goto_1

    .line 8142
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->requestLayout()V

    goto :goto_1

    .line 8143
    .end local p1    # "i":I
    .end local v0    # "count":I
    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 8144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    .line 8145
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0O(IZZ)V

    .line 8146
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 5

    .line 8147
    const/4 v4, 0x1

    if-ge p1, v4, :cond_0

    .line 8148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7f

    const/16 v1, 0x1f

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x33

    const/16 v1, 0x1a

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x12c

    const/16 v1, 0x9

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8149
    const/4 p1, 0x1

    .line 8150
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0L:I

    if-eq p1, v0, :cond_1

    .line 8151
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0L:I

    .line 8152
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0g()V

    .line 8153
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/facebook/ads/redexgen/X/38;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8154
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0Z:Lcom/facebook/ads/redexgen/X/38;

    .line 8155
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 8156
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    .line 8157
    .local p0, "oldMargin":I
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    .line 8158
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getWidth()I

    move-result v0

    .line 8159
    .local p1, "width":I
    invoke-direct {p0, v0, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0L(IIII)V

    .line 8160
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->requestLayout()V

    .line 8161
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 8162
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/2G;->A00(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8163
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 8164
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0S:Landroid/graphics/drawable/Drawable;

    .line 8165
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->refreshDrawableState()V

    .line 8166
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->setWillNotDraw(Z)V

    .line 8167
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->invalidate()V

    .line 8168
    return-void

    .line 8169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollState(I)V
    .locals 3

    .line 8170
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0P:I

    if-ne v0, p1, :cond_0

    .line 8171
    return-void

    .line 8172
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0P:I

    .line 8173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0a:Lcom/facebook/ads/redexgen/X/39;

    if-eqz v0, :cond_1

    .line 8174
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0T(Z)V

    .line 8175
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A0G(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_3

    .line 8176
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "blMFZWDPlO2VlWf"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    .line 8177
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 8181
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0S:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
