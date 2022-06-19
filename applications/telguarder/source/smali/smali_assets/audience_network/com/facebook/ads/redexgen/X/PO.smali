.class public final Lcom/facebook/ads/redexgen/X/PO;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/P9;


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I


# instance fields
.field public A00:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/MediaView;

.field public final A05:Lcom/facebook/ads/NativeAd;

.field public final A06:Lcom/facebook/ads/redexgen/X/PA;

.field public final A07:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 48127
    invoke-static {}, Lcom/facebook/ads/redexgen/X/PO;->A02()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/PO;->A0E:I

    .line 48128
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/PO;->A0D:I

    .line 48129
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/PO;->A0C:I

    .line 48130
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x43af0000    # 350.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/PO;->A0A:I

    .line 48131
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/PO;->A09:I

    .line 48132
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x432f0000    # 175.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/PO;->A0B:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Jc;Lcom/facebook/ads/redexgen/X/Jd;Lcom/facebook/ads/redexgen/X/Nj;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V
    .locals 7

    .line 48133
    move-object v2, p1

    invoke-direct {p0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A07:Ljava/util/ArrayList;

    .line 48135
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    .line 48136
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/MediaView;

    .line 48137
    new-instance v1, Lcom/facebook/ads/redexgen/X/PA;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    move-object v6, p7

    move-object v5, p5

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/PA;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Jc;Lcom/facebook/ads/redexgen/X/Nj;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A06:Lcom/facebook/ads/redexgen/X/PA;

    .line 48138
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PO;->A06:Lcom/facebook/ads/redexgen/X/PA;

    sget v1, Lcom/facebook/ads/redexgen/X/PO;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/PO;->A0E:I

    invoke-virtual {v2, v1, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/PA;->setPadding(IIII)V

    .line 48139
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A06:Lcom/facebook/ads/redexgen/X/PA;

    const/4 v3, -0x2

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/PO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48140
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A09:Lcom/facebook/ads/redexgen/X/Jd;

    if-eq p4, v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A0B:Lcom/facebook/ads/redexgen/X/Jd;

    if-ne p4, v0, :cond_1

    .line 48141
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/PO;->A08(Lcom/facebook/ads/redexgen/X/Jc;)V

    .line 48142
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 48143
    .local p0, "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/PO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48144
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A0B:Lcom/facebook/ads/redexgen/X/Jd;

    if-ne p4, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    .line 48145
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCreativeType()Lcom/facebook/ads/NativeAd$AdCreativeType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->CAROUSEL:Lcom/facebook/ads/NativeAd$AdCreativeType;

    if-eq v1, v0, :cond_3

    .line 48146
    :cond_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/PO;->A07(Lcom/facebook/ads/redexgen/X/Jc;)V

    .line 48147
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/PO;->A05(Lcom/facebook/ads/redexgen/X/Jc;)V

    .line 48148
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/PO;->A06(Lcom/facebook/ads/redexgen/X/Jc;)V

    .line 48149
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A07:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A07:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48151
    return-void
.end method

.method private A00()I
    .locals 7

    .line 48152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A03:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 48153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A03:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    .line 48154
    .local p0, "linkDescHeight":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A02:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 48155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A02:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    .line 48156
    .local v2, "titleHeight":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 48157
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Landroid/widget/TextView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PO;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x75

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48158
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 48159
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/facebook/ads/redexgen/X/PO;->A08:[Ljava/lang/String;

    const-string v1, "HiZrVlulAuiH54vlSWYSbySNuASlYz5G"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    goto :goto_2

    .line 48160
    :cond_3
    const/4 v3, 0x0

    .line 48161
    .local v0, "subtitleHeight":I
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A01:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 48162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A01:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sget v0, Lcom/facebook/ads/redexgen/X/PO;->A0C:I

    add-int/2addr v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/PO;->A0D:I

    add-int/2addr v2, v0

    .line 48163
    .local v0, "ctaHeight":I
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PO;->getMeasuredHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A06:Lcom/facebook/ads/redexgen/X/PA;

    .line 48164
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PA;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v6

    sub-int/2addr v1, v5

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    .line 48165
    return v1
.end method

.method private A01()V
    .locals 2

    .line 48166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A03:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 48167
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 48168
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A02:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 48169
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 48170
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 48171
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 48172
    :cond_2
    return-void
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1TbW2eCQhsvMTBw6WLgOl0T9uhpIUPzf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ziTp6gBPmnDALVepebGOFatIHSWtUxBS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "U8KhSuPVLRzWbOpxbAxolTOugcqmOnaD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0bQh9HQE8V8VC7fBvS6H2cn6s67Amjp4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9aGEAiUrkMnbIgwzZX43En2EpYymCUz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "e9g0133auHqHsGsSwLriU2UE0E7n3ej0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gJVbKnLfSb6S0wmfJEV2eyQXUghITZN0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/PO;->A08:[Ljava/lang/String;

    return-void
.end method

.method private A03(I)V
    .locals 3

    .line 48173
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/MediaView;

    .line 48174
    sget v0, Lcom/facebook/ads/redexgen/X/PO;->A0B:I

    const/4 v2, 0x0

    if-le p1, v0, :cond_2

    const/4 v0, 0x0

    .line 48175
    :goto_0
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0P(Landroid/view/View;I)V

    .line 48176
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A03:Landroid/widget/TextView;

    .line 48177
    sget v0, Lcom/facebook/ads/redexgen/X/PO;->A0A:I

    if-le p1, v0, :cond_1

    const/4 v0, 0x0

    .line 48178
    :goto_1
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0P(Landroid/view/View;I)V

    .line 48179
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Landroid/widget/TextView;

    .line 48180
    sget v0, Lcom/facebook/ads/redexgen/X/PO;->A09:I

    if-le p1, v0, :cond_0

    .line 48181
    :goto_2
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/Lj;->A0P(Landroid/view/View;I)V

    .line 48182
    return-void

    .line 48183
    :cond_0
    const/16 v2, 0x8

    goto :goto_2

    .line 48184
    :cond_1
    const/16 v0, 0x8

    goto :goto_1

    .line 48185
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static varargs A04(II[Landroid/widget/TextView;)V
    .locals 6

    .line 48186
    array-length v5, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, p2, v4

    .line 48187
    .local p2, "tv":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 48188
    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/Lj;->A04(Landroid/widget/TextView;I)I

    move-result v2

    .line 48189
    .local v5, "extraLines":I
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 48190
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 48191
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 48192
    .local v4, "heightMeasureSpec":I
    invoke-virtual {v3, p0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 48193
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    mul-int/2addr v0, v2

    sub-int/2addr p1, v0

    .line 48194
    .end local p2    # "tv":Landroid/widget/TextView;
    .end local v5    # "extraLines":I
    .end local v4    # "heightMeasureSpec":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48195
    :cond_1
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Jc;)V
    .locals 4

    .line 48196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48197
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PO;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Landroid/widget/TextView;

    .line 48198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jc;->A06(Landroid/widget/TextView;)V

    .line 48199
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48200
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Landroid/widget/TextView;

    sget v1, Lcom/facebook/ads/redexgen/X/PO;->A0C:I

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 48201
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/PO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48202
    :cond_0
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/Jc;)V
    .locals 3

    .line 48203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->hasCallToAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48204
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PO;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A01:Landroid/widget/TextView;

    .line 48205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A01:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 48206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A01:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jc;->A05(Landroid/widget/TextView;)V

    .line 48207
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A01:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48208
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A01:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/PO;->A0D:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 48209
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 48210
    .local p0, "ctaParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/PO;->A0D:I

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 48211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A01:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/PO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48212
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A07:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A01:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48213
    .end local p0    # "ctaParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/Jc;)V
    .locals 4

    .line 48214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48215
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PO;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A02:Landroid/widget/TextView;

    .line 48216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A02:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jc;->A07(Landroid/widget/TextView;)V

    .line 48217
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A02:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48218
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PO;->A02:Landroid/widget/TextView;

    sget v2, Lcom/facebook/ads/redexgen/X/PO;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/PO;->A0D:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 48219
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PO;->A02:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/PO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48220
    :cond_0
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Jc;)V
    .locals 4

    .line 48221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdLinkDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    .line 48222
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdLinkDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48223
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PO;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A03:Landroid/widget/TextView;

    .line 48224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A03:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jc;->A06(Landroid/widget/TextView;)V

    .line 48225
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdLinkDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48226
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PO;->A03:Landroid/widget/TextView;

    sget v2, Lcom/facebook/ads/redexgen/X/PO;->A0C:I

    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/PO;->A0D:I

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 48227
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PO;->A03:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/PO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48228
    :cond_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 48229
    return-object p0
.end method

.method public getViewsForInteraction()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 48230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A07:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    .line 48231
    .local p0, "top":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A06:Lcom/facebook/ads/redexgen/X/PA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/PA;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, p4, v0}, Lcom/facebook/ads/redexgen/X/PA;->layout(IIII)V

    .line 48232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A06:Lcom/facebook/ads/redexgen/X/PA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PA;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p3, v0

    .line 48233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A03:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/PO;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/PO;->A08:[Ljava/lang/String;

    const-string v1, "xhpZWMpk43iWHaBi74JKA9YKWwwxfR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 48234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A03:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 48235
    .local p1, "viewHeight":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A03:Landroid/widget/TextView;

    add-int v0, p3, v2

    invoke-virtual {v1, p2, p3, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 48236
    add-int/2addr p3, v2

    .line 48237
    .end local p1    # "viewHeight":I
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1}, Lcom/facebook/ads/MediaView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, p4, v0}, Lcom/facebook/ads/MediaView;->layout(IIII)V

    .line 48238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p3, v0

    .line 48239
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A02:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 48240
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 48241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A02:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p3, v0

    .line 48242
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 48243
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 48244
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PO;->A01:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 48245
    sget v2, Lcom/facebook/ads/redexgen/X/PO;->A0C:I

    add-int/2addr v2, p2

    .line 48246
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    sub-int v1, p5, v0

    sget v0, Lcom/facebook/ads/redexgen/X/PO;->A0C:I

    sub-int/2addr v1, v0

    sub-int/2addr p4, v0

    sub-int/2addr p5, v0

    .line 48247
    invoke-virtual {v3, v2, v1, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 48248
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onMeasure(II)V
    .locals 6

    .line 48249
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/PO;->A03(I)V

    .line 48250
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PO;->A01()V

    .line 48251
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 48252
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PO;->A00()I

    move-result v2

    .line 48253
    .local p0, "emptySpace":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaHeight()I

    move-result v0

    if-nez v0, :cond_2

    .line 48254
    .end local p1    # null:I
    :cond_0
    move v5, v2

    .line 48255
    .restart local p1    # null:I
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/MediaView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PO;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    sget-object v3, Lcom/facebook/ads/redexgen/X/PO;->A08:[Ljava/lang/String;

    const-string v1, "bBjhlDCZcebcBoQzUAOgAVf3zFQrapwM"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    const-string v1, "urvh83LMTjJVKtjaQ5bPrRJiE37dq76T"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 48256
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 48257
    invoke-virtual {v4, p1, v0}, Lcom/facebook/ads/MediaView;->measure(II)V

    .line 48258
    if-ge v5, v2, :cond_1

    .line 48259
    sub-int/2addr v2, v5

    const/4 v0, 0x3

    new-array v3, v0, [Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A02:Landroid/widget/TextView;

    aput-object v0, v3, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Landroid/widget/TextView;

    aput-object v0, v3, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A03:Landroid/widget/TextView;

    aput-object v0, v3, v1

    invoke-static {p1, v2, v3}, Lcom/facebook/ads/redexgen/X/PO;->A04(II[Landroid/widget/TextView;)V

    .line 48260
    :cond_1
    return-void

    .line 48261
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/aO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aO;->A0K()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48262
    move v5, v2

    .local p1, "mediaViewHeight":I
    goto :goto_0

    .line 48263
    .end local p1    # "mediaViewHeight":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaHeight()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 48264
    .local p1, "aspectRatio":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 48265
    .local p2, "requiredHeight":I
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .end local p2    # "requiredHeight":I
    .local p1, "mediaViewHeight":I
    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final unregisterView()V
    .locals 1

    .line 48266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 48267
    return-void
.end method
