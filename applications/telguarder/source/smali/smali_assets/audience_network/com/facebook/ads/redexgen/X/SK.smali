.class public final Lcom/facebook/ads/redexgen/X/SK;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M8;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/SL;,
        Lcom/facebook/ads/redexgen/X/SM;
    }
.end annotation


# static fields
.field public static A0Q:[B

.field public static A0R:[Ljava/lang/String;

.field public static final A0S:I

.field public static final A0T:I

.field public static final A0U:I

.field public static final A0V:I

.field public static final A0W:I

.field public static final A0X:I

.field public static final A0Y:I

.field public static final A0Z:I

.field public static final A0a:I

.field public static final A0b:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Landroid/widget/Toast;

.field public A04:Lcom/facebook/ads/redexgen/X/50;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/Ry;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/redexgen/X/Oz;

.field public A07:Z

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/16;

.field public final A0A:Lcom/facebook/ads/redexgen/X/1U;

.field public final A0B:Lcom/facebook/ads/redexgen/X/4y;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0D:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0E:Lcom/facebook/ads/redexgen/X/JK;

.field public final A0F:Lcom/facebook/ads/redexgen/X/L8;

.field public final A0G:Lcom/facebook/ads/redexgen/X/LX;

.field public final A0H:Lcom/facebook/ads/redexgen/X/M7;

.field public final A0I:Lcom/facebook/ads/redexgen/X/MZ;

.field public final A0J:Lcom/facebook/ads/redexgen/X/P4;

.field public final A0K:Lcom/facebook/ads/redexgen/X/P5;

.field public final A0L:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0M:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0N:Z

.field public final A0O:Z

.field public final A0P:Lcom/facebook/ads/redexgen/X/M6;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 51869
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SK;->A0O()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SK;->A0N()V

    const/high16 v1, 0x42800000    # 64.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SK;->A0Z:I

    .line 51870
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SK;->A0U:I

    .line 51871
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SK;->A0a:I

    .line 51872
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SK;->A0S:I

    .line 51873
    const/4 v2, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/SK;->A0b:Landroid/widget/RelativeLayout$LayoutParams;

    .line 51874
    const/high16 v1, 0x42400000    # 48.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SK;->A0V:I

    .line 51875
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SK;->A0W:I

    .line 51876
    const/high16 v1, 0x41600000    # 14.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SK;->A0Y:I

    .line 51877
    const/16 v0, 0x4d

    .line 51878
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/SK;->A0X:I

    .line 51879
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SK;->A0T:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MZ;)V
    .locals 5
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51880
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51881
    new-instance v0, Lcom/facebook/ads/redexgen/X/SQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SQ;-><init>(Lcom/facebook/ads/redexgen/X/SK;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0B:Lcom/facebook/ads/redexgen/X/4y;

    .line 51882
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0M:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51883
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0L:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51884
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51885
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Lcom/facebook/ads/redexgen/X/M7;

    .line 51886
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    .line 51887
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 51888
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A06()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    .line 51889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/JK;

    .line 51890
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/SK;->A0I:Lcom/facebook/ads/redexgen/X/MZ;

    .line 51891
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SK;->A0I:Lcom/facebook/ads/redexgen/X/MZ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Lcom/facebook/ads/redexgen/X/M7;

    new-instance v0, Lcom/facebook/ads/redexgen/X/P5;

    invoke-direct {v0, p1, v2, p5, v1}, Lcom/facebook/ads/redexgen/X/P5;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/MZ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/M7;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0K:Lcom/facebook/ads/redexgen/X/P5;

    .line 51892
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0M:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0I()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    .line 51894
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A07()I

    move-result v3

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/SM;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/SM;-><init>(Lcom/facebook/ads/redexgen/X/SK;Lcom/facebook/ads/redexgen/X/SQ;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/L8;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/L8;-><init>(ILcom/facebook/ads/redexgen/X/L7;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/L8;

    .line 51895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1o(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0O:Z

    .line 51896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0j(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0N:Z

    .line 51897
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A05()Lcom/facebook/ads/redexgen/X/M6;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/M6;

    .line 51898
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    new-instance v0, Lcom/facebook/ads/redexgen/X/P4;

    invoke-direct {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/P4;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0J:Lcom/facebook/ads/redexgen/X/P4;

    .line 51899
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0O:Z

    if-eqz v0, :cond_1

    .line 51900
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v0

    .line 51901
    invoke-static {p1, p0, v0}, Lcom/facebook/ads/redexgen/X/Nq;->A00(Lcom/facebook/ads/redexgen/X/Wm;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 51902
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/LX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LX;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0G:Lcom/facebook/ads/redexgen/X/LX;

    .line 51903
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0G:Lcom/facebook/ads/redexgen/X/LX;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LW;->A02:Lcom/facebook/ads/redexgen/X/LW;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LX;->A06(Lcom/facebook/ads/redexgen/X/LW;)V

    .line 51904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/M6;->setProgressSpinnerInvisible(Z)V

    .line 51906
    :cond_0
    return-void

    .line 51907
    :cond_1
    const v0, -0xdcd8d1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 51908
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/1U;
    .locals 0

    .line 51909
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 51910
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 51911
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/JK;
    .locals 0

    .line 51912
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/JK;

    return-object p0
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/M6;
    .locals 10

    .line 51913
    new-instance v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/JK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 51914
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0E()I

    move-result v9

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/JK;II)V

    .line 51915
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/M6;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 51916
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setPageDetailsVisible(Z)V

    .line 51917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 51918
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 51919
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    .line 51920
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 51921
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0P()Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    .line 51922
    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setPageDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1Z;)V

    .line 51923
    new-instance v0, Lcom/facebook/ads/redexgen/X/SO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SO;-><init>(Lcom/facebook/ads/redexgen/X/SK;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarListener(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 51924
    return-object v4
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/M7;
    .locals 0

    .line 51925
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Lcom/facebook/ads/redexgen/X/M7;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/MZ;
    .locals 0

    .line 51926
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0I:Lcom/facebook/ads/redexgen/X/MZ;

    return-object p0
.end method

.method private A08()Lcom/facebook/ads/redexgen/X/Ry;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    if-eqz v0, :cond_0

    .line 51928
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    .line 51929
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    if-nez v0, :cond_1

    .line 51930
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/SK;
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 51931
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v7

    .line 51932
    .local p0, "colorInfo":Lcom/facebook/ads/redexgen/X/1I;
    new-instance v4, Lcom/facebook/ads/redexgen/X/Ry;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0I:Lcom/facebook/ads/redexgen/X/MZ;

    .line 51933
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A5w()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    .line 51934
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    .line 51935
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/Ry;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V

    .line 51936
    .local v0, "button":Lcom/facebook/ads/redexgen/X/Ry;
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 51937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Nh;->setText(Ljava/lang/String;)V

    .line 51938
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Ry;->setTextSize(F)V

    .line 51939
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Ry;->setIncludeFontPadding(Z)V

    .line 51940
    sget v0, Lcom/facebook/ads/redexgen/X/SK;->A0S:I

    invoke-virtual {v4, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Ry;->setPadding(IIII)V

    .line 51941
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0O:Z

    if-nez v0, :cond_2

    .line 51942
    const/16 v3, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0R:[Ljava/lang/String;

    const-string v1, "VZm"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "6iB63YmKB8AUwYU5DA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/Lj;->A0P(Landroid/view/View;I)V

    .line 51943
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/MI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MI;-><init>(Lcom/facebook/ads/redexgen/X/SK;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Ry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51944
    return-object v4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/Ry;
    .locals 0

    .line 51945
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A05:Lcom/facebook/ads/redexgen/X/Ry;

    return-object p0
.end method

.method private A0A()Lcom/facebook/ads/redexgen/X/Np;
    .locals 10

    .line 51946
    new-instance v3, Lcom/facebook/ads/redexgen/X/Np;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 51947
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v7, 0x10

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Np;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1I;ZIII)V

    .line 51948
    .local p0, "titleAndDescriptionContainer":Lcom/facebook/ads/redexgen/X/Np;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 51949
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 51950
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A05()Ljava/lang/String;

    move-result-object v5

    .line 51951
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Np;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 51952
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Np;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 51953
    .local v3, "descriptionTv":Landroid/widget/TextView;
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 51954
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 51955
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 51956
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Np;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 51957
    .local v0, "titleTv":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 51958
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 51959
    return-object v3
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/Oz;
    .locals 0

    .line 51960
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    return-object p0
.end method

.method public static A0C(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SK;->A0Q:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/SK;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 51961
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0M:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/SK;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 51962
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0L:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A0F()V
    .locals 21

    .line 51963
    sget v0, Lcom/facebook/ads/redexgen/X/SK;->A0V:I

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51964
    .local v5, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xf

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51965
    const/16 v0, 0x9

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51966
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Nj;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Nj;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51967
    .local v7, "iconView":Lcom/facebook/ads/redexgen/X/Nj;
    const/4 v1, 0x0

    invoke-static {v6, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 51968
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 51969
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v2, v6, v0}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    sget v0, Lcom/facebook/ads/redexgen/X/SK;->A0V:I

    .line 51970
    invoke-virtual {v2, v0, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A06(II)Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v2

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 51971
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 51972
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51973
    .local v0, "titleView":Landroid/widget/TextView;
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 51974
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51975
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 51976
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v3

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/1I;->A06(Z)I

    move-result v3

    .line 51977
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51978
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51979
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 51980
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 51981
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 51982
    new-instance v15, Lcom/facebook/ads/redexgen/X/Nl;

    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    sget v17, Lcom/facebook/ads/redexgen/X/SK;->A0Y:I

    sget v19, Lcom/facebook/ads/redexgen/X/SK;->A0X:I

    const/16 v18, 0x5

    const/16 v20, -0x1

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/Nl;-><init>(Lcom/facebook/ads/redexgen/X/Wm;IIII)V

    .line 51983
    .local v0, "starRatingContainer":Lcom/facebook/ads/redexgen/X/Nl;
    const/16 v11, 0x10

    invoke-virtual {v15, v11}, Lcom/facebook/ads/redexgen/X/Nl;->setGravity(I)V

    .line 51984
    const/4 v8, -0x1

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51985
    .local v2, "starRatingContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51986
    .local v2, "ratingCountView":Landroid/widget/TextView;
    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 51987
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/1I;->A06(Z)I

    move-result v4

    .line 51988
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51989
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 51990
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 51991
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51992
    .local v0, "ratingCountParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v4, Lcom/facebook/ads/redexgen/X/SK;->A0T:I

    iput v4, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 51993
    iget-object v8, v5, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51994
    .local v0, "ratingInfoContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51995
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 51996
    sget v8, Lcom/facebook/ads/redexgen/X/SK;->A0W:I

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51997
    .local v0, "ratingInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v8, Lcom/facebook/ads/redexgen/X/SK;->A0T:I

    div-int/lit8 v8, v8, 0x2

    iput v8, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 51998
    invoke-virtual {v9}, Landroid/widget/TextView;->getId()I

    move-result v12

    const/4 v8, 0x3

    invoke-virtual {v11, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 51999
    invoke-virtual {v4, v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52000
    invoke-virtual {v4, v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52001
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52002
    .local v6, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SK;->A0T:I

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 52003
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Nj;->getId()I

    move-result v0

    invoke-virtual {v8, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52004
    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52005
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/SK;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52006
    .local v0, "titleAndRatingContainer":Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v4, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52007
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 52008
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/SK;->A02:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 52009
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 52010
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/SK;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52011
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/SK;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52012
    :cond_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52013
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52014
    .end local v10
    :cond_1
    :goto_0
    return-void

    .line 52015
    :cond_2
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52016
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 52017
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 52018
    invoke-virtual {v15, v0}, Lcom/facebook/ads/redexgen/X/Nl;->setRating(F)V

    .line 52019
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52020
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52021
    .local v10, "ratingSB":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52022
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 52023
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 52024
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52025
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52026
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private A0G()V
    .locals 2

    .line 52027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52028
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0I()V

    .line 52029
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 52030
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0G:Lcom/facebook/ads/redexgen/X/LX;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LW;->A03:Lcom/facebook/ads/redexgen/X/LW;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LX;->A06(Lcom/facebook/ads/redexgen/X/LW;)V

    .line 52031
    :cond_0
    return-void

    .line 52032
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0L()V

    goto :goto_0
.end method

.method private A0H()V
    .locals 7

    .line 52033
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A08:Z

    .line 52034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0K:Lcom/facebook/ads/redexgen/X/P5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P5;->A05()V

    .line 52036
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0I:Lcom/facebook/ads/redexgen/X/MZ;

    .line 52037
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A5T()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/7w;-><init>(II)V

    .line 52038
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3q(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 52039
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A07:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0O:Z

    if-nez v0, :cond_0

    .line 52040
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    .line 52041
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    .line 52042
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 52043
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 52044
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v6

    .line 52045
    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Ne;->A04(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;)V

    .line 52046
    :cond_0
    return-void
.end method

.method private A0I()V
    .locals 4

    .line 52047
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 52048
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Od;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Od;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 52049
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Od;->A08(Lcom/facebook/ads/redexgen/X/1I;)Lcom/facebook/ads/redexgen/X/Od;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    .line 52050
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Od;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Od;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    .line 52051
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Od;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Od;

    move-result-object v1

    .line 52052
    const/16 v0, 0x7d0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Od;->A07(I)Lcom/facebook/ads/redexgen/X/Od;

    move-result-object v0

    .line 52053
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Od;->A0B()Lcom/facebook/ads/redexgen/X/Of;

    move-result-object v2

    .line 52054
    .local p0, "introView":Lcom/facebook/ads/redexgen/X/Of;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0E:Lcom/facebook/ads/redexgen/X/JK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0T:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 52055
    sget-object v0, Lcom/facebook/ads/redexgen/X/SK;->A0b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/SK;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52056
    new-instance v0, Lcom/facebook/ads/redexgen/X/SP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SP;-><init>(Lcom/facebook/ads/redexgen/X/SK;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Of;->A04(Lcom/facebook/ads/redexgen/X/Oe;)V

    .line 52057
    return-void
.end method

.method private A0J()V
    .locals 8

    .line 52058
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A08()Lcom/facebook/ads/redexgen/X/Ry;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A05:Lcom/facebook/ads/redexgen/X/Ry;

    .line 52059
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SK;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:Landroid/widget/RelativeLayout;

    .line 52060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 52061
    const/4 v6, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52062
    .local p0, "appMetadataLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/SK;->A0U:I

    sget v0, Lcom/facebook/ads/redexgen/X/SK;->A0a:I

    invoke-virtual {v3, v1, v0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52063
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52064
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SK;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:Landroid/widget/RelativeLayout;

    .line 52065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 52066
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0N:Z

    if-eqz v0, :cond_2

    .line 52067
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0F()V

    .line 52068
    :goto_0
    const/4 v7, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52069
    .local v1, "iconAndMetaDataContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SK;->A0U:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52070
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A05:Lcom/facebook/ads/redexgen/X/Ry;

    if-eqz v0, :cond_0

    .line 52072
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ry;->getId()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52073
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52074
    .local v0, "ctaButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52075
    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52076
    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52077
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A05:Lcom/facebook/ads/redexgen/X/Ry;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52078
    .end local v0    # "ctaButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 52079
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52080
    .local v0, "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52081
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52082
    .local v0, "adWebViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SK;->A0U:I

    invoke-virtual {v2, v0, v5, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52083
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M6;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52084
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/M6;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/M6;->setVisibility(I)V

    .line 52086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Oz;->setVisibility(I)V

    .line 52087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 52088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/SK;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/SK;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/SK;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A0C()V

    .line 52093
    :cond_1
    return-void

    .line 52094
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:Landroid/widget/RelativeLayout;

    .line 52095
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0A()Lcom/facebook/ads/redexgen/X/Np;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52096
    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private A0K()V
    .locals 6

    .line 52097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 52098
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v2, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 52099
    .local p0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0o:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 52100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0L:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52101
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    .line 52102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 52103
    const/4 v5, 0x2

    new-array v1, v5, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A00:Landroid/view/View;

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0b([Landroid/view/View;)V

    .line 52104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0N(Landroid/view/View;)V

    .line 52105
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0J:Lcom/facebook/ads/redexgen/X/P4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A05:Lcom/facebook/ads/redexgen/X/Ry;

    .line 52106
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A03(Lcom/facebook/ads/redexgen/X/Ry;)Landroid/util/Pair;

    move-result-object v2

    .line 52107
    .local v0, "endCard":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/view/rewardedvideo/EndCardController$EndCardViewType;Landroid/view/View;>;"
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A00:Landroid/view/View;

    .line 52108
    sget-object v1, Lcom/facebook/ads/redexgen/X/MJ;->A00:[I

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/P3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P3;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v2, -0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_0

    .line 52109
    .end local v1
    :goto_0
    return-void

    .line 52110
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 52111
    new-array v0, v4, [Landroid/view/View;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0b([Landroid/view/View;)V

    .line 52112
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52113
    .local v0, "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/SK;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 52114
    .end local v0    # "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52115
    .local v1, "screenshotParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M6;->getToolbarHeight()I

    move-result v0

    invoke-virtual {v4, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 52117
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52118
    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SK;->A00:Landroid/view/View;

    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0R:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0R:[Ljava/lang/String;

    const-string v1, "qNCG6dDJsAPFbWTySRxInyS8ppXyMF33"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "jWdNFAVobp8QAHjjZXwWCxlFqJ2u0nxR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/SK;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52119
    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0L()V
    .locals 2

    .line 52120
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    .line 52121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0J()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A0C()V

    .line 52123
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/M6;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/M6;->setVisibility(I)V

    .line 52124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Oz;->setVisibility(I)V

    .line 52125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 52126
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 52127
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A07()Z

    .line 52128
    return-void
.end method

.method private A0M()V
    .locals 3

    .line 52129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A03:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 52130
    return-void

    .line 52131
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SK;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0C()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A03:Landroid/widget/Toast;

    .line 52132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A03()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0P(I)V

    .line 52133
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A03:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52134
    return-void
.end method

.method public static A0N()V
    .locals 1

    const/16 v0, 0x50

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SK;->A0Q:[B

    return-void

    :array_0
    .array-data 1
        0x32t
        0x7dt
        0x27t
        0xft
        0x19t
        0x1ft
        0xft
        0x21t
        0x43t
        0x4ct
        0x49t
        0x43t
        0x4bt
        0x7ft
        0x4ft
        0x52t
        0x49t
        0x47t
        0x49t
        0x4et
        0x3bt
        0x3ct
        0x26t
        0x37t
        0x20t
        0x21t
        0x26t
        0x3bt
        0x26t
        0x3bt
        0x33t
        0x3et
        0x2t
        0xdt
        0x18t
        0x5t
        0x1at
        0x9t
        0x33t
        0xft
        0x0t
        0x5t
        0xft
        0x7t
        0x27t
        0x3bt
        0x36t
        0x34t
        0x32t
        0x3at
        0x32t
        0x39t
        0x23t
        0x4bt
        0x5ct
        0x4et
        0x58t
        0x4bt
        0x5dt
        0x5ct
        0x5dt
        0x66t
        0x4ft
        0x50t
        0x5dt
        0x5ct
        0x56t
        0x46t
        0x54t
        0x53t
        0x47t
        0x58t
        0x54t
        0x46t
        0x6et
        0x52t
        0x5dt
        0x58t
        0x52t
        0x5at
    .end array-data
.end method

.method public static A0O()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HOR7o31Iej4cYWuhQXExnEuENMywT0cc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lMe4cl58LNQGNUAHyasApQ9JUE0svDiV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "D3sd2x1kxAGmbwUwbgSwAdGIbJmc5gOO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0qcoppWNPh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "IKOWodR4Z8ze5gnDmb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KTSiIx6w"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wnW3I4EzpNnUTo4gipPMifUFglZZiY67"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "f8O"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0R:[Ljava/lang/String;

    return-void
.end method

.method private A0P(I)V
    .locals 6

    .line 52135
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 52136
    .local p0, "progress":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SK;->A03:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    .line 52137
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0C()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x6

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcom/facebook/ads/redexgen/X/SK;->A0Z:I

    .line 52138
    const/16 v1, 0x31

    const/4 v0, 0x0

    invoke-static {v4, v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Lj;->A0a(Landroid/widget/Toast;Ljava/lang/String;III)V

    .line 52139
    return-void
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/SK;)V
    .locals 0

    .line 52140
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0M()V

    return-void
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/SK;)V
    .locals 0

    .line 52141
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0H()V

    return-void
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/SK;)V
    .locals 0

    .line 52142
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0L()V

    return-void
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/SK;)V
    .locals 0

    .line 52143
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0K()V

    return-void
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/SK;I)V
    .locals 0

    .line 52144
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SK;->A0P(I)V

    return-void
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/SK;Z)V
    .locals 0

    .line 52145
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SK;->A0W(Z)V

    return-void
.end method

.method private A0W(Z)V
    .locals 12

    .line 52146
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 52147
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    const/16 v2, 0x43

    const/16 v1, 0xd

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0C(III)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/16 v2, 0x8

    const/16 v1, 0xc

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52148
    new-instance v5, Lcom/facebook/ads/redexgen/X/Ne;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0I:Lcom/facebook/ads/redexgen/X/MZ;

    .line 52149
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A5w()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    .line 52150
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    .line 52151
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v9

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Lcom/facebook/ads/redexgen/X/M7;

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Ne;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;)V

    .line 52152
    .local p1, "helper":Lcom/facebook/ads/redexgen/X/Ne;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0O:Z

    if-eqz v0, :cond_0

    .line 52153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 52154
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    .line 52155
    invoke-virtual {v5, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ne;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 52156
    .end local v3
    :goto_1
    return-void

    .line 52157
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A04()Z

    move-result v4

    const/4 v2, 0x1

    xor-int/2addr v4, v2

    .line 52158
    .local v3, "skipRedirect":Z
    if-nez v4, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Ne;->A0B(Z)V

    .line 52159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 52160
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    .line 52161
    invoke-virtual {v5, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ne;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 52162
    if-eqz v4, :cond_1

    .line 52163
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/SN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SN;-><init>(Lcom/facebook/ads/redexgen/X/SK;)V

    .line 52164
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52165
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/SK;->A07:Z

    goto :goto_1

    .line 52166
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 52167
    :cond_3
    const/16 v5, 0x20

    const/16 v4, 0xc

    sget-object v1, Lcom/facebook/ads/redexgen/X/SK;->A0R:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/SK;->A0R:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x7

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0C(III)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private A0X()Z
    .locals 4

    .line 52168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x35

    const/16 v1, 0xe

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 52169
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x14

    const/16 v1, 0xc

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 52170
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0N()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 52171
    :goto_0
    return v0

    .line 52172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0Y(Lcom/facebook/ads/redexgen/X/SK;)Z
    .locals 0

    .line 52173
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A08:Z

    return p0
.end method

.method public static synthetic A0Z(Lcom/facebook/ads/redexgen/X/SK;)Z
    .locals 0

    .line 52174
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0O:Z

    return p0
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/SK;)Z
    .locals 0

    .line 52175
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0N:Z

    return p0
.end method

.method public static synthetic A0b(Lcom/facebook/ads/redexgen/X/SK;)Z
    .locals 0

    .line 52176
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0X()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A8L(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 8

    .line 52177
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SK;->A04:Lcom/facebook/ads/redexgen/X/50;

    .line 52178
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A04:Lcom/facebook/ads/redexgen/X/50;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0B:Lcom/facebook/ads/redexgen/X/4y;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A0L(Lcom/facebook/ads/redexgen/X/4y;)V

    .line 52179
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 52180
    .local p0, "playableMetricData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0I:Lcom/facebook/ads/redexgen/X/MZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A6y()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2c

    const/16 v1, 0x9

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A06()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v4

    .line 52182
    .local v3, "playableAdData":Lcom/facebook/ads/redexgen/X/1U;
    if-nez v4, :cond_0

    .line 52183
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0I:Lcom/facebook/ads/redexgen/X/MZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A6Q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3p(Ljava/lang/String;)V

    .line 52184
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0I:Lcom/facebook/ads/redexgen/X/MZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A6L()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3p(Ljava/lang/String;)V

    .line 52185
    return-void

    .line 52186
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Oz;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SK;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    const/4 v0, 0x0

    new-instance v6, Lcom/facebook/ads/redexgen/X/SL;

    invoke-direct {v6, p0, v0}, Lcom/facebook/ads/redexgen/X/SL;-><init>(Lcom/facebook/ads/redexgen/X/SK;Lcom/facebook/ads/redexgen/X/SQ;)V

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Oz;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/1U;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Ox;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    .line 52187
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0J()V

    .line 52188
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52189
    .local p1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0H:Lcom/facebook/ads/redexgen/X/M7;

    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/M7;->A3I(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 52190
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;->A0G()V

    .line 52191
    return-void
.end method

.method public final AB2(Z)V
    .locals 1

    .line 52192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A06()Z

    .line 52193
    return-void
.end method

.method public final ABR(Z)V
    .locals 1

    .line 52194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0M:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A05()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A07()Z

    .line 52196
    :cond_0
    return-void
.end method

.method public final ADU(Landroid/os/Bundle;)V
    .locals 0

    .line 52197
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 52198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0G:Lcom/facebook/ads/redexgen/X/LX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LX;->A04()V

    .line 52199
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A04:Lcom/facebook/ads/redexgen/X/50;

    if-eqz v1, :cond_0

    .line 52200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0B:Lcom/facebook/ads/redexgen/X/4y;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A0M(Lcom/facebook/ads/redexgen/X/4y;)V

    .line 52201
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    if-eqz v0, :cond_2

    .line 52202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52203
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SK;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 52204
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NX;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    .line 52205
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    .line 52206
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 52207
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v0

    .line 52208
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8U(Ljava/lang/String;Ljava/util/Map;)V

    .line 52209
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A0D()V

    .line 52210
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A0F:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A06()Z

    .line 52211
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/M6;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setToolbarListener(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 52212
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A03:Landroid/widget/Toast;

    .line 52213
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A04:Lcom/facebook/ads/redexgen/X/50;

    .line 52214
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 52215
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 52216
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 52217
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SK;->ABR(Z)V

    .line 52218
    :goto_0
    return-void

    .line 52219
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SK;->AB2(Z)V

    goto :goto_0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/M7;)V
    .locals 0

    .line 52220
    return-void
.end method
