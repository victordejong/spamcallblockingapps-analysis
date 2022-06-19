.class public final Lcom/facebook/ads/redexgen/X/QH;
.super Lcom/facebook/ads/redexgen/X/Nf;
.source ""


# static fields
.field public static final A04:I

.field public static final A05:I


# instance fields
.field public A00:I

.field public A01:Z

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/Nu;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 49117
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/QH;->A04:I

    .line 49118
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/QH;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;ILcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;ZZLcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;Z)V
    .locals 16

    .line 49119
    move-object/from16 v3, p0

    sget-object v0, Lcom/facebook/ads/redexgen/X/PR;->A04:Lcom/facebook/ads/redexgen/X/PR;

    .line 49120
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PR;->A02()Ljava/lang/String;

    move-result-object v10

    .line 49121
    move-object/from16 v6, p0

    move-object/from16 v12, p5

    move-object/from16 v11, p4

    move-object/from16 v14, p9

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v7, p1

    move-object/from16 v13, p8

    invoke-direct/range {v6 .. v14}, Lcom/facebook/ads/redexgen/X/Nf;-><init>(Lcom/facebook/ads/redexgen/X/XJ;ILcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V

    .line 49122
    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/facebook/ads/redexgen/X/QH;->A02:Z

    .line 49123
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49124
    .local v7, "iconLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49125
    sget v0, Lcom/facebook/ads/redexgen/X/QH;->A04:I

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 49126
    const/16 v5, 0x8

    if-eqz p7, :cond_0

    .line 49127
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/No;->setVisibility(I)V

    .line 49128
    :cond_0
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Lh;->A03(Landroid/content/Context;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/QH;->A00:I

    .line 49129
    move/from16 v0, p10

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/QH;->A01:Z

    .line 49130
    iget v4, v3, Lcom/facebook/ads/redexgen/X/QH;->A00:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne v4, v0, :cond_7

    const/4 v0, 0x1

    .line 49131
    .local v12, "isLandscape":Z
    :goto_0
    if-eqz v0, :cond_6

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/QH;->A01:Z

    if-eqz v0, :cond_6

    const/4 v6, 0x1

    .line 49132
    .local v13, "useNewLayoutForEndCard":Z
    :goto_1
    new-instance v10, Lcom/facebook/ads/redexgen/X/Nu;

    const/4 v13, 0x1

    if-nez v6, :cond_1

    if-eqz p6, :cond_5

    :cond_1
    const/4 v14, 0x1

    :goto_2
    const/4 v15, 0x1

    move-object v0, v10

    move-object v11, v7

    move-object v12, v9

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/Nu;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1I;ZZZ)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/QH;->A03:Lcom/facebook/ads/redexgen/X/Nu;

    .line 49133
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/QH;->A03:Lcom/facebook/ads/redexgen/X/Nu;

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/QH;->A01:Z

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Nu;->setUseNewLandscapeEndCard(Z)V

    .line 49134
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/QH;->A03:Lcom/facebook/ads/redexgen/X/Nu;

    const v0, 0x800003

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Nu;->setAlignment(I)V

    .line 49135
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Nf;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49136
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/QH;->A03:Lcom/facebook/ads/redexgen/X/Nu;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Nu;->setDescriptionVisibility(I)V

    .line 49137
    :cond_2
    const/4 v5, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49138
    .local p0, "titleDescParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 49139
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/QH;->A01:Z

    if-nez v0, :cond_3

    .line 49140
    const/16 v0, 0xf

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49141
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49142
    :cond_3
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49143
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/QH;->A03:Lcom/facebook/ads/redexgen/X/Nu;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49144
    if-eqz v6, :cond_4

    .line 49145
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    const/4 v2, -0x1

    const v1, 0x3f333333    # 0.7f

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/QH;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49146
    .end local v9
    :goto_3
    return-void

    .line 49147
    :cond_4
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/QH;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49148
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 49149
    .local v9, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 49150
    invoke-static {v3, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 49151
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 49152
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 49153
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        -0xeeeeef
    .end array-data
.end method


# virtual methods
.method public final A0E(I)V
    .locals 8

    .line 49154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 49155
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_7

    const/4 v7, 0x1

    .line 49156
    .local v0, "isPortrait":Z
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QH;->A01:Z

    const/4 v5, -0x1

    const/4 v4, -0x2

    if-eqz v0, :cond_1

    .line 49157
    iput p1, p0, Lcom/facebook/ads/redexgen/X/QH;->A00:I

    .line 49158
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/QH;->setOrientation(I)V

    .line 49159
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49160
    .local p0, "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QH;->A02:Z

    if-eqz v0, :cond_0

    if-nez v7, :cond_0

    .line 49161
    const v0, 0x3f333333    # 0.7f

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 49162
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/QH;->setBackgroundResource(I)V

    .line 49163
    const v0, -0x1aafafb0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 49164
    .end local v1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49165
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49166
    .local v1, "buttonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/QH;->A05:I

    invoke-virtual {v2, v3, v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 49167
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QH;->bringToFront()V

    .line 49168
    .end local p0    # "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local p0
    :goto_2
    const/16 v0, 0x50

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 49169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/QH;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49170
    return-void

    .line 49171
    :cond_0
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 49172
    .local v1, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 49173
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 49174
    .end local v1    # "gd":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    if-eqz v7, :cond_6

    :goto_3
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/QH;->setOrientation(I)V

    .line 49175
    if-eqz v7, :cond_5

    const/4 v0, -0x1

    :goto_4
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49176
    .restart local p0    # "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 49177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49178
    if-eqz v7, :cond_4

    :goto_5
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49179
    .restart local v1    # "gd":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v7, :cond_3

    const/4 v1, 0x0

    :goto_6
    if-eqz v7, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/QH;->A05:I

    :goto_7
    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_7

    :cond_3
    sget v1, Lcom/facebook/ads/redexgen/X/QH;->A05:I

    goto :goto_6

    .line 49180
    :cond_4
    const/4 v5, -0x2

    goto :goto_5

    .line 49181
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 49182
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 49183
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        -0xeeeeef
    .end array-data
.end method

.method public final A0F(Z)V
    .locals 0

    .line 49184
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/QH;->A02:Z

    .line 49185
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ni;)V
    .locals 10
    .param p5    # Lcom/facebook/ads/redexgen/X/Ni;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49186
    move-object v2, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v5, p4

    invoke-super/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Nf;->setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 49187
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/QH;->A03:Lcom/facebook/ads/redexgen/X/Nu;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1G;->A05()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 49188
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49189
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 49190
    :cond_0
    return-void
.end method
