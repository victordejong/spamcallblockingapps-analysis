.class public Lcom/facebook/ads/redexgen/X/3D;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3C;,
        Lcom/facebook/ads/redexgen/X/36;,
        Lcom/facebook/ads/redexgen/X/3A;,
        Lcom/facebook/ads/redexgen/X/Sw;,
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

    .line 6811
    invoke-static {}, Lcom/facebook/ads/redexgen/X/3D;->A0D()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3D;->A0C()V

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v1, 0x0

    const v0, 0x10100b3

    aput v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0w:[I

    .line 6812
    new-instance v0, Lcom/facebook/ads/redexgen/X/31;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/31;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3D;->A0z:Ljava/util/Comparator;

    .line 6813
    new-instance v0, Lcom/facebook/ads/redexgen/X/32;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/32;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3D;->A0x:Landroid/view/animation/Interpolator;

    .line 6814
    new-instance v0, Lcom/facebook/ads/redexgen/X/3C;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3C;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3D;->A0y:Lcom/facebook/ads/redexgen/X/3C;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 6815
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 6816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    .line 6817
    new-instance v0, Lcom/facebook/ads/redexgen/X/35;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/35;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0r:Lcom/facebook/ads/redexgen/X/35;

    .line 6818
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0q:Landroid/graphics/Rect;

    .line 6819
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0O:I

    .line 6820
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0T:Landroid/os/Parcelable;

    .line 6821
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0c:Ljava/lang/ClassLoader;

    .line 6822
    const v0, -0x800001

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:F

    .line 6823
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    .line 6824
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0L:I

    .line 6825
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 6826
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    .line 6827
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0n:Z

    .line 6828
    new-instance v0, Lcom/facebook/ads/redexgen/X/33;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/33;-><init>(Lcom/facebook/ads/redexgen/X/3D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0s:Ljava/lang/Runnable;

    .line 6829
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0P:I

    .line 6830
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0E()V

    .line 6831
    return-void
.end method

.method private final A00(F)F
    .locals 3

    .line 6832
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 6833
    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    .line 6834
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v0, v1

    return v0
.end method

.method private A01(IFII)I
    .locals 3

    .line 6835
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0H:I

    if-le v1, v0, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0K:I

    if-le v1, v0, :cond_2

    .line 6836
    if-lez p3, :cond_1

    .line 6837
    .local p0, "targetPage":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6838
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/35;

    .line 6839
    .local p1, "firstItem":Lcom/facebook/ads/redexgen/X/35;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/35;

    .line 6840
    .local p2, "lastItem":Lcom/facebook/ads/redexgen/X/35;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6841
    .end local p1    # "firstItem":Lcom/facebook/ads/redexgen/X/35;
    .end local p2    # "lastItem":Lcom/facebook/ads/redexgen/X/35;
    :cond_0
    return p1

    .line 6842
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6843
    .end local p0    # "targetPage":I
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-lt p1, v0, :cond_3

    const v0, 0x3ecccccd    # 0.4f

    .line 6844
    .local p0, "truncator":F
    :goto_1
    add-float/2addr p2, v0

    float-to-int v0, p2

    add-int/2addr p1, v0

    goto :goto_0

    .line 6845
    :cond_3
    const v0, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private A02(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3

    .line 6846
    if-nez p1, :cond_0

    .line 6847
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 6848
    :cond_0
    if-nez p2, :cond_1

    .line 6849
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 6850
    return-object p1

    .line 6851
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 6852
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 6853
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 6854
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 6855
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 6856
    .local p0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v0, v2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq v2, p0, :cond_2

    .line 6857
    check-cast v2, Landroid/view/ViewGroup;

    .line 6858
    .local p1, "group":Landroid/view/ViewGroup;
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 6859
    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 6860
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 6861
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 6862
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 6863
    .end local p1    # "group":Landroid/view/ViewGroup;
    goto :goto_0

    .line 6864
    :cond_2
    return-object p1
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/35;
    .locals 11

    .line 6865
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v1

    .line 6866
    .local p0, "width":I
    const/4 v7, 0x0

    if-lez v1, :cond_7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v0

    int-to-float v8, v0

    int-to-float v0, v1

    div-float/2addr v8, v0

    .line 6867
    .local v7, "scrollOffset":F
    :goto_0
    if-lez v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    int-to-float v7, v0

    int-to-float v0, v1

    div-float/2addr v7, v0

    .line 6868
    .local v1, "marginOffset":F
    :cond_0
    const/4 v9, -0x1

    .line 6869
    .local v0, "lastPos":I
    const/4 v4, 0x0

    .line 6870
    .local v8, "lastOffset":F
    const/4 v3, 0x0

    .line 6871
    .local v0, "lastWidth":F
    const/4 v2, 0x1

    .line 6872
    .local v8, "first":Z
    const/4 v10, 0x0

    .line 6873
    .local v0, "lastItem":Lcom/facebook/ads/redexgen/X/35;
    const/4 v6, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_9

    .line 6874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/35;

    .line 6875
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-nez v2, :cond_1

    iget v1, v5, Lcom/facebook/ads/redexgen/X/35;->A02:I

    add-int/lit8 v0, v9, 0x1

    if-eq v1, v0, :cond_1

    .line 6876
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/3D;->A0r:Lcom/facebook/ads/redexgen/X/35;

    .line 6877
    add-float/2addr v4, v3

    add-float/2addr v4, v7

    iput v4, v5, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 6878
    add-int/lit8 v0, v9, 0x1

    iput v0, v5, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 6879
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget v0, v5, Lcom/facebook/ads/redexgen/X/35;->A02:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v0

    iput v0, v5, Lcom/facebook/ads/redexgen/X/35;->A01:F

    .line 6880
    add-int/lit8 v6, v6, -0x1

    .line 6881
    :cond_1
    iget v4, v5, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 6882
    .local v9, "offset":F
    .local v4, "leftBound":F
    iget v3, v5, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v3, v4

    add-float/2addr v3, v7

    .line 6883
    .local v3, "rightBound":F
    if-nez v2, :cond_3

    cmpl-float v9, v8, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "VrUwTTzuyHD2SkMMCenWDHvarMqbXCCI"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "LX2NnyEsDXWEx3dFbPH8p7fzI1U1dTZ8"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ltz v9, :cond_8

    .line 6884
    :cond_3
    cmpg-float v0, v8, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "sbP3P6ChvdnfvWI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v6, v3, :cond_6

    .line 6885
    .restart local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .restart local v9    # "offset":F
    .restart local v4    # "leftBound":F
    .restart local v3    # "rightBound":F
    :cond_4
    :goto_2
    return-object v5

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "kvGf4Zg53U8bz7GLeUNnCLzy4o"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v6, v3, :cond_6

    goto :goto_2

    .line 6886
    :cond_6
    const/4 v2, 0x0

    .line 6887
    iget v9, v5, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 6888
    iget v3, v5, Lcom/facebook/ads/redexgen/X/35;->A01:F

    .line 6889
    move-object v10, v5

    .line 6890
    .end local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .end local v9    # "offset":F
    .end local v4    # "leftBound":F
    .end local v3    # "rightBound":F
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 6891
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 6892
    :cond_8
    return-object v10

    .line 6893
    .end local v7    # "i":I
    .end local v0
    .end local v9
    .end local v4
    .end local v3
    :cond_9
    return-object v10
.end method

.method private final A04(I)Lcom/facebook/ads/redexgen/X/35;
    .locals 3

    .line 6894
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 6895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/35;

    .line 6896
    .local p1, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ne v0, p1, :cond_0

    .line 6897
    return-object v1

    .line 6898
    .end local p1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6899
    .end local p0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final A05(II)Lcom/facebook/ads/redexgen/X/35;
    .locals 2

    .line 6900
    new-instance v1, Lcom/facebook/ads/redexgen/X/35;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/35;-><init>()V

    .line 6901
    .local p0, "ii":Lcom/facebook/ads/redexgen/X/35;
    iput p1, v1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 6902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/2k;->A08(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/35;->A03:Ljava/lang/Object;

    .line 6903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/35;->A01:F

    .line 6904
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 6905
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6906
    :goto_0
    return-object v1

    .line 6907
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private final A06(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;
    .locals 2

    .line 6908
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local p1, "parent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_2

    .line 6909
    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_1

    .line 6910
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 6911
    :cond_1
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 6912
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    return-object v0
.end method

.method private final A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;
    .locals 4

    .line 6913
    const/4 v3, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 6914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/35;

    .line 6915
    .local p1, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/35;->A03:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A0C(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6916
    return-object v2

    .line 6917
    .end local p1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6918
    .end local p0    # "i":I
    :cond_1
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "T6ty"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3
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

    add-int/lit8 v0, v0, -0x68

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
    .locals 4

    .line 6919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    .line 6920
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0m:Z

    .line 6921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 6922
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6923
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

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

    const-string v1, "yoRarqzFlsm2scdQtgnfRphmjo"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    .line 6924
    :cond_1
    return-void
.end method

.method private A0A()V
    .locals 2

    .line 6925
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6926
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6927
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/36;

    .line 6928
    .local v0, "lp":Lcom/facebook/ads/redexgen/X/36;
    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_0

    .line 6929
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->removeViewAt(I)V

    .line 6930
    add-int/lit8 v1, v1, -0x1

    .line 6931
    .end local v1    # "child":Landroid/view/View;
    .end local v0    # "lp":Lcom/facebook/ads/redexgen/X/36;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6932
    .end local p0    # "i":I
    :cond_1
    return-void
.end method

.method private A0B()V
    .locals 4

    .line 6933
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0F:I

    if-eqz v0, :cond_2

    .line 6934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 6935
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0d:Ljava/util/ArrayList;

    .line 6936
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v3

    .line 6937
    .local p0, "childCount":I
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 6938
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6939
    .local v0, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6940
    .end local v0    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6941
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 6942
    .end local v0
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0d:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/3D;->A0y:Lcom/facebook/ads/redexgen/X/3C;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6943
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
        -0x63t
        -0x46t
        -0x45t
        -0x63t
        -0x3et
        -0xet
        0x3t
        0x9t
        0x7t
        0x14t
        -0x3et
        0x5t
        0xet
        0x3t
        0x15t
        0x15t
        -0x24t
        -0x3et
        -0x30t
        0x0t
        0x11t
        0x17t
        0x15t
        0x22t
        -0x30t
        0x19t
        0x14t
        -0x16t
        -0x30t
        -0x22t
        0xet
        0x30t
        0x2dt
        0x20t
        0x2at
        0x23t
        0x2bt
        0x1ft
        0x32t
        0x27t
        0x21t
        -0x22t
        0x1ft
        0x22t
        0x1ft
        0x2et
        0x32t
        0x23t
        0x30t
        -0x8t
        -0x22t
        -0x1et
        0x36t
        0x31t
        0x31t
        -0x1et
        0x35t
        0x2ft
        0x23t
        0x2et
        0x2et
        -0x3t
        -0x1et
        0x26t
        0x27t
        0x28t
        0x23t
        0x37t
        0x2et
        0x36t
        0x2bt
        0x30t
        0x29t
        -0x1et
        0x36t
        0x31t
        -0x1et
        -0x42t
        -0x4et
        -0x8t
        0x1t
        0x7t
        0x0t
        -0xat
        -0x34t
        -0x4et
        -0x45t
        -0x27t
        -0x1at
        -0x1at
        -0x19t
        -0x14t
        -0x68t
        -0x27t
        -0x24t
        -0x24t
        -0x68t
        -0x18t
        -0x27t
        -0x21t
        -0x23t
        -0x16t
        -0x68t
        -0x24t
        -0x23t
        -0x25t
        -0x19t
        -0x16t
        -0x68t
        -0x12t
        -0x1ft
        -0x23t
        -0x11t
        -0x68t
        -0x24t
        -0x13t
        -0x16t
        -0x1ft
        -0x1at
        -0x21t
        -0x68t
        -0x1ct
        -0x27t
        -0xft
        -0x19t
        -0x13t
        -0x14t
        -0xat
        0x9t
        0x15t
        0x19t
        0x9t
        0x17t
        0x18t
        0x9t
        0x8t
        -0x3ct
        0x13t
        0xat
        0xat
        0x17t
        0x7t
        0x16t
        0x9t
        0x9t
        0x12t
        -0x3ct
        0x14t
        0x5t
        0xbt
        0x9t
        -0x3ct
        0x10t
        0xdt
        0x11t
        0xdt
        0x18t
        -0x3ct
        -0xat
        0xat
        0x7t
        -0x3et
        0x3t
        0x12t
        0x12t
        0xet
        0xbt
        0x5t
        0x3t
        0x16t
        0xbt
        0x11t
        0x10t
        -0x37t
        0x15t
        -0x3et
        -0xet
        0x3t
        0x9t
        0x7t
        0x14t
        -0x1dt
        0x6t
        0x3t
        0x12t
        0x16t
        0x7t
        0x14t
        -0x3et
        0x5t
        0xat
        0x3t
        0x10t
        0x9t
        0x7t
        0x6t
        -0x3et
        0x16t
        0xat
        0x7t
        -0x3et
        0x3t
        0x6t
        0x3t
        0x12t
        0x16t
        0x7t
        0x14t
        -0x37t
        0x15t
        -0x3et
        0x5t
        0x11t
        0x10t
        0x16t
        0x7t
        0x10t
        0x16t
        0x15t
        -0x3et
        0x19t
        0xbt
        0x16t
        0xat
        0x11t
        0x17t
        0x16t
        -0x3et
        0x5t
        0x3t
        0xet
        0xet
        0xbt
        0x10t
        0x9t
        -0x3et
        -0xet
        0x3t
        0x9t
        0x7t
        0x14t
        -0x1dt
        0x6t
        0x3t
        0x12t
        0x16t
        0x7t
        0x14t
        -0x3bt
        0x10t
        0x11t
        0x16t
        0xbt
        0x8t
        0x1bt
        -0x1at
        0x3t
        0x16t
        0x3t
        -0xbt
        0x7t
        0x16t
        -0x1bt
        0xat
        0x3t
        0x10t
        0x9t
        0x7t
        0x6t
        -0x3dt
        -0x3et
        -0x19t
        0x1at
        0x12t
        0x7t
        0x5t
        0x16t
        0x7t
        0x6t
        -0x3et
        0x3t
        0x6t
        0x3t
        0x12t
        0x16t
        0x7t
        0x14t
        -0x3et
        0xbt
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
        -0x3et
        -0x13t
        0x0t
        -0x4t
        0xet
        -0x19t
        -0x8t
        -0x2t
        -0x4t
        0x9t
        0x19t
        0x2at
        0x2at
        0x27t
        0x2ft
        0xbt
        0x1bt
        0x2at
        0x27t
        0x24t
        0x24t
        -0x28t
        0x2ct
        0x2at
        0x21t
        0x1dt
        0x1ct
        -0x28t
        0x2ct
        0x27t
        -0x28t
        0x1et
        0x21t
        0x26t
        0x1ct
        -0x28t
        0x1et
        0x27t
        0x1bt
        0x2dt
        0x2bt
        -0x28t
        0x1at
        0x19t
        0x2bt
        0x1dt
        0x1ct
        -0x28t
        0x27t
        0x26t
        -0x28t
        0x26t
        0x27t
        0x26t
        -0x1bt
        0x1bt
        0x20t
        0x21t
        0x24t
        0x1ct
        -0x28t
        0x1bt
        0x2dt
        0x2at
        0x2at
        0x1dt
        0x26t
        0x2ct
        -0x28t
        0x1et
        0x27t
        0x1bt
        0x2dt
        0x2bt
        0x1dt
        0x1ct
        -0x28t
        0x2et
        0x21t
        0x1dt
        0x2ft
        -0x28t
        0x4ct
        0x4bt
        0x2dt
        0x3et
        0x44t
        0x42t
        0x30t
        0x40t
        0x4ft
        0x4ct
        0x49t
        0x49t
        0x42t
        0x41t
        -0x3t
        0x41t
        0x46t
        0x41t
        -0x3t
        0x4bt
        0x4ct
        0x51t
        -0x3t
        0x40t
        0x3et
        0x49t
        0x49t
        -0x3t
        0x50t
        0x52t
        0x4dt
        0x42t
        0x4ft
        0x40t
        0x49t
        0x3et
        0x50t
        0x50t
        -0x3t
        0x46t
        0x4at
        0x4dt
        0x49t
        0x42t
        0x4at
        0x42t
        0x4bt
        0x51t
        0x3et
        0x51t
        0x46t
        0x4ct
        0x4bt
    .end array-data
.end method

.method public static A0D()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Pb5dMBpLoD8olSqqN3M1wt71s6WfJWWx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mawes8eGWKEfT5kg0DwbKE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yCX0UAcI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nBGVAWTalDrx8Q3Q0HTp4hPpqgaJoZ5h"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gKpLqM1fc4CgqUT7jB7tIrf4xsKdVFyY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wKHjR3FqXT8StRIGs0zAAfuJmbbhub4H"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    return-void
.end method

.method private final A0E()V
    .locals 5

    .line 6944
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->setWillNotDraw(Z)V

    .line 6945
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->setDescendantFocusability(I)V

    .line 6946
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->setFocusable(Z)V

    .line 6947
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 6948
    .local v0, "context":Landroid/content/Context;
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0x:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, v4, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    .line 6949
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 6950
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 6951
    .local v1, "density":F
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    .line 6952
    const/high16 v0, 0x43c80000    # 400.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0K:I

    .line 6953
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0J:I

    .line 6954
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, v4}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    .line 6955
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, v4}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    .line 6956
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0H:I

    .line 6957
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0C:I

    .line 6958
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0E:I

    .line 6959
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Lcom/facebook/ads/redexgen/X/3D;)V

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/2z;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2d;)V

    .line 6960
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2z;->A00(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 6961
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/2z;->A09(Landroid/view/View;I)V

    .line 6962
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Lcom/facebook/ads/redexgen/X/3D;)V

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/2z;->A0B(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2j;)V

    .line 6963
    return-void
.end method

.method private A0F(I)V
    .locals 3

    .line 6964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0Z:Lcom/facebook/ads/redexgen/X/38;

    .line 6965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 6966
    const/4 v2, 0x0

    .local p1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .local p0, "z":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/38;

    .line 6968
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/38;
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/38;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6969
    .end local p0    # "z":I
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0Y:Lcom/facebook/ads/redexgen/X/38;

    .line 6970
    return-void
.end method

.method private A0G(I)V
    .locals 3

    .line 6971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0Z:Lcom/facebook/ads/redexgen/X/38;

    .line 6972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 6973
    const/4 v2, 0x0

    .local p1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .local p0, "z":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/38;

    .line 6975
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/38;
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/38;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6976
    .end local p0    # "z":I
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0Y:Lcom/facebook/ads/redexgen/X/38;

    .line 6977
    return-void
.end method

.method private final A0H(I)V
    .locals 15

    .line 6978
    move-object v4, p0

    const/4 v12, 0x0

    .line 6979
    .local p0, "oldCurInfo":Lcom/facebook/ads/redexgen/X/35;
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 6980
    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/3D;->A04(I)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v12

    .line 6981
    iput v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    .line 6982
    .end local p0    # "oldCurInfo":Lcom/facebook/ads/redexgen/X/35;
    .local v1, "oldCurInfo":Lcom/facebook/ads/redexgen/X/35;
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-nez v0, :cond_1

    .line 6983
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0B()V

    .line 6984
    return-void

    .line 6985
    :cond_1
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    if-eqz v0, :cond_2

    .line 6986
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0B()V

    .line 6987
    return-void

    .line 6988
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3

    .line 6989
    return-void

    .line 6990
    :cond_3
    iget v2, v4, Lcom/facebook/ads/redexgen/X/3D;->A0L:I

    .line 6991
    .local v12, "pageLimit":I
    const/4 v1, 0x0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 6992
    .local v0, "startPos":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v10

    .line 6993
    .local v12, "N":I
    add-int/lit8 v1, v10, -0x1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 6994
    .local v12, "endPos":I
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0G:I

    if-ne v10, v0, :cond_19

    .line 6995
    .local p0, "curIndex":I
    const/4 v8, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_1b

    .line 6996
    .local v0, "curItem":Lcom/facebook/ads/redexgen/X/35;
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "Tot0RAE"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v7, 0x0

    :goto_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 6997
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/35;

    .line 6998
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-lt v1, v0, :cond_18

    .line 6999
    iget v1, v2, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v1, v0, :cond_4

    move-object v8, v2

    .line 7000
    :cond_4
    if-nez v8, :cond_5

    if-lez v10, :cond_5

    .line 7001
    iget v3, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_17

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "0"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {v4, v3, v7}, Lcom/facebook/ads/redexgen/X/3D;->A05(II)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v8

    .line 7002
    :cond_5
    :goto_1
    if-eqz v8, :cond_8

    .line 7003
    const/4 v14, 0x0

    .line 7004
    .local v2, "extraWidthLeft":F
    add-int/lit8 v6, v7, -0x1

    .line 7005
    .local v1, "itemIndex":I
    if-ltz v6, :cond_16

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v2, v3, v1

    const/4 v1, 0x6

    aget-object v3, v3, v1

    const/16 v1, 0xf

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_1b

    sget-object v3, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v2, "VNMCyWdkMCax4jTa2KYBa9F64T8dlp"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    check-cast v0, Lcom/facebook/ads/redexgen/X/35;

    .line 7006
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    :goto_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v5

    .line 7007
    .local v0, "clientWidth":I
    const/high16 v3, 0x40000000    # 2.0f

    if-gtz v5, :cond_15

    const/4 v2, 0x0

    .line 7008
    .local v0, "leftWidthNeeded":F
    :goto_3
    iget v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int/lit8 v3, v1, -0x1

    .local v0, "pos":I
    :goto_4
    if-ltz v3, :cond_6

    .line 7009
    cmpl-float v1, v14, v2

    if-ltz v1, :cond_1a

    if-ge v3, v11, :cond_1a

    .line 7010
    if-nez v0, :cond_20

    .line 7011
    .end local v0    # "pos":I
    :cond_6
    iget v11, v8, Lcom/facebook/ads/redexgen/X/35;->A01:F

    .line 7012
    .local v4, "extraWidthRight":F
    add-int/lit8 v6, v7, 0x1

    .line 7013
    .end local v1    # "itemIndex":I
    .local v0, "itemIndex":I
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, v11, v0

    if-gez v0, :cond_7

    .line 7014
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_14

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/35;

    .line 7015
    .end local v0    # "itemIndex":I
    .local v1, "ii":Lcom/facebook/ads/redexgen/X/35;
    :goto_5
    if-gtz v5, :cond_12

    const/4 v2, 0x0

    .line 7016
    .local v0, "rightWidthNeeded":F
    :goto_6
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int/lit8 v5, v0, 0x1

    .local v11, "pos":I
    :goto_7
    if-ge v5, v10, :cond_7

    .line 7017
    cmpl-float v0, v11, v2

    if-ltz v0, :cond_b

    if-le v5, v9, :cond_b

    .line 7018
    if-nez v3, :cond_f

    .line 7019
    .end local v0    # "rightWidthNeeded":F
    .restart local v1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_7
    invoke-direct {v4, v8, v7, v12}, Lcom/facebook/ads/redexgen/X/3D;->A0R(Lcom/facebook/ads/redexgen/X/35;ILcom/facebook/ads/redexgen/X/35;)V

    .line 7020
    .end local v12    # "endPos":I
    .end local v0
    .restart local v10
    .restart local v1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v6

    .line 7021
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v12, "i":I
    :goto_8
    if-ge v5, v6, :cond_23

    .line 7022
    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7023
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/36;

    .line 7024
    .local v0, "lp":Lcom/facebook/ads/redexgen/X/36;
    iput v5, v3, Lcom/facebook/ads/redexgen/X/36;->A01:I

    .line 7025
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_9

    iget v1, v3, Lcom/facebook/ads/redexgen/X/36;->A00:F

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_9

    .line 7026
    invoke-direct {v4, v2}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    .line 7027
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-eqz v7, :cond_9

    .line 7028
    :goto_9
    iget v0, v7, Lcom/facebook/ads/redexgen/X/35;->A01:F

    iput v0, v3, Lcom/facebook/ads/redexgen/X/36;->A00:F

    .line 7029
    iget v0, v7, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iput v0, v3, Lcom/facebook/ads/redexgen/X/36;->A02:I

    .line 7030
    .end local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .end local v0
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 7031
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "EEa7ILjnbFiKaMBJBW0FEjvS9loAIL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v7, :cond_9

    goto :goto_9

    .line 7032
    .end local v10
    .end local v1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .restart local v12    # "i":I
    .restart local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .end local v12    # "i":I
    .end local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .restart local v10
    .restart local v1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_b
    if-eqz v3, :cond_d

    iget v0, v3, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ne v5, v0, :cond_d

    .line 7033
    iget v0, v3, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v11, v0

    .line 7034
    add-int/lit8 v6, v6, 0x1

    .line 7035
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_c

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_a

    :cond_c
    const/4 v3, 0x0

    goto :goto_a

    .line 7036
    :cond_d
    invoke-direct {v4, v5, v6}, Lcom/facebook/ads/redexgen/X/3D;->A05(II)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7037
    .end local v1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .local v12, "ii":Lcom/facebook/ads/redexgen/X/35;
    add-int/lit8 v6, v6, 0x1

    .line 7038
    iget v0, v0, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v11, v0

    .line 7039
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_e

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_a

    :cond_e
    const/4 v3, 0x0

    goto :goto_a

    .line 7040
    .end local v12    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .local v10, "pageLimit":I
    :cond_f
    iget v0, v3, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ne v5, v0, :cond_10

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/35;->A04:Z

    if-nez v0, :cond_10

    .line 7041
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7042
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    .end local v0
    .local v1, "startPos":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/35;->A03:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/2k;->A0B(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 7043
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_11

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/35;

    .line 7044
    .end local v12
    .restart local v1    # "startPos":I
    :cond_10
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 7045
    :cond_11
    const/4 v3, 0x0

    goto :goto_a

    .line 7046
    :cond_12
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v0

    int-to-float v2, v0

    int-to-float v13, v5

    sget-object v5, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v5, v0

    const/4 v0, 0x5

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_13

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_13
    sget-object v5, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v5, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v5, v0

    div-float/2addr v2, v13

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr v2, v0

    goto/16 :goto_6

    .line 7047
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 7048
    :cond_15
    iget v1, v8, Lcom/facebook/ads/redexgen/X/35;->A01:F

    sub-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v1

    int-to-float v2, v1

    int-to-float v1, v5

    div-float/2addr v2, v1

    add-float/2addr v2, v3

    goto/16 :goto_3

    .line 7049
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_17
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {v4, v3, v7}, Lcom/facebook/ads/redexgen/X/3D;->A05(II)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v8

    goto/16 :goto_1

    .line 7050
    .end local v0
    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 7051
    .end local v12
    .end local v0
    .restart local v10    # "pageLimit":I
    .restart local v1    # "startPos":I
    :cond_19
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7052
    .end local p0    # "curIndex":I
    .local p0, "e":Landroid/content/res/Resources$NotFoundException;
    :catch_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getId()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_1b

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "3cJ8G"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 7053
    .local p0, "resName":Ljava/lang/String;
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x9e

    const/16 v1, 0x8e

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0G:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x4d

    const/16 v1, 0x9

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    const/16 v1, 0xb

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    const/16 v1, 0xe

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7054
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    const/16 v1, 0x16

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    .line 7055
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7056
    .end local v4    # "childCount":I
    .restart local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_1a
    if-eqz v0, :cond_1e

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ne v3, v1, :cond_1e

    .line 7057
    iget v0, v0, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v14, v0

    sget-object v13, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v13, v0

    const/4 v0, 0x0

    aget-object v13, v13, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1c

    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7058
    :cond_1c
    sget-object v13, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v13, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v13, v0

    add-int/lit8 v6, v6, -0x1

    .line 7059
    if-ltz v6, :cond_1d

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_c

    :cond_1d
    const/4 v0, 0x0

    goto :goto_c

    .line 7060
    .end local v4
    .restart local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_1e
    add-int/lit8 v0, v6, 0x1

    invoke-direct {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/3D;->A05(II)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7061
    .end local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .restart local v4    # "childCount":I
    iget v0, v0, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v14, v0

    .line 7062
    add-int/lit8 v7, v7, 0x1

    .line 7063
    if-ltz v6, :cond_1f

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_c

    :cond_1f
    const/4 v0, 0x0

    goto :goto_c

    .line 7064
    :cond_20
    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ne v3, v1, :cond_21

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/35;->A04:Z

    if-nez v1, :cond_21

    .line 7065
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7066
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/35;->A03:Ljava/lang/Object;

    invoke-virtual {v1, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/2k;->A0B(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 7067
    add-int/lit8 v6, v6, -0x1

    .line 7068
    add-int/lit8 v7, v7, -0x1

    .line 7069
    if-ltz v6, :cond_22

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/35;

    .line 7070
    .end local v4    # "childCount":I
    .restart local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_21
    :goto_c
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_4

    .line 7071
    :cond_22
    const/4 v0, 0x0

    goto :goto_c

    .line 7072
    .end local v12
    :cond_23
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0B()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_24

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7073
    :cond_24
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "fAvJTe45YQ8jwRLJzle6w88GhXZAW5fe"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "XHTmtVqtTM8ykl9XiQ4ZuPNQzfhQsr72"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 7074
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->findFocus()Landroid/view/View;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_29

    .line 7075
    .local v12, "currentFocused":Landroid/view/View;
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "98nQxxcA6vj5924MyChW7mkeiNJnWKv2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ju5RZqhAYuaQhiOPGNIJcLOaoEeV3OP8"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_28

    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->A06(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7076
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    :goto_d
    if-eqz v0, :cond_25

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-eq v1, v0, :cond_26

    .line 7077
    :cond_25
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_e
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_26

    .line 7078
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7079
    .local v0, "child":Landroid/view/View;
    invoke-direct {v4, v2}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7080
    if-eqz v0, :cond_27

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v1, v0, :cond_27

    .line 7081
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 7082
    .end local v12    # "currentFocused":Landroid/view/View;
    .end local v0    # "child":Landroid/view/View;
    .end local v0
    :cond_26
    return-void

    .line 7083
    .end local v0
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 7084
    :cond_28
    const/4 v0, 0x0

    goto :goto_d

    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0I(IFI)V
    .locals 3

    .line 7085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0Z:Lcom/facebook/ads/redexgen/X/38;

    .line 7086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 7087
    const/4 v2, 0x0

    .local p1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .local p0, "z":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/38;

    .line 7089
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/38;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/38;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7090
    .end local p0    # "z":I
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0Y:Lcom/facebook/ads/redexgen/X/38;

    .line 7091
    return-void
.end method

.method private final A0J(IFI)V
    .locals 11
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 7092
    move-object v5, p0

    iget v0, v5, Lcom/facebook/ads/redexgen/X/3D;->A0D:I

    const/4 v4, 0x1

    if-lez v0, :cond_6

    .line 7093
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v10

    .line 7094
    .local p1, "scrollX":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v6

    .line 7095
    .local p3, "paddingLeft":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_5

    .line 7096
    .local v5, "paddingRight":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "hSwONVQ9BwzgmNPK4tziO3X6uj4eQvsQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "gKhZoL4mhYlFRC9fFMXnjqdiW6EOuKfZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getWidth()I

    move-result v8

    .line 7097
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v3

    .line 7098
    .local v4, "childCount":I
    const/4 v2, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v2, v3, :cond_6

    .line 7099
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7100
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/36;

    .line 7101
    .local v9, "lp":Lcom/facebook/ads/redexgen/X/36;
    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_1

    .line 7102
    .end local v6    # "child":Landroid/view/View;
    .end local v9    # "lp":Lcom/facebook/ads/redexgen/X/36;
    .end local v1
    .end local v0    # "width":I
    .end local v0
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7103
    :cond_1
    iget v0, v7, Lcom/facebook/ads/redexgen/X/36;->A04:I

    and-int/lit8 v7, v0, 0x7

    .line 7104
    .local v1, "hgrav":I
    .local v0, "childLeft":I
    if-eq v7, v4, :cond_4

    const/4 v0, 0x3

    if-eq v7, v0, :cond_3

    const/4 v0, 0x5

    if-eq v7, v0, :cond_2

    .line 7105
    move v7, v6

    .line 7106
    :goto_2
    add-int/2addr v7, v10

    .line 7107
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v7, v0

    .line 7108
    .local v0, "childOffset":I
    if-eqz v7, :cond_0

    .line 7109
    invoke-virtual {v1, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 7110
    :cond_2
    sub-int v7, v8, v9

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v7, v0

    .line 7111
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v9, v0

    goto :goto_2

    .line 7112
    :cond_3
    move v7, v6

    .line 7113
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v6, v0

    .line 7114
    goto :goto_2

    .line 7115
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v8, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 7116
    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7117
    .end local p1    # "scrollX":I
    .end local p3    # "paddingLeft":I
    .end local v5    # "paddingRight":I
    .end local v0    # "childOffset":I
    .end local v4    # "childCount":I
    .end local v10    # "i":I
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3D;->A0I(IFI)V

    .line 7118
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3D;->A0a:Lcom/facebook/ads/redexgen/X/39;

    if-eqz v0, :cond_8

    .line 7119
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    .line 7120
    .restart local p1    # "scrollX":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v3

    .line 7121
    .local p3, "childCount":I
    const/4 v2, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v2, v3, :cond_8

    .line 7122
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7123
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/36;

    .line 7124
    .local v4, "lp":Lcom/facebook/ads/redexgen/X/36;
    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-eqz v0, :cond_7

    .line 7125
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/facebook/ads/redexgen/X/36;
    .end local v10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7126
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    .line 7127
    .local v10, "transformPos":F
    const/4 v0, 0x0

    throw v0

    .line 7128
    .end local p1    # "scrollX":I
    .end local p3    # "childCount":I
    .end local v5    # "i":I
    :cond_8
    iput-boolean v4, v5, Lcom/facebook/ads/redexgen/X/3D;->A0g:Z

    .line 7129
    return-void
.end method

.method private final A0K(III)V
    .locals 13

    move v11, p2

    move v10, p1

    .line 7130
    move-object v4, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 7131
    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7132
    return-void

    .line 7133
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 7134
    .local v10, "wasScrolling":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 7135
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0l:Z

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    .line 7136
    .local v4, "sx":I
    :goto_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7137
    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7138
    .restart local v4    # "sx":I
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollY()I

    move-result v9

    .line 7139
    .local v0, "sy":I
    sub-int/2addr v10, v8

    .line 7140
    .local v0, "dx":I
    sub-int/2addr v11, v9

    .line 7141
    .local v8, "dy":I
    if-nez v10, :cond_4

    if-nez v11, :cond_4

    .line 7142
    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->A0S(Z)V

    .line 7143
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0g()V

    .line 7144
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->setScrollState(I)V

    .line 7145
    return-void

    .line 7146
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v8

    goto :goto_1

    .line 7147
    .end local v4    # "sx":I
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v8

    goto :goto_2

    .line 7148
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 7149
    :cond_4
    invoke-direct {v4, v1}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7150
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/3D;->setScrollState(I)V

    .line 7151
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v2

    .line 7152
    .local p3, "width":I
    div-int/lit8 v7, v2, 0x2

    .line 7153
    .local v0, "halfWidth":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v1, v0

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v1, v5

    int-to-float v0, v2

    div-float/2addr v1, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 7154
    .local v9, "distanceRatio":F
    int-to-float v6, v7

    int-to-float v1, v7

    .line 7155
    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/3D;->A00(F)F

    move-result v0

    mul-float/2addr v1, v0

    add-float/2addr v6, v1

    .line 7156
    .local v10, "distance":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 7157
    .end local v7
    .local v0, "velocity":I
    if-lez v0, :cond_5

    .line 7158
    const/high16 v7, 0x447a0000    # 1000.0f

    int-to-float v5, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    .line 7159
    .local v0, "duration":I
    .end local v0    # "duration":I
    .local v0, "duration":I
    :goto_3
    const/16 v0, 0x258

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 7160
    .end local v0    # "duration":I
    .local v11, "duration":I
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/3D;->A0l:Z

    .line 7161
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    .end local v0
    .local v11, "velocity":I
    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 7162
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2z;->A07(Landroid/view/View;)V

    .line 7163
    return-void

    .line 7164
    .end local v0
    :cond_5
    int-to-float v2, v2

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v0

    mul-float/2addr v2, v0

    .line 7165
    .local v0, "pageWidth":F
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v1, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    div-float/2addr v1, v0

    .line 7166
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

    .line 7167
    if-lez p2, :cond_3

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

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

    const-string v1, "xS6wP2kv8Ukjp2mlI4OFB7EI"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "M3IvNYMGgF0qb538wmgDMK0nNkgqAt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 7169
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v0

    mul-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_1

    .line 7170
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 7171
    .local p0, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    add-int/2addr p2, p4

    .line 7172
    .local p1, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v0

    .line 7173
    .local p2, "xpos":I
    int-to-float v1, v0

    int-to-float v0, p2

    div-float/2addr v1, v0

    .line 7174
    .local p3, "pageOffset":F
    int-to-float v0, p1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 7175
    .local p4, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 7176
    .end local p0    # "widthWithMargin":I
    .end local p1    # "oldWidthWithMargin":I
    .end local p2    # "xpos":I
    .end local p3    # "pageOffset":F
    .end local p4    # "newOffsetPixels":I
    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7177
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A04(I)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7178
    .local p0, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-eqz v0, :cond_5

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A00:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 7179
    .local p1, "scrollOffset":F
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float v0, p1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 7180
    .local p2, "scrollPos":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 7181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0S(Z)V

    .line 7182
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 7183
    .end local p0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .end local p1    # "scrollOffset":F
    .end local p2    # "scrollPos":I
    :cond_4
    :goto_1
    return-void

    .line 7184
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final A0M(IZ)V
    .locals 1

    .line 7185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    .line 7186
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0O(IZZ)V

    .line 7187
    return-void
.end method

.method private A0N(IZIZ)V
    .locals 5

    .line 7188
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A04(I)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v1

    .line 7189
    .local p0, "curInfo":Lcom/facebook/ads/redexgen/X/35;
    const/4 v4, 0x0

    .line 7190
    .local p1, "destX":I
    if-eqz v1, :cond_0

    .line 7191
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v0

    .line 7192
    .local p2, "width":I
    int-to-float v3, v0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:F

    iget v1, v1, Lcom/facebook/ads/redexgen/X/35;->A00:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    .line 7193
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 7194
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v3, v0

    float-to-int v4, v3

    .line 7195
    .end local p2    # "width":I
    :cond_0
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "qWyJthdIKprwmupmlWytZXkwKuTz6nwm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "fDmSwMvEmt93O90vXMKXMmFP8biUMO95"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz p2, :cond_2

    .line 7196
    invoke-direct {p0, v4, v3, p3}, Lcom/facebook/ads/redexgen/X/3D;->A0K(III)V

    .line 7197
    if-eqz p4, :cond_1

    .line 7198
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A0F(I)V

    .line 7199
    :cond_1
    :goto_0
    return-void

    .line 7200
    :cond_2
    if-eqz p4, :cond_3

    .line 7201
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A0F(I)V

    .line 7202
    :cond_3
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/3D;->A0S(Z)V

    .line 7203
    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 7204
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3D;->A0a(I)Z

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0O(IZZ)V
    .locals 1

    .line 7205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0P(IZZI)V

    .line 7206
    return-void
.end method

.method private final A0P(IZZI)V
    .locals 5

    .line 7207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    if-gtz v0, :cond_1

    .line 7208
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3D;
    .end local p2    # null:Z
    :cond_0
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7209
    return-void

    .line 7210
    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 7211
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7212
    return-void

    .line 7213
    :cond_2
    const/4 v2, 0x1

    if-gez p1, :cond_4

    .line 7214
    const/4 p1, 0x0

    .line 7215
    :cond_3
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0L:I

    .line 7216
    .local p2, "pageLimit":I
    iget v4, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int v0, v4, v1

    if-gt p1, v0, :cond_6

    sub-int/2addr v4, v1

    sget-object v3, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v3, v0

    const/4 v0, 0x0

    aget-object v3, v3, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7217
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 7218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "HdD8kb8A1NTv0LjA3C8pNf8B8Uhf5Rjf"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    const-string v1, "hEPxY7plOgAB5ujpSYVhyDABeqG0KedF"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    if-ge p1, v4, :cond_7

    .line 7219
    :cond_6
    const/4 v1, 0x0

    .local p3, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 7220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/35;

    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/35;->A04:Z

    .line 7221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7222
    .end local p3    # "i":I
    :cond_7
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-eq v0, p1, :cond_a

    .line 7223
    .local p0, "dispatchSelected":Z
    :goto_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    if-eqz v0, :cond_9

    .line 7224
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    .line 7225
    if-eqz v2, :cond_8

    .line 7226
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A0F(I)V

    .line 7227
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->requestLayout()V

    .line 7228
    :goto_3
    return-void

    .line 7229
    :cond_9
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A0H(I)V

    .line 7230
    invoke-direct {p0, p1, p2, p4, v2}, Lcom/facebook/ads/redexgen/X/3D;->A0N(IZIZ)V

    goto :goto_3

    .line 7231
    :cond_a
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private A0Q(Landroid/view/MotionEvent;)V
    .locals 4

    .line 7232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 7233
    .local p0, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 7234
    .local p1, "pointerId":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    if-ne v1, v0, :cond_2

    .line 7235
    if-nez v2, :cond_0

    const/4 v3, 0x1

    .line 7236
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7237
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 7238
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 7239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 7240
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 7241
    .end local v2    # "newPointerIndex":I
    :cond_2
    return-void
.end method

.method private A0R(Lcom/facebook/ads/redexgen/X/35;ILcom/facebook/ads/redexgen/X/35;)V
    .locals 12

    .line 7242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v11

    .line 7243
    .local p0, "N":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v1

    .line 7244
    .local p1, "width":I
    if-lez v1, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    int-to-float v4, v0

    int-to-float v0, v1

    div-float/2addr v4, v0

    .line 7245
    .local p2, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_8

    .line 7246
    iget v1, p3, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 7247
    .local p3, "oldCurPosition":I
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ge v1, v0, :cond_4

    .line 7248
    const/4 v5, 0x0

    .line 7249
    .local v0, "itemIndex":I
    .local v11, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget v3, p3, Lcom/facebook/ads/redexgen/X/35;->A00:F

    iget v0, p3, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v3, v0

    add-float/2addr v3, v4

    .line 7250
    .local v1, "offset":F
    add-int/lit8 v6, v1, 0x1

    .line 7251
    .local v0, "pos":I
    :goto_1
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-gt v6, v0, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_8

    .line 7252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/35;

    .line 7253
    :goto_2
    iget v0, v7, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-le v6, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v5, v0, :cond_0

    .line 7254
    add-int/lit8 v5, v5, 0x1

    .line 7255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_2

    .line 7256
    :cond_0
    :goto_3
    iget v0, v7, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ge v6, v0, :cond_1

    .line 7257
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "unjnr1JPHveRA3A"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v8, v6}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v0

    add-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 7258
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 7259
    :cond_1
    iput v3, v7, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 7260
    iget v0, v7, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 7261
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 7262
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7263
    .end local v0    # "pos":I
    .end local v11    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .end local v1    # "offset":F
    .end local v0
    :cond_4
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-le v1, v0, :cond_8

    .line 7264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 7265
    .restart local v0    # "pos":I
    .restart local v11    # "ii":Lcom/facebook/ads/redexgen/X/35;
    iget v7, p3, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 7266
    .restart local v1    # "offset":F
    add-int/lit8 v5, v1, -0x1

    .line 7267
    .restart local v0    # "pos":I
    :goto_4
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-lt v5, v0, :cond_8

    if-ltz v6, :cond_8

    .line 7268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/35;

    .line 7269
    :goto_5
    iget v0, v3, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ge v5, v0, :cond_5

    if-lez v6, :cond_5

    .line 7270
    add-int/lit8 v6, v6, -0x1

    .line 7271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_5

    .line 7272
    :cond_5
    :goto_6
    iget v8, v3, Lcom/facebook/ads/redexgen/X/35;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "tUoZSKhLB59JJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-le v5, v8, :cond_7

    .line 7273
    :goto_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v0

    add-float/2addr v0, v4

    sub-float/2addr v7, v0

    .line 7274
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "eK1wjFwqyv9CJUk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-le v5, v8, :cond_7

    goto :goto_7

    .line 7275
    :cond_7
    iget v0, v3, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v0, v4

    sub-float/2addr v7, v0

    .line 7276
    iput v7, v3, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 7277
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 7278
    .end local p3    # "oldCurPosition":I
    .end local v0    # "pos":I
    .end local v11    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .end local v1    # "offset":F
    .end local v0
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 7279
    .local p3, "itemCount":I
    iget v6, p1, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 7280
    .local v0, "offset":F
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    add-int/lit8 v7, v0, -0x1

    .line 7281
    .local v11, "pos":I
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-nez v0, :cond_c

    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A00:F

    :goto_8
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:F

    .line 7282
    iget v1, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    add-int/lit8 v0, v11, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    if-ne v1, v0, :cond_b

    .line 7283
    iget v1, p1, Lcom/facebook/ads/redexgen/X/35;->A00:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v1, v0

    sub-float/2addr v1, v10

    :goto_9
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    .line 7284
    add-int/lit8 v3, p2, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v3, :cond_d

    .line 7285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/35;

    .line 7286
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    :goto_b
    iget v0, v2, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-le v7, v0, :cond_9

    .line 7287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    add-int/lit8 v1, v7, -0x1

    .end local v11    # "pos":I
    .local v4, "pos":I
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v0

    add-float/2addr v0, v4

    sub-float/2addr v6, v0

    move v7, v1

    goto :goto_b

    .line 7288
    .end local v4    # "pos":I
    .restart local v11    # "pos":I
    :cond_9
    iget v0, v2, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v0, v4

    sub-float/2addr v6, v0

    .line 7289
    iput v6, v2, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 7290
    iget v0, v2, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-nez v0, :cond_a

    iput v6, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:F

    .line 7291
    .end local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_a
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_a

    .line 7292
    :cond_b
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_9

    .line 7293
    :cond_c
    const v0, -0x800001

    goto :goto_8

    .line 7294
    .end local v1    # "i":I
    :cond_d
    iget v3, p1, Lcom/facebook/ads/redexgen/X/35;->A00:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v3, v0

    add-float/2addr v3, v4

    .line 7295
    .end local v0
    .local v1, "offset":F
    iget v0, p1, Lcom/facebook/ads/redexgen/X/35;->A02:I

    add-int/lit8 v6, v0, 0x1

    .line 7296
    .end local v11    # "pos":I
    .local v0, "pos":I
    add-int/lit8 v7, p2, 0x1

    .local v11, "i":I
    :goto_c
    if-ge v7, v5, :cond_11

    .line 7297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/35;

    .line 7298
    .restart local v0    # "pos":I
    :goto_d
    iget v0, v8, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ge v6, v0, :cond_e

    .line 7299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    add-int/lit8 v1, v6, 0x1

    .end local v0    # "pos":I
    .restart local v4    # "pos":I
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v0

    add-float/2addr v0, v4

    add-float/2addr v3, v0

    move v6, v1

    goto :goto_d

    .line 7300
    .end local v4    # "pos":I
    .restart local v0    # "pos":I
    :cond_e
    iget v9, v8, Lcom/facebook/ads/redexgen/X/35;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "LKMrFShf3NXE5XfaxsCGHUW3hns0S8Wh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "xptjAJKkekqR5TDnJjimQZvUd22mQJJ9"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int/lit8 v0, v11, -0x1

    if-ne v9, v0, :cond_f

    .line 7301
    :goto_e
    iget v0, v8, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v10

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    .line 7302
    :cond_f
    iput v3, v8, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 7303
    iget v0, v8, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 7304
    .end local v0    # "pos":I
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_10
    add-int/lit8 v0, v11, -0x1

    if-ne v9, v0, :cond_f

    goto :goto_e

    .line 7305
    .end local v11    # "i":I
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0n:Z

    .line 7306
    return-void
.end method

.method private A0S(Z)V
    .locals 6

    .line 7307
    iget v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A0P:I

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    if-ne v2, v0, :cond_3

    const/4 v5, 0x1

    .line 7308
    .local p0, "needPopulate":Z
    :goto_0
    if-eqz v5, :cond_1

    .line 7309
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    xor-int/2addr v1, v0

    .line 7311
    .local p1, "wasScrolling":Z
    if-eqz v1, :cond_1

    .line 7312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_7

    .line 7313
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "La7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v3

    .line 7314
    .local v1, "oldX":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollY()I

    move-result v2

    .line 7315
    .local v4, "oldY":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 7316
    .local v0, "x":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 7317
    .local v5, "y":I
    if-ne v3, v1, :cond_0

    if-eq v2, v0, :cond_1

    .line 7318
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 7319
    if-eq v1, v3, :cond_1

    .line 7320
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0a(I)Z

    .line 7321
    .end local p1    # "wasScrolling":Z
    .end local v1    # "oldX":I
    .end local v4    # "oldY":I
    .end local v0    # "x":I
    .end local v5    # "y":I
    :cond_1
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    .line 7322
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 7323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/35;

    .line 7324
    .local v1, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/35;->A04:Z

    if-eqz v0, :cond_2

    .line 7325
    const/4 v5, 0x1

    .line 7326
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/35;->A04:Z

    .line 7327
    .end local v1    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7328
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 7329
    .end local p1    # "i":I
    :cond_4
    if-eqz v5, :cond_5

    .line 7330
    if-eqz p1, :cond_6

    .line 7331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0s:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/2z;->A0C(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 7332
    :cond_5
    :goto_2
    return-void

    .line 7333
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0s:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0T(Z)V
    .locals 5

    .line 7334
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v4

    .line 7335
    .local p0, "childCount":I
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 7336
    if-eqz p1, :cond_0

    .line 7337
    iget v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A0N:I

    .line 7338
    .local v4, "layerType":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7339
    .end local v4    # "layerType":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7340
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 7341
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method private A0U(Z)V
    .locals 1

    .line 7342
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7343
    .local p0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 7344
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7345
    :cond_0
    return-void
.end method

.method private A0V()Z
    .locals 1

    .line 7346
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 7347
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A09()V

    .line 7348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 7349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 7350
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

    .line 7351
    .local p0, "needsInvalidate":Z
    :goto_0
    return v0

    .line 7352
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0W()Z
    .locals 2

    .line 7353
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-lez v1, :cond_0

    .line 7354
    const/4 v0, 0x1

    sub-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0M(IZ)V

    .line 7355
    return v0

    .line 7356
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final A0X()Z
    .locals 4

    .line 7357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v2, v0, :cond_0

    .line 7358
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0M(IZ)V

    .line 7359
    return v1

    .line 7360
    :cond_0
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "AXA5EDUbYu85ntxkUdYhY3hIIlQIUQar"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "7HhQN1X94o8BEMOAnE9vO9t08zapWTmy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0Y(F)Z
    .locals 12

    .line 7361
    move-object v6, p0

    const/4 v11, 0x0

    .line 7362
    .local v6, "needsInvalidate":Z
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    sub-float/2addr v1, p1

    .line 7363
    .local p1, "deltaX":F
    iput p1, v6, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 7364
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v0

    int-to-float v2, v0

    .line 7365
    .local v11, "oldScrollX":F
    add-float/2addr v2, v1

    .line 7366
    .local v1, "scrollX":F
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v3

    .line 7367
    .local v1, "width":I
    int-to-float v4, v3

    iget v0, v6, Lcom/facebook/ads/redexgen/X/3D;->A02:F

    mul-float/2addr v4, v0

    .line 7368
    .local v0, "leftBound":F
    int-to-float v7, v3

    iget v0, v6, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    mul-float/2addr v7, v0

    .line 7369
    .local v2, "rightBound":F
    const/4 v10, 0x1

    .line 7370
    .local v2, "leftAbsolute":Z
    const/4 v9, 0x1

    .line 7371
    .local v3, "rightAbsolute":Z
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/35;

    .line 7372
    .local v4, "firstItem":Lcom/facebook/ads/redexgen/X/35;
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/35;

    .line 7373
    .local v0, "lastItem":Lcom/facebook/ads/redexgen/X/35;
    iget v0, v5, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-eqz v0, :cond_0

    .line 7374
    const/4 v10, 0x0

    .line 7375
    iget v4, v5, Lcom/facebook/ads/redexgen/X/35;->A00:F

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_7

    sget-object v5, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "a"

    const/4 v0, 0x1

    aput-object v1, v5, v0

    int-to-float v0, v3

    mul-float/2addr v4, v0

    .line 7376
    :cond_0
    iget v1, v8, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_1

    .line 7377
    const/4 v9, 0x0

    .line 7378
    iget v7, v8, Lcom/facebook/ads/redexgen/X/35;->A00:F

    int-to-float v0, v3

    mul-float/2addr v7, v0

    .line 7379
    :cond_1
    cmpg-float v0, v2, v4

    if-gez v0, :cond_4

    .line 7380
    if-eqz v10, :cond_2

    .line 7381
    sub-float v0, v4, v2

    .line 7382
    .local v4, "over":F
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v0, v3

    div-float/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 7383
    const/4 v11, 0x1

    .line 7384
    .end local v4    # "over":F
    :cond_2
    move v2, v4

    .line 7385
    :cond_3
    :goto_0
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    float-to-int v0, v2

    int-to-float v0, v0

    sub-float v0, v2, v0

    add-float/2addr v1, v0

    iput v1, v6, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 7386
    float-to-int v1, v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollY()I

    move-result v0

    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 7387
    float-to-int v0, v2

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0a(I)Z

    .line 7388
    return v11

    .line 7389
    :cond_4
    cmpl-float v0, v2, v7

    if-lez v0, :cond_3

    .line 7390
    if-eqz v9, :cond_5

    .line 7391
    sub-float/2addr v2, v7

    .line 7392
    .local p1, "over":F
    iget-object v5, v6, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v3, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    div-float/2addr v4, v3

    invoke-virtual {v5, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 7393
    const/4 v11, 0x1

    .line 7394
    .end local p1    # "over":F
    :cond_5
    :goto_1
    move v2, v7

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "TwKB2lBmR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    div-float/2addr v4, v3

    invoke-virtual {v5, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 7395
    const/4 v11, 0x1

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0Z(FF)Z
    .locals 4

    .line 7396
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

    cmpg-float v3, p2, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "LoLbwLodEQ0RZhoADzk4YxqyeMxGbPNe"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "uXFtlpuRRgamX4n9Zkql1HjWorEkSQ7b"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-gez v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0a(I)Z
    .locals 9

    .line 7397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v2, 0x17d

    const/16 v1, 0x35

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    if-nez v3, :cond_3

    .line 7398
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    if-eqz v0, :cond_0

    .line 7399
    return v7

    .line 7400
    :cond_0
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/3D;->A0g:Z

    .line 7401
    const/4 v0, 0x0

    invoke-direct {p0, v7, v0, v7}, Lcom/facebook/ads/redexgen/X/3D;->A0J(IFI)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7402
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "c3ramapljB1reDSufYjA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0g:Z

    if-eqz v0, :cond_2

    .line 7403
    return v7

    .line 7404
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7405
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A03()Lcom/facebook/ads/redexgen/X/35;

    move-result-object v8

    .line 7406
    .local p0, "ii":Lcom/facebook/ads/redexgen/X/35;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v6

    .line 7407
    .local v3, "width":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    add-int v4, v6, v0

    .line 7408
    .local v1, "widthWithMargin":I
    int-to-float v3, v0

    int-to-float v0, v6

    div-float/2addr v3, v0

    .line 7409
    .local v2, "marginOffset":F
    iget v2, v8, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 7410
    .local v0, "currentPage":I
    int-to-float v1, p1

    int-to-float v0, v6

    div-float/2addr v1, v0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/35;->A00:F

    sub-float/2addr v1, v0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v0, v3

    div-float/2addr v1, v0

    .line 7411
    .local v5, "pageOffset":F
    int-to-float v0, v4

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 7412
    .local v7, "offsetPixels":I
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/3D;->A0g:Z

    .line 7413
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0J(IFI)V

    .line 7414
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0g:Z

    if-eqz v0, :cond_4

    .line 7415
    const/4 v0, 0x1

    return v0

    .line 7416
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0b(I)Z
    .locals 5

    .line 7417
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 7418
    .local p0, "currentFocused":Landroid/view/View;
    if-ne v3, p0, :cond_a

    .line 7419
    const/4 v3, 0x0

    .line 7420
    .end local p1    # null:I
    .end local v3
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 7421
    .local p1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 7422
    .local v3, "nextFocused":Landroid/view/View;
    const/16 v1, 0x42

    const/16 v0, 0x11

    if-eqz v2, :cond_6

    if-eq v2, v3, :cond_6

    .line 7423
    if-ne p1, v0, :cond_4

    .line 7424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0q:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/3D;->A02(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 7425
    .local v4, "nextLeft":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0q:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/3D;->A02(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 7426
    .local v0, "currLeft":I
    if-eqz v3, :cond_3

    if-lt v1, v0, :cond_3

    .line 7427
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0W()Z

    move-result v4

    .line 7428
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 7429
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->playSoundEffect(I)V

    .line 7430
    :cond_2
    return v4

    .line 7431
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v4

    goto :goto_1

    .line 7432
    :cond_4
    if-ne p1, v1, :cond_1

    .line 7433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0q:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/3D;->A02(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 7434
    .restart local v4    # "nextLeft":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0q:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/3D;->A02(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 7435
    .restart local v0    # "currLeft":I
    if-eqz v3, :cond_5

    if-gt v1, v0, :cond_5

    .line 7436
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0X()Z

    move-result v4

    goto :goto_1

    .line 7437
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v4

    goto :goto_1

    .line 7438
    :cond_6
    if-eq p1, v0, :cond_7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 7439
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0W()Z

    move-result v4

    goto :goto_1

    .line 7440
    :cond_8
    if-eq p1, v1, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 7441
    :cond_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0X()Z

    move-result v4

    goto :goto_1

    .line 7442
    :cond_a
    if-eqz v3, :cond_0

    .line 7443
    const/4 v2, 0x0

    .line 7444
    .local p1, "isChild":Z
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v3, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 7445
    if-ne v1, p0, :cond_c

    .line 7446
    const/4 v2, 0x1

    .line 7447
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_b
    if-nez v2, :cond_0

    .line 7448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7449
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7450
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v4, "parent":Landroid/view/ViewParent;
    :goto_3
    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    .line 7451
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7452
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_3

    .line 7453
    :cond_c
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_2

    .line 7454
    .end local v4    # "parent":Landroid/view/ViewParent;
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x135

    const/16 v1, 0x48

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7455
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7456
    const/16 v2, 0x12c

    const/16 v1, 0x9

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7457
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private final A0c(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 7458
    const/4 v5, 0x0

    .line 7459
    .local p0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 7460
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v0, 0x15

    const/4 v1, 0x2

    if-eq v2, v0, :cond_6

    const/16 v0, 0x16

    if-eq v2, v0, :cond_4

    const/16 v0, 0x3d

    if-eq v2, v0, :cond_1

    .line 7461
    :cond_0
    :goto_0
    return v5

    .line 7462
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7463
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0b(I)Z

    move-result v5

    goto :goto_0

    .line 7464
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "lC1XoLB2bpdljamdt6Vm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 7465
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3D;->A0b(I)Z

    move-result v5

    goto :goto_0

    .line 7466
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7467
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0X()Z

    move-result v5

    goto :goto_0

    .line 7468
    :cond_5
    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0b(I)Z

    move-result v5

    .line 7469
    goto :goto_0

    .line 7470
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7471
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0W()Z

    move-result v5

    goto :goto_0

    .line 7472
    :cond_7
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0b(I)Z

    move-result v5

    goto :goto_0
.end method

.method public static A0d(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7473
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 7474
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
    .locals 14

    .line 7475
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v7, 0x1

    move/from16 v11, p3

    if-eqz v0, :cond_2

    .line 7476
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 7477
    .local p1, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 7478
    .local v11, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 7479
    .local p4, "scrollY":I
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7480
    .local p5, "count":I
    add-int/lit8 v2, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 7481
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 7482
    .local v0, "child":Landroid/view/View;
    add-int v1, p4, v6

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v1, v0, :cond_0

    add-int v1, p4, v6

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge v1, v0, :cond_0

    add-int v1, p5, v5

    .line 7483
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    if-lt v1, v0, :cond_0

    add-int v1, p5, v5

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v10, 0x1

    add-int v12, p4, v6

    .line 7484
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v12, v0

    add-int v13, p5, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_1

    .line 7485
    sget-object v4, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v4, v0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v13, v0

    .line 7486
    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/3D;->A0e(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7487
    return v7

    .line 7488
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7489
    .end local p1    # "i":I
    .end local v11    # "scrollX":I
    .end local p4    # "scrollY":I
    .end local p5    # "count":I
    .end local p1
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, v11

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private getClientWidth()I
    .locals 2

    .line 7649
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

    .line 8065
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0p:Z

    if-eq v0, p1, :cond_0

    .line 8066
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0p:Z

    .line 8067
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0f()V
    .locals 11

    .line 7490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v3

    .line 7491
    .local p0, "adapterCount":I
    iput v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A0G:I

    .line 7492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0L:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v5, 0x1

    add-int/2addr v0, v5

    const/4 v4, 0x0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    .line 7493
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v3, :cond_5

    const/4 v10, 0x1

    .line 7494
    .local v0, "needPopulate":Z
    :goto_0
    iget v6, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    .line 7495
    .local v3, "newCurrItem":I
    const/4 v9, 0x0

    .line 7496
    .local v0, "isUpdating":Z
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 7497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/35;

    .line 7498
    .local v5, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/35;->A03:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A06(Ljava/lang/Object;)I

    move-result v7

    .line 7499
    .local v0, "newPos":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    .line 7500
    .end local v5    # "ii":Lcom/facebook/ads/redexgen/X/35;
    .end local v0    # "newPos":I
    :cond_0
    :goto_2
    add-int/2addr v2, v5

    goto :goto_1

    .line 7501
    :cond_1
    const/4 v0, -0x2

    if-ne v7, v0, :cond_3

    .line 7502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7503
    add-int/lit8 v2, v2, -0x1

    .line 7504
    if-nez v9, :cond_2

    .line 7505
    const/4 v9, 0x1

    .line 7506
    :cond_2
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget v1, v8, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/35;->A03:Ljava/lang/Object;

    invoke-virtual {v7, p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A0B(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 7507
    const/4 v10, 0x1

    .line 7508
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    iget v0, v8, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ne v1, v0, :cond_0

    .line 7509
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    add-int/lit8 v0, v3, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 7510
    const/4 v10, 0x1

    goto :goto_2

    .line 7511
    :cond_3
    iget v0, v8, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-eq v0, v7, :cond_0

    .line 7512
    iget v1, v8, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v1, v0, :cond_4

    .line 7513
    move v6, v7

    .line 7514
    :cond_4
    iput v7, v8, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 7515
    const/4 v10, 0x1

    goto :goto_2

    .line 7516
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 7517
    .end local v0
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/3D;->A0z:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7518
    if-eqz v10, :cond_9

    .line 7519
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v3

    .line 7520
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v2, v3, :cond_8

    .line 7521
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7522
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/36;

    .line 7523
    .local v4, "lp":Lcom/facebook/ads/redexgen/X/36;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_7

    .line 7524
    const/4 v0, 0x0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/36;->A00:F

    .line 7525
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/facebook/ads/redexgen/X/36;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7526
    .end local v5    # "i":I
    :cond_8
    invoke-direct {p0, v6, v4, v5}, Lcom/facebook/ads/redexgen/X/3D;->A0O(IZZ)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_a

    .line 7527
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "iBz2AIJ6C"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->requestLayout()V

    .line 7528
    .end local v0
    :cond_9
    return-void

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0g()V
    .locals 1

    .line 7529
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0H(I)V

    .line 7530
    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 7531
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 7532
    .local p0, "focusableCount":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getDescendantFocusability()I

    move-result v4

    .line 7533
    .local p1, "descendantFocusability":I
    const/high16 v0, 0x60000

    if-eq v4, v0, :cond_1

    .line 7534
    const/4 v3, 0x0

    .local p2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 7535
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7536
    .local p3, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7537
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7538
    .local v5, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v1, v0, :cond_0

    .line 7539
    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 7540
    .end local p3    # "child":Landroid/view/View;
    .end local v5    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7541
    .end local p2    # "i":I
    :cond_1
    const/high16 v0, 0x40000

    if-ne v4, v0, :cond_2

    .line 7542
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v5, v0, :cond_5

    .line 7543
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7544
    return-void

    .line 7545
    :cond_3
    and-int/lit8 v1, p3, 0x1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_4

    .line 7546
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7547
    return-void

    .line 7548
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7549
    :cond_5
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

    .line 7550
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local p0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 7551
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7552
    .local p1, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7553
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7554
    .local v3, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v1, v0, :cond_0

    .line 7555
    invoke-virtual {v2, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 7556
    .end local p1    # "child":Landroid/view/View;
    .end local v3    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7557
    .end local p0    # "i":I
    :cond_1
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 7558
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/3D;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7559
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/3D;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 7560
    :cond_0
    move-object v2, p3

    check-cast v2, Lcom/facebook/ads/redexgen/X/36;

    .line 7561
    .local p0, "lp":Lcom/facebook/ads/redexgen/X/36;
    iget-boolean v1, v2, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3D;->A0d(Landroid/view/View;)Z

    move-result v0

    or-int/2addr v1, v0

    iput-boolean v1, v2, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    .line 7562
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0j:Z

    if-eqz v0, :cond_1

    .line 7563
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_2

    .line 7564
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/36;->A03:Z

    .line 7565
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3D;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 7566
    :goto_0
    return-void

    .line 7567
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 7568
    :cond_2
    const/16 v2, 0x56

    const/16 v1, 0x29

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final canScrollHorizontally(I)Z
    .locals 4

    .line 7569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 7570
    return v3

    .line 7571
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v0

    .line 7572
    .local p0, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v2

    .line 7573
    .local v0, "scrollX":I
    if-gez p1, :cond_2

    .line 7574
    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    if-le v2, v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 7575
    :cond_2
    if-lez p1, :cond_4

    .line 7576
    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A07:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    if-ge v2, v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    .line 7577
    :cond_4
    return v3
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 7578
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

    .line 7579
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0l:Z

    .line 7580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7581
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v4

    .line 7582
    .local p0, "oldX":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollY()I

    move-result v3

    .line 7583
    .local v1, "oldY":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 7584
    .local v0, "x":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 7585
    .local v0, "y":I
    if-ne v4, v2, :cond_0

    if-eq v3, v1, :cond_1

    .line 7586
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 7587
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/3D;->A0a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7589
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 7590
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2z;->A07(Landroid/view/View;)V

    .line 7591
    return-void

    .line 7592
    .end local p0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v0    # "y":I
    .end local v0
    :cond_2
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0S(Z)V

    .line 7593
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 7594
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

    .line 7595
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v0, 0x1000

    if-ne v1, v0, :cond_0

    .line 7596
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 7597
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v5

    .line 7598
    .local p0, "childCount":I
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 7599
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7600
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 7601
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7602
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-eqz v0, :cond_2

    iget v3, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

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

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v3, v0, :cond_2

    .line 7603
    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7604
    const/4 v0, 0x1

    return v0

    .line 7605
    .end local v1    # "child":Landroid/view/View;
    .end local v0    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7606
    .end local p1    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 7607
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 7608
    const/4 v6, 0x0

    .line 7609
    .local p0, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getOverScrollMode()I

    move-result v0

    .line 7610
    .local p1, "overScrollMode":I
    if-eqz v0, :cond_1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

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

    const-string v1, "uCo1AgFx4bPu4bwpitwpleYcuNfeFds"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_6

    .line 7611
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    if-le v0, v4, :cond_6

    .line 7612
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "sR19g1oBfMrUqPxbyG4ArbsnA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 7613
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 7614
    .local v6, "restoreCount":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingTop()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v4, v0

    .line 7615
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getWidth()I

    move-result v3

    .line 7616
    .local v4, "width":I
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 7617
    neg-int v1, v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingTop()I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v2, v1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A02:F

    int-to-float v0, v3

    mul-float/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v4, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 7619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/2addr v6, v0

    .line 7620
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 7621
    .end local v6    # "restoreCount":I
    .end local v0    # "height":I
    .end local v4    # "width":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7622
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 7623
    .restart local v6    # "restoreCount":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getWidth()I

    move-result v5

    .line 7624
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingTop()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v4, v0

    .line 7625
    .local v4, "height":I
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 7626
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

    .line 7627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 7628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/2addr v6, v0

    .line 7629
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 7630
    .end local v6    # "restoreCount":I
    .end local v0    # "width":I
    .end local v4    # "height":I
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 7631
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2z;->A07(Landroid/view/View;)V

    .line 7632
    :cond_4
    return-void

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 7633
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0V:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0W:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_1
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 7635
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 7636
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0S:Landroid/graphics/drawable/Drawable;

    .line 7637
    .local p0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7638
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7639
    :cond_0
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 7640
    new-instance v0, Lcom/facebook/ads/redexgen/X/36;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/36;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 7641
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/36;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/36;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 7642
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/facebook/ads/redexgen/X/2k;
    .locals 1

    .line 7643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    return-object v0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 2

    .line 7644
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0F:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    add-int/lit8 v1, p1, -0x1

    sub-int/2addr v1, p2

    .line 7645
    .local p0, "index":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0d:Ljava/util/ArrayList;

    .line 7646
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A01:I

    .line 7647
    .local p1, "result":I
    return v0

    .line 7648
    :cond_0
    move v1, p2

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 7650
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 7651
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0L:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 7652
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 7653
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 7654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    .line 7655
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 7656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7659
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 7660
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 7661
    move-object/from16 v1, p0

    move-object v11, v1

    move-object/from16 v12, p1

    invoke-super {v1, v12}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 7662
    iget v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    if-lez v0, :cond_4

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0S:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-eqz v0, :cond_4

    .line 7663
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v10

    .line 7664
    .local v12, "scrollX":I
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/3D;->getWidth()I

    move-result v9

    .line 7665
    .local v11, "width":I
    iget v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    int-to-float v8, v0

    int-to-float v0, v9

    div-float/2addr v8, v0

    .line 7666
    .local v0, "marginOffset":F
    const/4 v7, 0x0

    .line 7667
    .local v0, "itemIndex":I
    iget-object v1, v11, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/35;

    .line 7668
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget v3, v4, Lcom/facebook/ads/redexgen/X/35;->A00:F

    .line 7669
    .local v0, "offset":F
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 7670
    .local v0, "itemCount":I
    iget v5, v4, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 7671
    .local v10, "firstPos":I
    iget-object v1, v11, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    add-int/lit8 v0, v6, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/35;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    move/from16 v16, v0

    .line 7672
    .local v9, "lastPos":I
    .local v0, "pos":I
    :goto_0
    move/from16 v0, v16

    if-ge v5, v0, :cond_4

    .line 7673
    :goto_1
    iget v0, v4, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-le v5, v0, :cond_2

    if-ge v7, v6, :cond_2

    .line 7674
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "Qpfq"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    check-cast v4, Lcom/facebook/ads/redexgen/X/35;

    goto :goto_1

    .line 7675
    :cond_2
    iget v0, v4, Lcom/facebook/ads/redexgen/X/35;->A02:I

    if-ne v5, v0, :cond_6

    .line 7676
    iget v1, v4, Lcom/facebook/ads/redexgen/X/35;->A00:F

    iget v0, v4, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v1, v0

    int-to-float v0, v9

    mul-float/2addr v1, v0

    .line 7677
    .local v8, "drawAt":F
    iget v3, v4, Lcom/facebook/ads/redexgen/X/35;->A00:F

    iget v0, v4, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v3, v0

    add-float/2addr v3, v8

    .line 7678
    .end local v0    # "pos":I
    .local v0, "offset":F
    .end local v0    # "offset":F
    .local v8, "drawAt":F
    :goto_2
    iget v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    int-to-float v2, v0

    add-float/2addr v2, v1

    int-to-float v0, v10

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    .line 7679
    iget-object v15, v11, Lcom/facebook/ads/redexgen/X/3D;->A0S:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    iget v13, v11, Lcom/facebook/ads/redexgen/X/3D;->A0Q:I

    iget v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    .line 7680
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .end local v0
    .local v0, "marginOffset":F
    iget v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A09:I

    .line 7681
    invoke-virtual {v15, v14, v13, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7682
    iget-object v13, v11, Lcom/facebook/ads/redexgen/X/3D;->A0S:Landroid/graphics/drawable/Drawable;

    sget-object v14, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v2, v14, v0

    const/4 v0, 0x0

    aget-object v14, v14, v0

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_5

    sget-object v14, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v2, ""

    const/4 v0, 0x1

    aput-object v2, v14, v0

    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7683
    .end local v0    # "marginOffset":F
    .restart local v0    # "marginOffset":F
    :cond_3
    :goto_3
    add-int v14, v10, v9

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0xc

    if-eq v2, v0, :cond_0

    sget-object v13, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v2, "DrXdt"

    const/4 v0, 0x1

    aput-object v2, v13, v0

    int-to-float v0, v14

    cmpl-float v0, v1, v0

    if-lez v0, :cond_7

    .line 7684
    :cond_4
    return-void

    :cond_5
    sget-object v14, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v2, ""

    const/4 v0, 0x4

    aput-object v2, v14, v0

    const-string v2, ""

    const/4 v0, 0x5

    aput-object v2, v14, v0

    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 7685
    .end local v8    # "drawAt":F
    .end local v0    # "marginOffset":F
    .restart local v0    # "marginOffset":F
    :cond_6
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2k;->A04(I)F

    move-result v2

    .line 7686
    .local v8, "widthFactor":F
    add-float v1, v3, v2

    int-to-float v0, v9

    mul-float/2addr v1, v0

    .line 7687
    .local v0, "drawAt":F
    add-float/2addr v2, v8

    add-float/2addr v3, v2

    goto :goto_2

    .line 7688
    .end local v8    # "widthFactor":F
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    .line 7689
    move-object/from16 v2, p0

    move-object v2, v2

    move-object/from16 v3, p1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 7690
    .local v4, "action":I
    const/4 v1, 0x0

    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v4, 0x1

    if-ne v6, v4, :cond_2

    .line 7691
    :cond_0
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/3D;->A0V()Z

    .line 7692
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_11

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7693
    :cond_2
    if-eqz v6, :cond_4

    .line 7694
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    if-eqz v0, :cond_3

    .line 7695
    return v4

    .line 7696
    :cond_3
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0m:Z

    if-eqz v0, :cond_4

    .line 7697
    return v1

    .line 7698
    :cond_4
    const/4 v5, 0x2

    if-eqz v6, :cond_f

    if-eq v6, v5, :cond_8

    const/4 v0, 0x6

    if-eq v6, v0, :cond_7

    .line 7699
    :cond_5
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 7700
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    .line 7701
    :cond_6
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7702
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    return v0

    .line 7703
    :cond_7
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/3D;->A0Q(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 7704
    :cond_8
    iget v1, v2, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 7705
    .local v0, "activePointerId":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_9

    goto :goto_0

    .line 7706
    :cond_9
    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 7707
    .local v1, "pointerIndex":I
    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 7708
    .local v0, "x":F
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    sub-float v8, v5, v0

    .line 7709
    .local v0, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 7710
    .local v1, "xDiff":F
    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 7711
    .local v6, "y":F
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A04:F

    sub-float v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 7712
    .local v0, "yDiff":F
    const/4 v10, 0x0

    cmpl-float v0, v8, v10

    if-eqz v0, :cond_a

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    invoke-direct {v2, v0, v8}, Lcom/facebook/ads/redexgen/X/3D;->A0Z(FF)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v15, 0x0

    float-to-int v6, v8

    float-to-int v1, v5

    float-to-int v0, v7

    .line 7713
    move-object v13, v2

    move-object v14, v2

    .end local v6    # "y":F
    .local v3, "y":F
    move/from16 v17, v1

    move/from16 v18, v0

    move/from16 v16, v6

    invoke-direct/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/3D;->A0e(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7714
    iput v5, v2, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 7715
    iput v7, v2, Lcom/facebook/ads/redexgen/X/3D;->A06:F

    .line 7716
    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/3D;->A0m:Z

    .line 7717
    const/4 v0, 0x0

    return v0

    .line 7718
    .end local v6
    .restart local v3    # "y":F
    :cond_a
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    int-to-float v9, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_1

    sget-object v6, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "NnThZj9Wv9885vPNkfCF8DoAZte0LwUX"

    const/4 v0, 0x7

    aput-object v1, v6, v0

    const-string v1, "g2aolHvSBW8By3vUeqDyYWaFAgdqNGTo"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    cmpl-float v0, v12, v9

    if-lez v0, :cond_e

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v12

    cmpl-float v0, v0, v11

    if-lez v0, :cond_e

    .line 7719
    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    .line 7720
    invoke-direct {v2, v4}, Lcom/facebook/ads/redexgen/X/3D;->A0U(Z)V

    .line 7721
    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/3D;->setScrollState(I)V

    .line 7722
    cmpl-float v0, v8, v10

    if-lez v0, :cond_d

    .line 7723
    iget v8, v2, Lcom/facebook/ads/redexgen/X/3D;->A03:F

    iget v9, v2, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    sget-object v6, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v6, v0

    const/4 v0, 0x0

    aget-object v6, v6, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_c

    int-to-float v0, v9

    add-float/2addr v8, v0

    :goto_1
    iput v8, v2, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 7724
    iput v7, v2, Lcom/facebook/ads/redexgen/X/3D;->A06:F

    .line 7725
    invoke-direct {v2, v4}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7726
    :cond_b
    :goto_2
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    if-eqz v0, :cond_5

    .line 7727
    invoke-direct {v2, v5}, Lcom/facebook/ads/redexgen/X/3D;->A0Y(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7728
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/2z;->A07(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_c
    sget-object v6, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "WpQimEPBWZ8vG05HKhTxshBMY3NNEur0"

    const/4 v0, 0x7

    aput-object v1, v6, v0

    const-string v1, "BEtp4ufX6D8x3OZlDxdpMoFh1oKQqP0t"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    int-to-float v0, v9

    add-float/2addr v8, v0

    goto :goto_1

    .line 7729
    :cond_d
    iget v8, v2, Lcom/facebook/ads/redexgen/X/3D;->A03:F

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    int-to-float v0, v0

    sub-float/2addr v8, v0

    goto :goto_1

    .line 7730
    :cond_e
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    .line 7731
    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/3D;->A0m:Z

    goto :goto_2

    .line 7732
    .end local v3    # "y":F
    .end local v0    # "yDiff":F
    .end local v1    # "xDiff":F
    .end local v0
    .end local v0
    .end local v1
    .end local v0
    :cond_f
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A03:F

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 7733
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A04:F

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A06:F

    .line 7734
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 7735
    iput-boolean v1, v2, Lcom/facebook/ads/redexgen/X/3D;->A0m:Z

    .line 7736
    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/3D;->A0l:Z

    .line 7737
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 7738
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0P:I

    if-ne v0, v5, :cond_10

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    .line 7739
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0C:I

    if-le v1, v0, :cond_10

    .line 7740
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7741
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    .line 7742
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/3D;->A0g()V

    .line 7743
    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    .line 7744
    invoke-direct {v2, v4}, Lcom/facebook/ads/redexgen/X/3D;->A0U(Z)V

    .line 7745
    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/3D;->setScrollState(I)V

    goto/16 :goto_0

    .line 7746
    :cond_10
    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0S(Z)V

    .line 7747
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    .line 7748
    goto/16 :goto_0

    :cond_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "iW5W"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    move/from16 v8, p5

    move/from16 v9, p4

    .line 7749
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v7

    .line 7750
    .local p1, "count":I
    sub-int v9, v9, p2

    .line 7751
    .local p2, "width":I
    sub-int v8, v8, p3

    .line 7752
    .local p3, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v11

    .line 7753
    .local v9, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingTop()I

    move-result v12

    .line 7754
    .local v8, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v17

    .line 7755
    .local v6, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingBottom()I

    move-result v16

    .line 7756
    .local v7, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v15

    .line 7757
    .local v9, "scrollX":I
    const/4 v10, 0x0

    .line 7758
    .local v8, "decorCount":I
    const/4 v5, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v2, 0x8

    sget-object v3, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v3, v0

    const/4 v0, 0x5

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x1

    aput-object v1, v3, v0

    if-ge v5, v7, :cond_b

    .line 7759
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7760
    .local v17, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 7761
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/36;

    .line 7762
    .local v12, "lp":Lcom/facebook/ads/redexgen/X/36;
    .local v16, "childLeft":I
    .local v15, "childTop":I
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-eqz v0, :cond_2

    .line 7763
    iget v0, v2, Lcom/facebook/ads/redexgen/X/36;->A04:I

    and-int/lit8 v1, v0, 0x7

    .line 7764
    .local v10, "hgrav":I
    .end local v16    # "childLeft":I
    .local v5, "childLeft":I
    iget v0, v2, Lcom/facebook/ads/redexgen/X/36;->A04:I

    and-int/lit8 v3, v0, 0x70

    .line 7765
    .local v16, "vgrav":I
    .end local v12    # "lp":Lcom/facebook/ads/redexgen/X/36;
    .local v2, "lp":Lcom/facebook/ads/redexgen/X/36;
    const/4 v0, 0x1

    if-eq v1, v0, :cond_a

    const/4 v0, 0x3

    if-eq v1, v0, :cond_9

    const/4 v0, 0x5

    if-eq v1, v0, :cond_8

    .line 7766
    move v1, v11

    .line 7767
    .end local v5    # "childLeft":I
    .local v12, "childLeft":I
    .end local v9    # "scrollX":I
    .local v5, "paddingLeft":I
    :goto_2
    const/16 v0, 0x10

    if-eq v3, v0, :cond_7

    const/16 v13, 0x30

    sget-object v14, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v2, v14, v0

    const/4 v0, 0x5

    aget-object v0, v14, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_5

    if-eq v3, v13, :cond_6

    :goto_3
    const/16 v13, 0x50

    sget-object v14, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v2, v14, v0

    const/4 v0, 0x0

    aget-object v14, v14, v0

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_3

    sget-object v14, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v2, "D8xV1TWmEwTp2AdSb5ATv3"

    const/4 v0, 0x2

    aput-object v2, v14, v0

    if-eq v3, v13, :cond_4

    .line 7768
    :goto_4
    move v2, v12

    .line 7769
    .end local v15    # "childTop":I
    .local v9, "childTop":I
    :goto_5
    add-int/2addr v1, v15

    .line 7770
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 7771
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .end local v8    # "decorCount":I
    .local v0, "paddingTop":I
    add-int/2addr v0, v2

    .line 7772
    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 7773
    add-int/lit8 v10, v10, 0x1

    .line 7774
    .end local v12    # "childLeft":I
    .end local v17    # "child":Landroid/view/View;
    .end local v16    # "vgrav":I
    .end local v15
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    sget-object v14, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v2, "1ewPUp1k8Pl5lyl6fUi6LymHiaJ9xmay"

    const/4 v0, 0x3

    aput-object v2, v14, v0

    const-string v2, "wiWTa2PhZxJDNWnFVxR2jmvUAFeWjohE"

    const/4 v0, 0x6

    aput-object v2, v14, v0

    if-eq v3, v13, :cond_4

    goto :goto_4

    .line 7775
    .end local v9    # "childTop":I
    .restart local v15    # "childTop":I
    :cond_4
    sub-int v2, v8, v16

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v2, v0

    .line 7776
    .end local v15    # "childTop":I
    .restart local v9    # "childTop":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v16, v16, v0

    goto :goto_5

    :cond_5
    sget-object v14, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v2, "MABJA51Hkg88aIvdKLNPKtpDPx4feUgS"

    const/4 v0, 0x7

    aput-object v2, v14, v0

    const-string v2, "re5uoSp4mr8xr4T7F9jmqa7JfXqBIVyF"

    const/4 v0, 0x0

    aput-object v2, v14, v0

    if-eq v3, v13, :cond_6

    goto :goto_3

    .line 7777
    .end local v9    # "childTop":I
    .restart local v15    # "childTop":I
    :cond_6
    move v2, v12

    .line 7778
    .end local v15    # "childTop":I
    .restart local v9    # "childTop":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v12, v0

    .line 7779
    goto :goto_5

    .line 7780
    .end local v9    # "childTop":I
    .restart local v15    # "childTop":I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v8, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7781
    .end local v15    # "childTop":I
    .restart local v9    # "childTop":I
    goto :goto_5

    .line 7782
    .end local v12
    .restart local v5    # "paddingLeft":I
    :cond_8
    sub-int v1, v9, v17

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v1, v0

    .line 7783
    .end local v5    # "paddingLeft":I
    .restart local v12    # "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v17, v17, v0

    goto/16 :goto_2

    .line 7784
    .end local v12    # "childLeft":I
    .restart local v5    # "paddingLeft":I
    :cond_9
    move v1, v11

    .line 7785
    .end local v5    # "paddingLeft":I
    .restart local v12    # "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v11, v0

    .line 7786
    goto/16 :goto_2

    .line 7787
    .end local v12    # "childLeft":I
    .restart local v5    # "paddingLeft":I
    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "cEG6crY"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sub-int v0, v9, v13

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7788
    .end local v5    # "paddingLeft":I
    .restart local v12    # "childLeft":I
    goto/16 :goto_2

    .line 7789
    .end local v11    # "i":I
    :cond_b
    sub-int/2addr v9, v11

    sub-int v9, v9, v17

    .line 7790
    .local v11, "childWidth":I
    const/4 v5, 0x0

    .local v17, "i":I
    :goto_6
    if-ge v5, v7, :cond_f

    .line 7791
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7792
    .local v15, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_e

    .line 7793
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/36;

    .line 7794
    .local v10, "lp":Lcom/facebook/ads/redexgen/X/36;
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_e

    invoke-direct {v6, v4}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v13

    .local v2, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-eqz v13, :cond_e

    .line 7795
    int-to-float v3, v9

    sget-object v14, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v14, v0

    const/4 v0, 0x5

    aget-object v0, v14, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    goto/16 :goto_1

    .end local p1    # "count":I
    .local v16, "ii":Lcom/facebook/ads/redexgen/X/35;
    .local v2, "count":I
    :cond_c
    sget-object v14, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v14, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v14, v0

    iget v0, v13, Lcom/facebook/ads/redexgen/X/35;->A00:F

    mul-float/2addr v3, v0

    float-to-int v0, v3

    .line 7796
    .local p1, "loff":I
    add-int v3, v11, v0

    .line 7797
    .local v12, "childLeft":I
    .local v0, "childTop":I
    .end local p1    # "loff":I
    .local v1, "loff":I
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/36;->A03:Z

    if-eqz v0, :cond_d

    .line 7798
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/36;->A03:Z

    .line 7799
    int-to-float v1, v9

    .end local p2    # "width":I
    .local v0, "width":I
    iget v0, v2, Lcom/facebook/ads/redexgen/X/36;->A00:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7800
    .local p1, "widthSpec":I
    sub-int v0, v8, v12

    .end local v9    # "childTop":I
    .local v0, "paddingLeft":I
    sub-int v0, v0, v16

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7801
    .local p2, "heightSpec":I
    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 7802
    .end local p2    # "heightSpec":I
    .end local v9
    .restart local v0    # "paddingLeft":I
    .restart local v0    # "paddingLeft":I
    :cond_d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v3

    .line 7803
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    move v0, v12

    .end local v0    # "paddingLeft":I
    .local v9, "childTop":I
    add-int/2addr v1, v0

    .line 7804
    invoke-virtual {v4, v3, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 7805
    .end local p1    # "widthSpec":I
    .end local p2
    .end local v9    # "childTop":I
    .end local v15    # "child":Landroid/view/View;
    .restart local v2    # "count":I
    .restart local v0    # "paddingLeft":I
    .restart local v0    # "paddingLeft":I
    :cond_e
    add-int/lit8 v5, v5, 0x1

    const/16 v2, 0x8

    goto :goto_6

    .line 7806
    .end local v2    # "count":I
    .end local v0    # "paddingLeft":I
    .end local v0
    .restart local p1    # "widthSpec":I
    .restart local p2    # "heightSpec":I
    .restart local v9    # "childTop":I
    .end local p1    # "widthSpec":I
    .end local p2    # "heightSpec":I
    .end local v9    # "childTop":I
    .end local v17    # "i":I
    .restart local v2    # "count":I
    .restart local v0    # "paddingLeft":I
    .restart local v0    # "paddingLeft":I
    :cond_f
    iput v12, v6, Lcom/facebook/ads/redexgen/X/3D;->A0Q:I

    .line 7807
    sub-int v8, v8, v16

    iput v8, v6, Lcom/facebook/ads/redexgen/X/3D;->A09:I

    .line 7808
    iput v10, v6, Lcom/facebook/ads/redexgen/X/3D;->A0D:I

    .line 7809
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    if-eqz v0, :cond_10

    .line 7810
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    const/4 v0, 0x0

    invoke-direct {v6, v1, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0N(IZIZ)V

    .line 7811
    :goto_7
    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    .line 7812
    return-void

    .line 7813
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onMeasure(II)V
    .locals 15

    .line 7814
    move-object v9, p0

    const/4 v0, 0x0

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/3D;->getDefaultSize(II)I

    move-result v1

    .line 7815
    move/from16 v2, p2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/3D;->getDefaultSize(II)I

    move-result v0

    .line 7816
    invoke-virtual {v9, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->setMeasuredDimension(II)V

    .line 7817
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getMeasuredWidth()I

    move-result v8

    .line 7818
    .local v9, "measuredWidth":I
    div-int/lit8 v1, v8, 0xa

    .line 7819
    .local v1, "maxGutterSize":I
    iget v0, v9, Lcom/facebook/ads/redexgen/X/3D;->A0E:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v9, Lcom/facebook/ads/redexgen/X/3D;->A0I:I

    .line 7820
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v8, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingRight()I

    move-result v0

    sub-int/2addr v8, v0

    .line 7821
    .local v1, "childWidthSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingTop()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v3, v0

    .line 7822
    .local v2, "childHeightSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v5

    .line 7823
    .local v0, "size":I
    const/4 v4, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v7, 0x8

    if-ge v4, v5, :cond_d

    .line 7824
    invoke-virtual {v9, v4}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7825
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_4

    .line 7826
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/36;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_f

    .line 7827
    .local v1, "lp":Lcom/facebook/ads/redexgen/X/36;
    sget-object v6, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v6, v0

    if-eqz v2, :cond_4

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-eqz v0, :cond_4

    .line 7828
    iget v0, v2, Lcom/facebook/ads/redexgen/X/36;->A04:I

    and-int/lit8 v6, v0, 0x7

    .line 7829
    .local v0, "hgrav":I
    iget v0, v2, Lcom/facebook/ads/redexgen/X/36;->A04:I

    and-int/lit8 v1, v0, 0x70

    .line 7830
    .local v8, "vgrav":I
    const/high16 v12, -0x80000000

    .line 7831
    .local v0, "widthMode":I
    const/high16 v7, -0x80000000

    .line 7832
    .local v8, "heightMode":I
    const/16 v0, 0x30

    if-eq v1, v0, :cond_0

    const/16 v0, 0x50

    if-ne v1, v0, :cond_c

    :cond_0
    const/4 v14, 0x1

    .line 7833
    .local v1, "consumeVertical":Z
    :goto_1
    const/4 v0, 0x3

    if-eq v6, v0, :cond_1

    const/4 v0, 0x5

    if-ne v6, v0, :cond_b

    :cond_1
    const/4 v13, 0x1

    .line 7834
    .local v0, "consumeHorizontal":Z
    :goto_2
    if-eqz v14, :cond_a

    .line 7835
    const/high16 v12, 0x40000000    # 2.0f

    .line 7836
    .local v3, "widthSize":I
    .local v0, "heightSize":I
    :cond_2
    :goto_3
    iget v1, v2, Lcom/facebook/ads/redexgen/X/36;->width:I

    .end local v9    # "measuredWidth":I
    .local v3, "measuredWidth":I
    const/4 v0, -0x2

    if-eq v1, v0, :cond_9

    .line 7837
    const/high16 v12, 0x40000000    # 2.0f

    .line 7838
    iget v1, v2, Lcom/facebook/ads/redexgen/X/36;->width:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_8

    .line 7839
    iget v11, v2, Lcom/facebook/ads/redexgen/X/36;->width:I

    .line 7840
    .end local v3    # "measuredWidth":I
    .local v2, "widthSize":I
    .end local v3
    .restart local v2    # "widthSize":I
    :goto_4
    iget v1, v2, Lcom/facebook/ads/redexgen/X/36;->height:I

    const/4 v0, -0x2

    if-eq v1, v0, :cond_7

    .line 7841
    const/high16 v7, 0x40000000    # 2.0f

    .line 7842
    iget v1, v2, Lcom/facebook/ads/redexgen/X/36;->height:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_6

    .line 7843
    iget v6, v2, Lcom/facebook/ads/redexgen/X/36;->height:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "VKsSzAx6pk9J5wmYrW5ACp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 7844
    .end local v0    # "heightSize":I
    .local v9, "heightSize":I
    .end local v8    # "heightMode":I
    .end local v0
    .restart local v9    # "heightSize":I
    .local v0, "heightMode":I
    .end local v1    # "consumeVertical":Z
    .local v8, "maxGutterSize":I
    :cond_3
    :goto_5
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7845
    .local v1, "widthSpec":I
    .end local v2    # "widthSize":I
    .restart local v3    # "measuredWidth":I
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7846
    .local v2, "heightSpec":I
    invoke-virtual {v10, v1, v0}, Landroid/view/View;->measure(II)V

    .line 7847
    if-eqz v14, :cond_5

    .line 7848
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v3, v0

    .line 7849
    .end local v9    # "heightSize":I
    .end local v1    # "widthSpec":I
    .end local v0    # "heightMode":I
    .restart local v8    # "maxGutterSize":I
    .restart local v3    # "measuredWidth":I
    :cond_4
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 7850
    :cond_5
    if-eqz v13, :cond_4

    .line 7851
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v8, v0

    goto :goto_6

    .line 7852
    .end local v9
    .restart local v0    # "heightMode":I
    :cond_6
    move v6, v3

    goto :goto_5

    .line 7853
    :cond_7
    move v6, v3

    goto :goto_5

    .line 7854
    .end local v2    # "heightSpec":I
    .restart local v3    # "measuredWidth":I
    :cond_8
    move v11, v8

    goto :goto_4

    .line 7855
    :cond_9
    move v11, v8

    goto :goto_4

    .line 7856
    :cond_a
    if-eqz v13, :cond_2

    .line 7857
    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_3

    .line 7858
    :cond_b
    const/4 v13, 0x0

    goto :goto_2

    .line 7859
    :cond_c
    const/4 v14, 0x0

    goto :goto_1

    .line 7860
    .end local v8    # "maxGutterSize":I
    .end local v3    # "measuredWidth":I
    .restart local v9    # "heightSize":I
    .restart local v1    # "widthSpec":I
    .end local v9    # "heightSize":I
    .end local v1    # "widthSpec":I
    .end local v8
    .restart local v8    # "maxGutterSize":I
    .restart local v3    # "measuredWidth":I
    :cond_d
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, v9, Lcom/facebook/ads/redexgen/X/3D;->A0B:I

    .line 7861
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, v9, Lcom/facebook/ads/redexgen/X/3D;->A0A:I

    .line 7862
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/facebook/ads/redexgen/X/3D;->A0j:Z

    .line 7863
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0g()V

    .line 7864
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/facebook/ads/redexgen/X/3D;->A0j:Z

    .line 7865
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v5

    .line 7866
    .end local v0    # "heightMode":I
    .local v2, "size":I
    const/4 v4, 0x0

    .local v9, "i":I
    :goto_7
    if-ge v4, v5, :cond_12

    .line 7867
    invoke-virtual {v9, v4}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7868
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_11

    .line 7869
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/36;

    .line 7870
    .local v1, "lp":Lcom/facebook/ads/redexgen/X/36;
    if-eqz v11, :cond_e

    iget-boolean v0, v11, Lcom/facebook/ads/redexgen/X/36;->A05:Z

    if-nez v0, :cond_11

    .line 7871
    :cond_e
    int-to-float v10, v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_10

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "11cm9STM7FlxGR3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget v0, v11, Lcom/facebook/ads/redexgen/X/36;->A00:F

    mul-float/2addr v10, v0

    float-to-int v0, v10

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7872
    .local v0, "widthSpec":I
    iget v0, v9, Lcom/facebook/ads/redexgen/X/3D;->A0A:I

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->measure(II)V

    .line 7873
    .end local v0    # "widthSpec":I
    .end local v1    # "lp":Lcom/facebook/ads/redexgen/X/36;
    .end local v0
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 7874
    .end local v9    # "i":I
    :cond_12
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 7

    .line 7875
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getChildCount()I

    move-result v4

    .line 7876
    .local p0, "count":I
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 7877
    const/4 v3, 0x0

    .line 7878
    .local p1, "index":I
    const/4 v6, 0x1

    .line 7879
    .local p2, "increment":I
    .local v4, "end":I
    .local v0, "i":I
    :goto_0
    if-eq v3, v4, :cond_3

    .line 7880
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/3D;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_2

    .line 7881
    .local v3, "child":Landroid/view/View;
    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "wvs0VrXDMEHK1ZrgMliCmQkmYIqFRPYZ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "yeuyy9yC0QSIfk9tyj8D1No5khczL5F7"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7882
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/3D;->A07(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/35;

    move-result-object v0

    .line 7883
    .local v6, "ii":Lcom/facebook/ads/redexgen/X/35;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    if-ne v1, v0, :cond_0

    .line 7884
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7885
    const/4 v0, 0x1

    return v0

    .line 7886
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "ii":Lcom/facebook/ads/redexgen/X/35;
    :cond_0
    add-int/2addr v3, v6

    goto :goto_0

    .line 7887
    .end local p1    # "index":I
    .end local p2    # "increment":I
    .end local v4    # "end":I
    :cond_1
    add-int/lit8 v3, v4, -0x1

    .line 7888
    .restart local p1    # "index":I
    const/4 v6, -0x1

    .line 7889
    .restart local p2    # "increment":I
    const/4 v4, -0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7890
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 7891
    instance-of v0, p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    if-nez v0, :cond_0

    .line 7892
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 7893
    return-void

    .line 7894
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 7895
    .local p0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    .line 7896
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/3D;->A0v:[Ljava/lang/String;

    const-string v1, "Ly8LvMv3iU8o2fiJAVqvd6K7Aqz3gZKY"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "HcNmsPXina8Ul250FP3kUGj1pgK53N1r"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 7897
    :cond_1
    check-cast p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;->unwrap(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    .line 7898
    .local p1, "state":Landroid/os/Parcelable;
    instance-of v0, v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_2

    .line 7899
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 7900
    return-void

    .line 7901
    :cond_2
    check-cast v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;

    .line 7902
    .local v0, "ss":Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;
    invoke-virtual {v1}, Lcom/facebook/ads/internal/androidx/support/v4/view/AbsSavedState;->A02()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 7903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-eqz v0, :cond_3

    .line 7904
    iget v2, v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A00:I

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0O(IZZ)V

    .line 7905
    :goto_0
    return-void

    .line 7906
    :cond_3
    iget v0, v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0O:I

    .line 7907
    iget-object v0, v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A01:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0T:Landroid/os/Parcelable;

    .line 7908
    iget-object v0, v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A02:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0c:Ljava/lang/ClassLoader;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 7909
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 7910
    .local p0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 7911
    .local v0, "ss":Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    iput v0, v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A00:I

    .line 7912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-eqz v0, :cond_0

    .line 7913
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A07()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A01:Landroid/os/Parcelable;

    .line 7914
    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    .line 7915
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 7916
    if-eq p1, p3, :cond_0

    .line 7917
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    invoke-direct {p0, p1, p3, v0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0L(IIII)V

    .line 7918
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 7919
    move-object v3, p0

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A0h:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 7920
    return v2

    .line 7921
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    .line 7922
    return v4

    .line 7923
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    if-nez v0, :cond_3

    .line 7924
    .end local v2
    .end local v1
    :cond_2
    return v4

    .line 7925
    :cond_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 7926
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    .line 7927
    :cond_4
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 7929
    .local v3, "action":I
    const/4 v7, 0x0

    .line 7930
    .local v2, "needsInvalidate":Z
    and-int/lit16 v1, v0, 0xff

    if-eqz v1, :cond_f

    if-eq v1, v2, :cond_e

    const/4 v0, 0x2

    if-eq v1, v0, :cond_a

    const/4 v0, 0x3

    if-eq v1, v0, :cond_9

    const/4 v0, 0x5

    if-eq v1, v0, :cond_8

    const/4 v0, 0x6

    if-eq v1, v0, :cond_7

    .line 7931
    :cond_5
    :goto_0
    if-eqz v7, :cond_6

    .line 7932
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2z;->A07(Landroid/view/View;)V

    .line 7933
    :cond_6
    return v2

    .line 7934
    :cond_7
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A0Q(Landroid/view/MotionEvent;)V

    .line 7935
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    goto :goto_0

    .line 7936
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 7937
    .local v0, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 7938
    .local v0, "x":F
    iput v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 7939
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 7940
    goto :goto_0

    .line 7941
    .end local v0    # "x":F
    .end local v0
    :cond_9
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    if-eqz v0, :cond_5

    .line 7942
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    invoke-direct {v3, v0, v2, v4, v4}, Lcom/facebook/ads/redexgen/X/3D;->A0N(IZIZ)V

    .line 7943
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0V()Z

    move-result v7

    goto :goto_0

    .line 7944
    :cond_a
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    if-nez v0, :cond_c

    .line 7945
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 7946
    .local v0, "pointerIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_b

    .line 7947
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0V()Z

    move-result v7

    .line 7948
    goto :goto_0

    .line 7949
    :cond_b
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 7950
    .restart local v0    # "pointerIndex":I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    sub-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 7951
    .local v4, "xDiff":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 7952
    .local v0, "y":F
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A06:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 7953
    .local v0, "yDiff":F
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_c

    cmpl-float v0, v5, v1

    if-lez v0, :cond_c

    .line 7954
    iput-boolean v2, v3, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    .line 7955
    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/3D;->A0U(Z)V

    .line 7956
    iget v1, v3, Lcom/facebook/ads/redexgen/X/3D;->A03:F

    sub-float/2addr v6, v1

    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_d

    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 7957
    :goto_1
    iput v1, v3, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 7958
    iput v4, v3, Lcom/facebook/ads/redexgen/X/3D;->A06:F

    .line 7959
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/3D;->setScrollState(I)V

    .line 7960
    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/3D;->setScrollingCacheEnabled(Z)V

    .line 7961
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7962
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_c

    .line 7963
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7964
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v0
    .end local v4    # "xDiff":F
    .end local v0
    .end local v0
    .end local v0
    :cond_c
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    if-eqz v0, :cond_5

    .line 7965
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 7966
    .local v0, "activePointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 7967
    .restart local v0    # "activePointerIndex":I
    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0Y(F)Z

    move-result v0

    or-int/2addr v7, v0

    .line 7968
    .end local v0    # "activePointerIndex":I
    .end local v0
    goto/16 :goto_0

    .line 7969
    :cond_d
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A0R:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    goto :goto_1

    .line 7970
    :cond_e
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A0k:Z

    if-eqz v0, :cond_5

    .line 7971
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/3D;->A0U:Landroid/view/VelocityTracker;

    .line 7972
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v1, 0x3e8

    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A0J:I

    int-to-float v0, v0

    invoke-virtual {v4, v1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 7973
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v6, v0

    .line 7974
    .local v0, "initialVelocity":I
    iput-boolean v2, v3, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    .line 7975
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->getClientWidth()I

    move-result v8

    .line 7976
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getScrollX()I

    move-result v4

    .line 7977
    .local v0, "scrollX":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A03()Lcom/facebook/ads/redexgen/X/35;

    move-result-object v7

    .line 7978
    .local v0, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    int-to-float v1, v0

    int-to-float v0, v8

    div-float/2addr v1, v0

    .line 7979
    .local v0, "marginOffset":F
    iget v5, v7, Lcom/facebook/ads/redexgen/X/35;->A02:I

    .line 7980
    .local v0, "currentPage":I
    int-to-float v4, v4

    int-to-float v0, v8

    div-float/2addr v4, v0

    iget v0, v7, Lcom/facebook/ads/redexgen/X/35;->A00:F

    sub-float/2addr v4, v0

    iget v0, v7, Lcom/facebook/ads/redexgen/X/35;->A01:F

    add-float/2addr v0, v1

    div-float/2addr v4, v0

    .line 7981
    .local v0, "pageOffset":F
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 7982
    .local v0, "activePointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 7983
    .local v0, "x":F
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A03:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 7984
    .local v7, "totalDelta":I
    .end local v3    # "action":I
    .local v1, "action":I
    invoke-direct {v3, v5, v4, v6, v0}, Lcom/facebook/ads/redexgen/X/3D;->A01(IFII)I

    move-result v0

    .line 7985
    .local v3, "nextPage":I
    invoke-direct {v3, v0, v2, v2, v6}, Lcom/facebook/ads/redexgen/X/3D;->A0P(IZZI)V

    .line 7986
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0V()Z

    move-result v7

    .line 7987
    .end local v3    # "nextPage":I
    .end local v0    # "x":F
    .end local v0
    .end local v4    # "width":I
    .end local v0
    .end local v0
    .end local v0
    .end local v0
    .end local v0
    .end local v0
    .end local v0
    .end local v7    # "totalDelta":I
    goto/16 :goto_0

    .line 7988
    .end local v1    # "action":I
    .restart local v3    # "nextPage":I
    .end local v3    # "nextPage":I
    .restart local v1    # "action":I
    :cond_f
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A0X:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7989
    iput-boolean v4, v3, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    .line 7990
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0g()V

    .line 7991
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A03:F

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A05:F

    .line 7992
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A04:F

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A06:F

    .line 7993
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3D;->A08:I

    .line 7994
    goto/16 :goto_0
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    .line 7995
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0j:Z

    if-eqz v0, :cond_0

    .line 7996
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->removeViewInLayout(Landroid/view/View;)V

    .line 7997
    :goto_0
    return-void

    .line 7998
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/facebook/ads/redexgen/X/2k;)V
    .locals 6

    .line 7999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 8000
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2k;->A0A(Landroid/database/DataSetObserver;)V

    .line 8001
    const/4 v5, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 8002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/35;

    .line 8003
    .local v3, "ii":Lcom/facebook/ads/redexgen/X/35;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/35;->A02:I

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/35;->A03:Ljava/lang/Object;

    invoke-virtual {v2, p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A0B(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 8004
    .end local v3    # "ii":Lcom/facebook/ads/redexgen/X/35;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8005
    .end local p0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8006
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0A()V

    .line 8007
    iput v4, p0, Lcom/facebook/ads/redexgen/X/3D;->A00:I

    .line 8008
    invoke-virtual {p0, v4, v4}, Lcom/facebook/ads/redexgen/X/3D;->scrollTo(II)V

    .line 8009
    .local p0, "oldAdapter":Lcom/facebook/ads/redexgen/X/2k;
    :cond_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    .line 8010
    iput v4, p0, Lcom/facebook/ads/redexgen/X/3D;->A0G:I

    .line 8011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    if-eqz v0, :cond_3

    .line 8012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0b:Lcom/facebook/ads/redexgen/X/3A;

    if-nez v0, :cond_2

    .line 8013
    new-instance v0, Lcom/facebook/ads/redexgen/X/3A;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3A;-><init>(Lcom/facebook/ads/redexgen/X/3D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0b:Lcom/facebook/ads/redexgen/X/3A;

    .line 8014
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0b:Lcom/facebook/ads/redexgen/X/3A;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2k;->A0A(Landroid/database/DataSetObserver;)V

    .line 8015
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    .line 8016
    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    .line 8017
    .local v3, "wasFirstLayout":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    .line 8018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2k;->A05()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0G:I

    .line 8019
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0O:I

    if-ltz v0, :cond_4

    .line 8020
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0O:I

    invoke-direct {p0, v0, v4, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0O(IZZ)V

    .line 8021
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0O:I

    .line 8022
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A0T:Landroid/os/Parcelable;

    .line 8023
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3D;->A0c:Ljava/lang/ClassLoader;

    .line 8024
    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0e:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 8025
    const/4 v1, 0x0

    .local p1, "i":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    if-ge v1, v0, :cond_6

    .line 8026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    .line 8027
    :cond_4
    if-nez v2, :cond_5

    .line 8028
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0g()V

    goto :goto_1

    .line 8029
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->requestLayout()V

    goto :goto_1

    .line 8030
    .end local p1    # "i":I
    .end local v0    # "count":I
    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 8031
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0o:Z

    .line 8032
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0O(IZZ)V

    .line 8033
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 5

    .line 8034
    const/4 v4, 0x1

    if-ge p1, v4, :cond_0

    .line 8035
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7f

    const/16 v1, 0x1f

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x33

    const/16 v1, 0x1a

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x12c

    const/16 v1, 0x9

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8036
    const/4 p1, 0x1

    .line 8037
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0L:I

    if-eq p1, v0, :cond_1

    .line 8038
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0L:I

    .line 8039
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->A0g()V

    .line 8040
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/facebook/ads/redexgen/X/38;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8041
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0Z:Lcom/facebook/ads/redexgen/X/38;

    .line 8042
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 8043
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    .line 8044
    .local p0, "oldMargin":I
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0M:I

    .line 8045
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getWidth()I

    move-result v0

    .line 8046
    .local p1, "width":I
    invoke-direct {p0, v0, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/3D;->A0L(IIII)V

    .line 8047
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->requestLayout()V

    .line 8048
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 8049
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/2G;->A00(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8050
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 8051
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0S:Landroid/graphics/drawable/Drawable;

    .line 8052
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->refreshDrawableState()V

    .line 8053
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->setWillNotDraw(Z)V

    .line 8054
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3D;->invalidate()V

    .line 8055
    return-void

    .line 8056
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollState(I)V
    .locals 1

    .line 8057
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0P:I

    if-ne v0, p1, :cond_0

    .line 8058
    return-void

    .line 8059
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3D;->A0P:I

    .line 8060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3D;->A0a:Lcom/facebook/ads/redexgen/X/39;

    if-eqz v0, :cond_1

    .line 8061
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3D;->A0T(Z)V

    .line 8062
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3D;->A0G(I)V

    .line 8063
    return-void

    .line 8064
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 8068
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
