.class public final Lcom/facebook/ads/redexgen/X/Rb;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M8;
.implements Lcom/facebook/ads/redexgen/X/OX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/dynamiclayout/DynamicFullScreenAdView$AdFormatType;
    }
.end annotation


# static fields
.field public static A0H:[Ljava/lang/String;

.field public static final A0I:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/4y;

.field public A01:Lcom/facebook/ads/redexgen/X/50;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/16;

.field public final A06:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A07:Lcom/facebook/ads/redexgen/X/JC;

.field public final A08:Lcom/facebook/ads/redexgen/X/JK;

.field public final A09:Lcom/facebook/ads/redexgen/X/LX;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Lc;

.field public final A0B:Lcom/facebook/ads/redexgen/X/M7;

.field public final A0C:Lcom/facebook/ads/redexgen/X/MZ;

.field public final A0D:Lcom/facebook/ads/redexgen/X/OH;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0E:Lcom/facebook/ads/redexgen/X/ON;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Q8;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public final A0G:Lcom/facebook/ads/redexgen/X/Q9;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 50149
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rb;->A0C()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rb;->A0I:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/MZ;I)V
    .locals 12
    .param p6    # I
        .annotation build Lcom/facebook/ads/internal/view/dynamiclayout/DynamicFullScreenAdView$AdFormatType;
        .end annotation
    .end param

    .line 50150
    move-object v2, p0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50151
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rh;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Rh;-><init>(Lcom/facebook/ads/redexgen/X/Rb;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A00:Lcom/facebook/ads/redexgen/X/4y;

    .line 50152
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rg;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Rg;-><init>(Lcom/facebook/ads/redexgen/X/Rb;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0F:Lcom/facebook/ads/redexgen/X/Q8;

    .line 50153
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/facebook/ads/redexgen/X/Rb;->A02:Z

    .line 50154
    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/Rb;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    .line 50155
    iput-object p2, v2, Lcom/facebook/ads/redexgen/X/Rb;->A07:Lcom/facebook/ads/redexgen/X/JC;

    .line 50156
    iput-object p3, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0B:Lcom/facebook/ads/redexgen/X/M7;

    .line 50157
    move-object/from16 v5, p4

    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 50158
    move-object/from16 v0, p5

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0C:Lcom/facebook/ads/redexgen/X/MZ;

    .line 50159
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OO;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ON;

    move-result-object v0

    .line 50160
    .local v2, "preloadedDynamicWebViewController":Lcom/facebook/ads/redexgen/X/ON;
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 50161
    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    .line 50162
    iput-boolean v1, v2, Lcom/facebook/ads/redexgen/X/Rb;->A03:Z

    .line 50163
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0M()Lcom/facebook/ads/redexgen/X/JK;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A08:Lcom/facebook/ads/redexgen/X/JK;

    .line 50164
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0N()Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0A:Lcom/facebook/ads/redexgen/X/Lc;

    .line 50165
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rf;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Rf;-><init>(Lcom/facebook/ads/redexgen/X/Rb;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0Z(Lcom/facebook/ads/redexgen/X/OM;)V

    .line 50166
    const/16 v1, 0x3eb

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0O()Lcom/facebook/ads/redexgen/X/RW;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0I(ILandroid/view/View;)V

    .line 50167
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50168
    new-instance v3, Lcom/facebook/ads/redexgen/X/OH;

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/Rb;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Rb;->A07:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    new-instance v7, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v7, v4}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/Rb;->A08:Lcom/facebook/ads/redexgen/X/JK;

    iget-object v9, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0B:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v10, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0C:Lcom/facebook/ads/redexgen/X/MZ;

    new-instance v11, Lcom/facebook/ads/redexgen/X/Re;

    invoke-direct {v11, v2}, Lcom/facebook/ads/redexgen/X/Re;-><init>(Lcom/facebook/ads/redexgen/X/Rb;)V

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/OH;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/MZ;Lcom/facebook/ads/redexgen/X/OG;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0D:Lcom/facebook/ads/redexgen/X/OH;

    .line 50169
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0D:Lcom/facebook/ads/redexgen/X/OH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OH;->A0O()V

    .line 50170
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    .line 50171
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0O()Lcom/facebook/ads/redexgen/X/RW;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OD;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/OD;-><init>(Lcom/facebook/ads/redexgen/X/Rb;)V

    .line 50172
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RW;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50173
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0D:Lcom/facebook/ads/redexgen/X/OH;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Lcom/facebook/ads/redexgen/X/Rb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50174
    :goto_1
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0D:Lcom/facebook/ads/redexgen/X/OH;

    if-eqz v5, :cond_0

    .line 50175
    :goto_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0F:Lcom/facebook/ads/redexgen/X/Q8;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Rb;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Q9;

    invoke-direct {v0, v5, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/Q9;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0G:Lcom/facebook/ads/redexgen/X/Q9;

    .line 50176
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0G:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 50177
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0F()I

    move-result v0

    .line 50178
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0X(I)V

    .line 50179
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0G:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0G()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0Y(I)V

    .line 50180
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0G:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0b(Lcom/facebook/ads/redexgen/X/Q9;)V

    .line 50181
    new-instance v0, Lcom/facebook/ads/redexgen/X/LX;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/LX;-><init>(Landroid/view/View;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A09:Lcom/facebook/ads/redexgen/X/LX;

    .line 50182
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Rb;->A09:Lcom/facebook/ads/redexgen/X/LX;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LW;->A02:Lcom/facebook/ads/redexgen/X/LW;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LX;->A06(Lcom/facebook/ads/redexgen/X/LW;)V

    .line 50183
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Rb;->setBackgroundColor(I)V

    .line 50184
    return-void

    .line 50185
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0O()Lcom/facebook/ads/redexgen/X/RW;

    move-result-object v5

    goto :goto_2

    .line 50186
    :cond_1
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0D:Lcom/facebook/ads/redexgen/X/OH;

    goto :goto_1

    .line 50187
    :cond_2
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Rb;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ON;

    move/from16 v4, p6

    invoke-direct {v0, v1, v5, p2, v4}, Lcom/facebook/ads/redexgen/X/ON;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;I)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    .line 50188
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/Rb;->A03:Z

    goto/16 :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 50189
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/50;
    .locals 0

    .line 50190
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A01:Lcom/facebook/ads/redexgen/X/50;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 50191
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 50192
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A07:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/JK;
    .locals 0

    .line 50193
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A08:Lcom/facebook/ads/redexgen/X/JK;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/Lc;
    .locals 0

    .line 50194
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0A:Lcom/facebook/ads/redexgen/X/Lc;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/M7;
    .locals 0

    .line 50195
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0B:Lcom/facebook/ads/redexgen/X/M7;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/MZ;
    .locals 0

    .line 50196
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0C:Lcom/facebook/ads/redexgen/X/MZ;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/OH;
    .locals 0

    .line 50197
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0D:Lcom/facebook/ads/redexgen/X/OH;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/ON;
    .locals 0

    .line 50198
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/Q9;
    .locals 0

    .line 50199
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0G:Lcom/facebook/ads/redexgen/X/Q9;

    return-object p0
.end method

.method private A0B()V
    .locals 4

    .line 50200
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rb;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 50201
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 50202
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Od;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Od;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 50203
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Od;->A08(Lcom/facebook/ads/redexgen/X/1I;)Lcom/facebook/ads/redexgen/X/Od;

    move-result-object v0

    .line 50204
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Od;->A0B()Lcom/facebook/ads/redexgen/X/Of;

    move-result-object v2

    .line 50205
    .local p0, "introView":Lcom/facebook/ads/redexgen/X/Of;
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Rb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50206
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rc;-><init>(Lcom/facebook/ads/redexgen/X/Rb;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Of;->A04(Lcom/facebook/ads/redexgen/X/Oe;)V

    .line 50207
    return-void
.end method

.method public static A0C()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UTx0mthy689a2sWy4JVu0tmbo5tf7DAX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DpQrJfF4GGVCKG366ycalUQvQmaAeTpv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "eTaJ9UlZkoiVo78onrsfkh8qyWU6l07Y"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ASk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tRl9yBUHWghtVC3MTlEkON1DGIMHt5L9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IjjI8eijgHBxehc5IxL2bCSmbEZHlZYm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ajbOHBl4KDnxYMWXO0J67"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uiq3lL8JcMvDgND3txStxUQziaPHduab"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rb;->A0H:[Ljava/lang/String;

    return-void
.end method

.method private final A0D()V
    .locals 4

    .line 50208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/ON;->A0a(Lcom/facebook/ads/redexgen/X/OX;)V

    .line 50209
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A03:Z

    if-nez v0, :cond_1

    .line 50210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4t()V

    .line 50211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0W()V

    .line 50212
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    .line 50213
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0O()Lcom/facebook/ads/redexgen/X/RW;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50214
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50215
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0B:Lcom/facebook/ads/redexgen/X/M7;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3I(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 50216
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_3

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rb;->A0H:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 50217
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4u()V

    .line 50218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50219
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rb;->AED()V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rb;->A0H:[Ljava/lang/String;

    const-string v1, "m5i7x933C7hHEFpC39NkE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50220
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rb;->A09:Lcom/facebook/ads/redexgen/X/LX;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LW;->A03:Lcom/facebook/ads/redexgen/X/LW;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LX;->A06(Lcom/facebook/ads/redexgen/X/LW;)V

    .line 50221
    :cond_3
    return-void
.end method

.method private A0E(Ljava/lang/String;)V
    .locals 9

    .line 50222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50223
    return-void

    .line 50224
    :cond_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/Ne;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rb;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0C:Lcom/facebook/ads/redexgen/X/MZ;

    .line 50225
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A5w()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0G:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0A:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Rb;->A07:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0B:Lcom/facebook/ads/redexgen/X/M7;

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Ne;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;)V

    .line 50226
    .local p0, "ctaActionHelper":Lcom/facebook/ads/redexgen/X/Ne;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 50227
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50228
    invoke-virtual {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Ne;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 50229
    return-void
.end method

.method public static getAttachedDynamicAdViews()I
    .locals 4

    .line 50289
    sget-object v3, Lcom/facebook/ads/redexgen/X/Rb;->A0I:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rb;->A0H:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rb;->A0H:[Ljava/lang/String;

    const-string v1, "uMf2GVY9KUNGacyd589OBcKV99BHVPNe"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "VXqRSGhUOWfa5QnnesIrfge0pBEHKDrD"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final A7X()V
    .locals 1

    .line 50230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0E(Ljava/lang/String;)V

    .line 50231
    return-void
.end method

.method public final A7Y(Ljava/lang/String;)V
    .locals 0

    .line 50232
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Rb;->A0E(Ljava/lang/String;)V

    .line 50233
    return-void
.end method

.method public final A7c()V
    .locals 5

    .line 50234
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0B:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0C:Lcom/facebook/ads/redexgen/X/MZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A5T()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3p(Ljava/lang/String;)V

    .line 50235
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rb;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0C:Lcom/facebook/ads/redexgen/X/MZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 50236
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0X()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0B:Lcom/facebook/ads/redexgen/X/M7;

    new-instance v0, Lcom/facebook/ads/redexgen/X/P5;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/P5;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/MZ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/M7;)V

    .line 50237
    .local p0, "serverSideRewardHandler":Lcom/facebook/ads/redexgen/X/P5;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P5;->A05()V

    .line 50238
    return-void
.end method

.method public final A8G()V
    .locals 2

    .line 50239
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rd;-><init>(Lcom/facebook/ads/redexgen/X/Rb;)V

    .line 50240
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50241
    return-void
.end method

.method public final A8L(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50242
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rb;->A0I:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 50243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A00:Lcom/facebook/ads/redexgen/X/4y;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/50;->A0L(Lcom/facebook/ads/redexgen/X/4y;)V

    .line 50244
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Rb;->A01:Lcom/facebook/ads/redexgen/X/50;

    .line 50245
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rb;->A0D()V

    .line 50246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50247
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rb;->A0B()V

    .line 50248
    :goto_0
    return-void

    .line 50249
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0V()V

    goto :goto_0
.end method

.method public final AAF()V
    .locals 1

    .line 50250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0D:Lcom/facebook/ads/redexgen/X/OH;

    if-eqz v0, :cond_0

    .line 50251
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OH;->A0Q()V

    .line 50252
    :cond_0
    return-void
.end method

.method public final AAs(Z)V
    .locals 1

    .line 50253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0D:Lcom/facebook/ads/redexgen/X/OH;

    if-eqz v0, :cond_0

    .line 50254
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OH;->A0S(Z)V

    .line 50255
    :cond_0
    return-void
.end method

.method public final AB2(Z)V
    .locals 1

    .line 50256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0D:Lcom/facebook/ads/redexgen/X/OH;

    if-eqz v0, :cond_0

    .line 50257
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OH;->A0T(Z)V

    .line 50258
    :cond_0
    if-eqz p1, :cond_1

    .line 50259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0R()V

    .line 50260
    :goto_0
    return-void

    .line 50261
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0U()V

    goto :goto_0
.end method

.method public final ABR(Z)V
    .locals 1

    .line 50262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0D:Lcom/facebook/ads/redexgen/X/OH;

    if-eqz v0, :cond_0

    .line 50263
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OH;->A0U(Z)V

    .line 50264
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A02:Z

    if-eqz v0, :cond_1

    .line 50265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A02:Z

    .line 50266
    return-void

    .line 50267
    :cond_1
    if-eqz p1, :cond_2

    .line 50268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0Q()V

    .line 50269
    :goto_0
    return-void

    .line 50270
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0E:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0X()V

    goto :goto_0
.end method

.method public final ABc()V
    .locals 1

    .line 50271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0D:Lcom/facebook/ads/redexgen/X/OH;

    if-eqz v0, :cond_0

    .line 50272
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OH;->A0R()V

    .line 50273
    :cond_0
    return-void
.end method

.method public final AC4(Z)V
    .locals 1

    .line 50274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0D:Lcom/facebook/ads/redexgen/X/OH;

    if-eqz v0, :cond_0

    .line 50275
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OH;->A0V(Z)V

    .line 50276
    :cond_0
    return-void
.end method

.method public final AC6(Z)V
    .locals 1

    .line 50277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0D:Lcom/facebook/ads/redexgen/X/OH;

    if-eqz v0, :cond_0

    .line 50278
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OH;->A0W(Z)V

    .line 50279
    :cond_0
    return-void
.end method

.method public final ADU(Landroid/os/Bundle;)V
    .locals 0

    .line 50280
    return-void
.end method

.method public final AED()V
    .locals 1

    .line 50281
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A04:Z

    if-nez v0, :cond_0

    .line 50282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0G:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0V()V

    .line 50283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A04:Z

    .line 50284
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2

    .line 50285
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rb;->A01:Lcom/facebook/ads/redexgen/X/50;

    if-nez v1, :cond_0

    .line 50286
    return-void

    .line 50287
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 50288
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 50290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0D:Lcom/facebook/ads/redexgen/X/OH;

    if-eqz v0, :cond_0

    .line 50291
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OH;->A0P()V

    .line 50292
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A09:Lcom/facebook/ads/redexgen/X/LX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LX;->A04()V

    .line 50293
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rb;->A07:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 50294
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NX;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0A:Lcom/facebook/ads/redexgen/X/Lc;

    .line 50295
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A0G:Lcom/facebook/ads/redexgen/X/Q9;

    .line 50296
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 50297
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v0

    .line 50298
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8U(Ljava/lang/String;Ljava/util/Map;)V

    .line 50299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A00:Lcom/facebook/ads/redexgen/X/4y;

    .line 50300
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A01:Lcom/facebook/ads/redexgen/X/50;

    .line 50301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rb;->A05:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OO;->A04(Ljava/lang/String;)V

    .line 50302
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rb;->A0I:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 50303
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 50304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rb;->requestDisallowInterceptTouchEvent(Z)V

    .line 50305
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/M7;)V
    .locals 0

    .line 50306
    return-void
.end method
