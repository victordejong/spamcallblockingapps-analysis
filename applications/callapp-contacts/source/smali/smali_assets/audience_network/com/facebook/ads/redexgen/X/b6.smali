.class public final Lcom/facebook/ads/redexgen/X/b6;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MA;


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
        Lcom/facebook/ads/redexgen/X/b7;,
        Lcom/facebook/ads/redexgen/X/bO;
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

.field public A05:Lcom/facebook/ads/redexgen/X/a7;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/redexgen/X/P4;

.field public A07:Z

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/16;

.field public final A0A:Lcom/facebook/ads/redexgen/X/1U;

.field public final A0B:Lcom/facebook/ads/redexgen/X/4y;

.field public final A0C:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A0D:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0E:Lcom/facebook/ads/redexgen/X/JJ;

.field public final A0F:Lcom/facebook/ads/redexgen/X/L6;

.field public final A0G:Lcom/facebook/ads/redexgen/X/LV;

.field public final A0H:Lcom/facebook/ads/redexgen/X/M9;

.field public final A0I:Lcom/facebook/ads/redexgen/X/Me;

.field public final A0J:Lcom/facebook/ads/redexgen/X/P9;

.field public final A0K:Lcom/facebook/ads/redexgen/X/PA;

.field public final A0L:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0M:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0N:Z

.field public final A0O:Z

.field public final A0P:Lcom/facebook/ads/redexgen/X/M4;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 69078
    invoke-static {}, Lcom/facebook/ads/redexgen/X/b6;->A0N()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/b6;->A0M()V

    const/high16 v1, 0x42800000    # 64.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/b6;->A0Z:I

    .line 69079
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/b6;->A0U:I

    .line 69080
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/b6;->A0a:I

    .line 69081
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/b6;->A0S:I

    .line 69082
    const/4 v2, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/b6;->A0b:Landroid/widget/RelativeLayout$LayoutParams;

    .line 69083
    const/high16 v1, 0x42400000    # 48.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/b6;->A0V:I

    .line 69084
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/b6;->A0W:I

    .line 69085
    const/high16 v1, 0x41600000    # 14.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/b6;->A0Y:I

    .line 69086
    const/16 v0, 0x4d

    .line 69087
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/b6;->A0X:I

    .line 69088
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/b6;->A0T:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Me;)V
    .locals 4
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69089
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 69090
    new-instance v0, Lcom/facebook/ads/redexgen/X/bX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bX;-><init>(Lcom/facebook/ads/redexgen/X/b6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0B:Lcom/facebook/ads/redexgen/X/4y;

    .line 69091
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0M:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69092
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0L:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69093
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 69094
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/b6;->A0H:Lcom/facebook/ads/redexgen/X/M9;

    .line 69095
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/b6;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    .line 69096
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69097
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A06()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    .line 69098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0E:Lcom/facebook/ads/redexgen/X/JJ;

    .line 69099
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/b6;->A0I:Lcom/facebook/ads/redexgen/X/Me;

    .line 69100
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/b6;->A0I:Lcom/facebook/ads/redexgen/X/Me;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0H:Lcom/facebook/ads/redexgen/X/M9;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PA;

    invoke-direct {v0, p1, v2, p5, v1}, Lcom/facebook/ads/redexgen/X/PA;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Me;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/M9;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0K:Lcom/facebook/ads/redexgen/X/PA;

    .line 69101
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0M:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0J()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 69102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    .line 69103
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A08()I

    move-result v2

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/bO;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/bO;-><init>(Lcom/facebook/ads/redexgen/X/b6;Lcom/facebook/ads/redexgen/X/bX;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/L6;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/L6;-><init>(ILcom/facebook/ads/redexgen/X/L5;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0F:Lcom/facebook/ads/redexgen/X/L6;

    .line 69104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1p(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0O:Z

    .line 69105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0i(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0N:Z

    .line 69106
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A05()Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0P:Lcom/facebook/ads/redexgen/X/M4;

    .line 69107
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/b6;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    new-instance v0, Lcom/facebook/ads/redexgen/X/P9;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/P9;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0J:Lcom/facebook/ads/redexgen/X/P9;

    .line 69108
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0O:Z

    if-eqz v0, :cond_0

    .line 69109
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v0

    .line 69110
    invoke-static {p1, p0, v0}, Lcom/facebook/ads/redexgen/X/Nv;->A00(Lcom/facebook/ads/redexgen/X/XJ;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 69111
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/LV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LV;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0G:Lcom/facebook/ads/redexgen/X/LV;

    .line 69112
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0G:Lcom/facebook/ads/redexgen/X/LV;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LU;->A03:Lcom/facebook/ads/redexgen/X/LU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A05(Lcom/facebook/ads/redexgen/X/LU;)V

    .line 69113
    return-void

    .line 69114
    :cond_0
    const v0, -0xdcd8d1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 69115
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/1U;
    .locals 0

    .line 69116
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 69117
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 69118
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/JJ;
    .locals 0

    .line 69119
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0E:Lcom/facebook/ads/redexgen/X/JJ;

    return-object p0
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/M4;
    .locals 10

    .line 69120
    new-instance v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/b6;->A0H:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/b6;->A0E:Lcom/facebook/ads/redexgen/X/JJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69121
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0F()I

    move-result v9

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/JJ;II)V

    .line 69122
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/M4;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 69123
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setPageDetailsVisible(Z)V

    .line 69124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69125
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69126
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    .line 69127
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A08()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69128
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    .line 69129
    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setPageDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1Z;)V

    .line 69130
    new-instance v0, Lcom/facebook/ads/redexgen/X/bR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bR;-><init>(Lcom/facebook/ads/redexgen/X/b6;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarListener(Lcom/facebook/ads/redexgen/X/M3;)V

    .line 69131
    return-object v4
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/M9;
    .locals 0

    .line 69132
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0H:Lcom/facebook/ads/redexgen/X/M9;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/Me;
    .locals 0

    .line 69133
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0I:Lcom/facebook/ads/redexgen/X/Me;

    return-object p0
.end method

.method private A08()Lcom/facebook/ads/redexgen/X/a7;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 69134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    if-eqz v0, :cond_0

    .line 69135
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    .line 69136
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    if-nez v0, :cond_1

    .line 69137
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/b6;
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 69138
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v4

    .line 69139
    .local p0, "colorInfo":Lcom/facebook/ads/redexgen/X/1I;
    new-instance v1, Lcom/facebook/ads/redexgen/X/a7;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0I:Lcom/facebook/ads/redexgen/X/Me;

    .line 69140
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Me;->A5w()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/b6;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/b6;->A0H:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    .line 69141
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    .line 69142
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/a7;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V

    .line 69143
    .local v0, "button":Lcom/facebook/ads/redexgen/X/a7;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 69144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nm;->setText(Ljava/lang/String;)V

    .line 69145
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a7;->setTextSize(F)V

    .line 69146
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a7;->setIncludeFontPadding(Z)V

    .line 69147
    sget v0, Lcom/facebook/ads/redexgen/X/b6;->A0S:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/a7;->setPadding(IIII)V

    .line 69148
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0O:Z

    if-nez v0, :cond_2

    .line 69149
    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Q(Landroid/view/View;I)V

    .line 69150
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/MK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MK;-><init>(Lcom/facebook/ads/redexgen/X/b6;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a7;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69151
    return-object v1
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/a7;
    .locals 0

    .line 69152
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A05:Lcom/facebook/ads/redexgen/X/a7;

    return-object p0
.end method

.method private A0A()Lcom/facebook/ads/redexgen/X/Nu;
    .locals 10

    .line 69153
    new-instance v3, Lcom/facebook/ads/redexgen/X/Nu;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69154
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v7, 0x10

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Nu;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1I;ZIII)V

    .line 69155
    .local p0, "titleAndDescriptionContainer":Lcom/facebook/ads/redexgen/X/Nu;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69156
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69157
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A05()Ljava/lang/String;

    move-result-object v5

    .line 69158
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 69159
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nu;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 69160
    .local v3, "descriptionTv":Landroid/widget/TextView;
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 69161
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 69162
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 69163
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nu;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 69164
    .local v0, "titleTv":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 69165
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 69166
    return-object v3
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/b6;)Lcom/facebook/ads/redexgen/X/P4;
    .locals 0

    .line 69167
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    return-object p0
.end method

.method public static A0C(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/b6;->A0Q:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x28

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/b6;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 69168
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0M:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/b6;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 69169
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0L:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A0F()V
    .locals 21

    .line 69170
    sget v0, Lcom/facebook/ads/redexgen/X/b6;->A0V:I

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69171
    .local v5, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69172
    const/16 v0, 0x9

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69173
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v7, Lcom/facebook/ads/redexgen/X/No;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/No;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 69174
    .local v8, "iconView":Lcom/facebook/ads/redexgen/X/No;
    const/4 v2, 0x0

    invoke-static {v7, v2}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 69175
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 69176
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XJ;)V

    sget v0, Lcom/facebook/ads/redexgen/X/b6;->A0V:I

    .line 69177
    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/aA;->A06(II)Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69178
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    .line 69179
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69180
    .local v0, "titleView":Landroid/widget/TextView;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 69181
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69182
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69183
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/1I;->A06(Z)I

    move-result v3

    .line 69184
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69185
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69186
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69187
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 69188
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 69189
    new-instance v15, Lcom/facebook/ads/redexgen/X/Nq;

    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    sget v17, Lcom/facebook/ads/redexgen/X/b6;->A0Y:I

    sget v19, Lcom/facebook/ads/redexgen/X/b6;->A0X:I

    const/16 v18, 0x5

    const/16 v20, -0x1

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/Nq;-><init>(Lcom/facebook/ads/redexgen/X/XJ;IIII)V

    .line 69190
    .local v0, "starRatingContainer":Lcom/facebook/ads/redexgen/X/Nq;
    const/16 v11, 0x10

    invoke-virtual {v15, v11}, Lcom/facebook/ads/redexgen/X/Nq;->setGravity(I)V

    .line 69191
    const/4 v10, -0x1

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v0, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69192
    .local v1, "starRatingContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69193
    .local v1, "ratingCountView":Landroid/widget/TextView;
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69194
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/1I;->A06(Z)I

    move-result v6

    .line 69195
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69196
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 69197
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 69198
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v0, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69199
    .local v0, "ratingCountParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v6, Lcom/facebook/ads/redexgen/X/b6;->A0T:I

    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 69200
    iget-object v10, v5, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69201
    .local v0, "ratingInfoContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69202
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 69203
    sget v10, Lcom/facebook/ads/redexgen/X/b6;->A0W:I

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69204
    .local v0, "ratingInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v10, Lcom/facebook/ads/redexgen/X/b6;->A0T:I

    div-int/lit8 v10, v10, 0x2

    iput v10, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 69205
    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v11

    const/4 v10, 0x3

    invoke-virtual {v12, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69206
    invoke-virtual {v6, v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69207
    invoke-virtual {v6, v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69208
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69209
    .local v7, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/b6;->A0T:I

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 69210
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/No;->getId()I

    move-result v0

    invoke-virtual {v11, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69211
    invoke-virtual {v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69212
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/b6;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-direct {v10, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 69213
    .local v0, "titleAndRatingContainer":Landroid/widget/RelativeLayout;
    invoke-virtual {v10, v6, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69214
    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 69215
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/b6;->A02:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 69216
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 69217
    iget-object v9, v5, Lcom/facebook/ads/redexgen/X/b6;->A02:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/facebook/ads/redexgen/X/b6;->A0R:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/b6;->A0R:[Ljava/lang/String;

    const-string v1, "bsFsSO04IJ4eZVQxRT"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69218
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/b6;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69219
    :cond_1
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69220
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69221
    .end local v9
    :cond_2
    :goto_0
    return-void

    .line 69222
    :cond_3
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69223
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69224
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 69225
    invoke-virtual {v15, v0}, Lcom/facebook/ads/redexgen/X/Nq;->setRating(F)V

    .line 69226
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 69227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69228
    .local v9, "ratingSB":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69229
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69230
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 69231
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69232
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69233
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private A0G()V
    .locals 2

    .line 69234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69235
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A0I()V

    .line 69236
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 69237
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0G:Lcom/facebook/ads/redexgen/X/LV;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LU;->A04:Lcom/facebook/ads/redexgen/X/LU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A05(Lcom/facebook/ads/redexgen/X/LU;)V

    .line 69238
    :cond_0
    return-void

    .line 69239
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A0J()V

    goto :goto_0
.end method

.method private A0H()V
    .locals 7

    .line 69240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A08:Z

    .line 69241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0K:Lcom/facebook/ads/redexgen/X/PA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PA;->A06()V

    .line 69243
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/b6;->A0H:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0I:Lcom/facebook/ads/redexgen/X/Me;

    .line 69244
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Me;->A5T()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/7w;-><init>(II)V

    .line 69245
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/M9;->A3u(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 69246
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A07:Z

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/b6;->A0O:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/b6;->A0R:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/b6;->A0R:[Ljava/lang/String;

    const-string v1, "I0JtICznoezMzS0InHXj65Cim"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "YxqOCBuXvZfwM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 69247
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    .line 69248
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    .line 69249
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/b6;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69250
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69251
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v6

    .line 69252
    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Nj;->A03(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;)V

    .line 69253
    :cond_1
    return-void
.end method

.method private A0I()V
    .locals 4

    .line 69254
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69255
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Oi;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Oi;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69256
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oi;->A08(Lcom/facebook/ads/redexgen/X/1I;)Lcom/facebook/ads/redexgen/X/Oi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    .line 69257
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oi;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Oi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    .line 69258
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oi;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Oi;

    move-result-object v1

    .line 69259
    const/16 v0, 0x7d0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oi;->A07(I)Lcom/facebook/ads/redexgen/X/Oi;

    move-result-object v0

    .line 69260
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oi;->A0B()Lcom/facebook/ads/redexgen/X/Ok;

    move-result-object v2

    .line 69261
    .local p0, "introView":Lcom/facebook/ads/redexgen/X/Ok;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0E:Lcom/facebook/ads/redexgen/X/JJ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0U:Lcom/facebook/ads/redexgen/X/JI;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/JJ;Lcom/facebook/ads/redexgen/X/JI;)V

    .line 69262
    sget-object v0, Lcom/facebook/ads/redexgen/X/b6;->A0b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/b6;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69263
    new-instance v0, Lcom/facebook/ads/redexgen/X/bU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bU;-><init>(Lcom/facebook/ads/redexgen/X/b6;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ok;->A04(Lcom/facebook/ads/redexgen/X/Oj;)V

    .line 69264
    return-void
.end method

.method private A0J()V
    .locals 8

    .line 69265
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    .line 69266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->A0C()V

    .line 69267
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A08()Lcom/facebook/ads/redexgen/X/a7;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A05:Lcom/facebook/ads/redexgen/X/a7;

    .line 69268
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/b6;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A01:Landroid/widget/RelativeLayout;

    .line 69269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 69270
    const/4 v6, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69271
    .local p0, "appMetadataLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/b6;->A0U:I

    sget v0, Lcom/facebook/ads/redexgen/X/b6;->A0a:I

    invoke-virtual {v3, v1, v0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 69272
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69273
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/b6;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A02:Landroid/widget/RelativeLayout;

    .line 69274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 69275
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0N:Z

    if-eqz v0, :cond_1

    .line 69276
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A0F()V

    .line 69277
    :goto_0
    const/4 v7, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69278
    .local v0, "iconAndMetaDataContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/b6;->A0U:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 69279
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A05:Lcom/facebook/ads/redexgen/X/a7;

    if-eqz v0, :cond_0

    .line 69281
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a7;->getId()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69282
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69283
    .local v0, "ctaButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69284
    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69285
    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69286
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A05:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69287
    .end local v0    # "ctaButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0P:Lcom/facebook/ads/redexgen/X/M4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 69288
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69289
    .local v0, "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69290
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69291
    .local v1, "adWebViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/b6;->A0U:I

    invoke-virtual {v2, v0, v5, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 69292
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0P:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M4;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69293
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0P:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/b6;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/b6;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/b6;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0F:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A08()Z

    .line 69298
    return-void

    .line 69299
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/b6;->A02:Landroid/widget/RelativeLayout;

    .line 69300
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A0A()Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69301
    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private A0K()V
    .locals 6

    .line 69302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69303
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v2, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 69304
    .local p0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A0n:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 69305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0L:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 69306
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    .line 69307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 69308
    const/4 v4, 0x2

    new-array v1, v4, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A00:Landroid/view/View;

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0e([Landroid/view/View;)V

    .line 69309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0P:Lcom/facebook/ads/redexgen/X/M4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0O(Landroid/view/View;)V

    .line 69310
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0J:Lcom/facebook/ads/redexgen/X/P9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A05:Lcom/facebook/ads/redexgen/X/a7;

    .line 69311
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P9;->A03(Lcom/facebook/ads/redexgen/X/a7;)Landroid/util/Pair;

    move-result-object v2

    .line 69312
    .local v0, "endCard":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/view/rewardedvideo/EndCardController$EndCardViewType;Landroid/view/View;>;"
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A00:Landroid/view/View;

    .line 69313
    sget-object v1, Lcom/facebook/ads/redexgen/X/ML;->A00:[I

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/P8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P8;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v2, -0x1

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_0

    .line 69314
    .end local v1
    :goto_0
    return-void

    .line 69315
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A01:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 69316
    new-array v0, v5, [Landroid/view/View;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0e([Landroid/view/View;)V

    .line 69317
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69318
    .local v0, "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/b6;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 69319
    .end local v0    # "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69320
    .local v1, "screenshotParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0P:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M4;->getToolbarHeight()I

    move-result v0

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 69321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A01:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 69322
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69323
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/b6;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69324
    goto :goto_0
.end method

.method private A0L()V
    .locals 3

    .line 69325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A03:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 69326
    return-void

    .line 69327
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/b6;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0D()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A03:Landroid/widget/Toast;

    .line 69328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0F:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A04()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0O(I)V

    .line 69329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A03:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69330
    return-void
.end method

.method public static A0M()V
    .locals 1

    const/16 v0, 0x50

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/b6;->A0Q:[B

    return-void

    :array_0
    .array-data 1
        -0x6et
        -0x61t
        -0x5et
        -0x46t
        -0x54t
        -0x56t
        -0x46t
        -0x5ct
        0x4t
        0xdt
        0xat
        0x4t
        0xct
        0x0t
        0x10t
        0x13t
        0xat
        0x8t
        0xat
        0xft
        -0x47t
        -0x42t
        -0x3ct
        -0x4bt
        -0x3et
        -0x3dt
        -0x3ct
        -0x47t
        -0x3ct
        -0x47t
        -0x4ft
        -0x44t
        -0x6t
        -0x13t
        0x0t
        -0xbt
        0x2t
        -0xft
        -0x15t
        -0x11t
        -0x8t
        -0xbt
        -0x11t
        -0x9t
        -0x35t
        -0x39t
        -0x44t
        -0x42t
        -0x40t
        -0x38t
        -0x40t
        -0x37t
        -0x31t
        -0x29t
        -0x36t
        -0x24t
        -0x3at
        -0x29t
        -0x37t
        -0x36t
        -0x37t
        -0x3ct
        -0x25t
        -0x32t
        -0x37t
        -0x36t
        -0x2ct
        -0x3ct
        -0x4et
        -0x51t
        -0x3dt
        -0x4at
        -0x4et
        -0x3ct
        -0x54t
        -0x50t
        -0x47t
        -0x4at
        -0x50t
        -0x48t
    .end array-data
.end method

.method public static A0N()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "57rzzR6raHrat8cHk0n2c9utIvWN6OL8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vZo4DQACnHxpUIABCEPhLIrXR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3pKkUgRnbq5D8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3oPHUcYdGBLGT6sjvwgTS6nCZs8dHXKK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yMOWmEDq6oq3Yf8aoY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BRjJ0geTmUVj6Aeo1VqVThKYcHpwhF7A"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bCnfD5Zsza6fNT9UI62TNCVdI9Gt63Qd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0XbQU4AacrxlEwxF12eBigHvJ8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/b6;->A0R:[Ljava/lang/String;

    return-void
.end method

.method private A0O(I)V
    .locals 6

    .line 69331
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 69332
    .local p0, "progress":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/b6;->A03:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0A:Lcom/facebook/ads/redexgen/X/1U;

    .line 69333
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0D()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x6

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcom/facebook/ads/redexgen/X/b6;->A0Z:I

    .line 69334
    const/16 v1, 0x31

    const/4 v0, 0x0

    invoke-static {v4, v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Lh;->A0d(Landroid/widget/Toast;Ljava/lang/String;III)V

    .line 69335
    return-void
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/b6;)V
    .locals 0

    .line 69336
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A0L()V

    return-void
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/b6;)V
    .locals 0

    .line 69337
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A0H()V

    return-void
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/b6;)V
    .locals 0

    .line 69338
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A0J()V

    return-void
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/b6;)V
    .locals 0

    .line 69339
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A0K()V

    return-void
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/b6;I)V
    .locals 0

    .line 69340
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/b6;->A0O(I)V

    return-void
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/b6;Z)V
    .locals 0

    .line 69341
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/b6;->A0V(Z)V

    return-void
.end method

.method private A0V(Z)V
    .locals 12

    .line 69342
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 69343
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    const/16 v2, 0x43

    const/16 v1, 0xd

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0C(III)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/16 v2, 0x8

    const/16 v1, 0xc

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69344
    new-instance v5, Lcom/facebook/ads/redexgen/X/Nj;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0I:Lcom/facebook/ads/redexgen/X/Me;

    .line 69345
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Me;->A5w()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    .line 69346
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    .line 69347
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v9

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/b6;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/b6;->A0H:Lcom/facebook/ads/redexgen/X/M9;

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Nj;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;)V

    .line 69348
    .local p1, "helper":Lcom/facebook/ads/redexgen/X/Nj;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0O:Z

    if-eqz v0, :cond_0

    .line 69349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69350
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    .line 69351
    invoke-virtual {v5, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Nj;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 69352
    .end local v3
    :goto_1
    return-void

    .line 69353
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0F:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A05()Z

    move-result v4

    const/4 v2, 0x1

    xor-int/2addr v4, v2

    .line 69354
    .local v3, "skipRedirect":Z
    if-nez v4, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A0A(Z)V

    .line 69355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69356
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    .line 69357
    invoke-virtual {v5, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Nj;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 69358
    if-eqz v4, :cond_1

    .line 69359
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/bP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bP;-><init>(Lcom/facebook/ads/redexgen/X/b6;)V

    .line 69360
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69361
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/b6;->A07:Z

    goto :goto_1

    .line 69362
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 69363
    :cond_3
    const/16 v2, 0x20

    const/16 v1, 0xc

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0C(III)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private A0W()Z
    .locals 4

    .line 69364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0X()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x35

    const/16 v1, 0xe

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69365
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0X()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x14

    const/16 v1, 0xc

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    sget-object v1, Lcom/facebook/ads/redexgen/X/b6;->A0R:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69366
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/b6;->A0R:[Ljava/lang/String;

    const-string v1, "r5y7OBqhAYVA47bIfl4AlIWKO2XfiX80"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0O()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 69367
    :goto_0
    return v0

    .line 69368
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0X(Lcom/facebook/ads/redexgen/X/b6;)Z
    .locals 0

    .line 69369
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A08:Z

    return p0
.end method

.method public static synthetic A0Y(Lcom/facebook/ads/redexgen/X/b6;)Z
    .locals 0

    .line 69370
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0O:Z

    return p0
.end method

.method public static synthetic A0Z(Lcom/facebook/ads/redexgen/X/b6;)Z
    .locals 0

    .line 69371
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0N:Z

    return p0
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/b6;)Z
    .locals 0

    .line 69372
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A0W()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A8J(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 8

    .line 69373
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/b6;->A04:Lcom/facebook/ads/redexgen/X/50;

    .line 69374
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A04:Lcom/facebook/ads/redexgen/X/50;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0B:Lcom/facebook/ads/redexgen/X/4y;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A0L(Lcom/facebook/ads/redexgen/X/4y;)V

    .line 69375
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 69376
    .local p0, "playableMetricData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0I:Lcom/facebook/ads/redexgen/X/Me;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Me;->A6y()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2c

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A06()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v4

    .line 69378
    .local v3, "playableAdData":Lcom/facebook/ads/redexgen/X/1U;
    if-nez v4, :cond_0

    .line 69379
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0H:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0I:Lcom/facebook/ads/redexgen/X/Me;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Me;->A6Q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M9;->A3t(Ljava/lang/String;)V

    .line 69380
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0H:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0I:Lcom/facebook/ads/redexgen/X/Me;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Me;->A6L()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M9;->A3t(Ljava/lang/String;)V

    .line 69381
    return-void

    .line 69382
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/P4;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/b6;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/b6;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    const/4 v0, 0x0

    new-instance v6, Lcom/facebook/ads/redexgen/X/b7;

    invoke-direct {v6, p0, v0}, Lcom/facebook/ads/redexgen/X/b7;-><init>(Lcom/facebook/ads/redexgen/X/b6;Lcom/facebook/ads/redexgen/X/bX;)V

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/P4;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/1U;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/P2;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    .line 69383
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69384
    .local p1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0H:Lcom/facebook/ads/redexgen/X/M9;

    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/M9;->A3M(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 69385
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b6;->A0G()V

    .line 69386
    return-void
.end method

.method public final AB2(Z)V
    .locals 1

    .line 69387
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0F:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A07()Z

    .line 69388
    return-void
.end method

.method public final ABR(Z)V
    .locals 4

    .line 69389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0M:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0F:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A06()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69390
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/b6;->A0F:Lcom/facebook/ads/redexgen/X/L6;

    sget-object v1, Lcom/facebook/ads/redexgen/X/b6;->A0R:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/b6;->A0R:[Ljava/lang/String;

    const-string v1, "UQp6GtSKm4mkcrS1rXAjxFqYQJcA6U4M"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/L6;->A08()Z

    .line 69391
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ADT(Landroid/os/Bundle;)V
    .locals 0

    .line 69392
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 69393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0G:Lcom/facebook/ads/redexgen/X/LV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LV;->A03()V

    .line 69394
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A04:Lcom/facebook/ads/redexgen/X/50;

    if-eqz v1, :cond_0

    .line 69395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0B:Lcom/facebook/ads/redexgen/X/4y;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A0M(Lcom/facebook/ads/redexgen/X/4y;)V

    .line 69396
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    if-eqz v0, :cond_2

    .line 69397
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    sget-object v1, Lcom/facebook/ads/redexgen/X/b6;->A0R:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/b6;->A0R:[Ljava/lang/String;

    const-string v1, "voPpcOtL9PQSCLq1wYvqOCQr8JaLbGKq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69398
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/b6;->A0D:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 69399
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nc;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    .line 69400
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    .line 69401
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A03(Lcom/facebook/ads/redexgen/X/La;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    .line 69402
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Ljava/util/Map;

    move-result-object v0

    .line 69403
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8S(Ljava/lang/String;Ljava/util/Map;)V

    .line 69404
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/P4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P4;->A0D()V

    .line 69405
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A0F:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A07()Z

    .line 69406
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b6;->A0P:Lcom/facebook/ads/redexgen/X/M4;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarListener(Lcom/facebook/ads/redexgen/X/M3;)V

    .line 69407
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A03:Landroid/widget/Toast;

    .line 69408
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b6;->A04:Lcom/facebook/ads/redexgen/X/50;

    .line 69409
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 69410
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 69411
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 69412
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/b6;->ABR(Z)V

    .line 69413
    :goto_0
    return-void

    .line 69414
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/b6;->AB2(Z)V

    goto :goto_0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/M9;)V
    .locals 0

    .line 69415
    return-void
.end method
