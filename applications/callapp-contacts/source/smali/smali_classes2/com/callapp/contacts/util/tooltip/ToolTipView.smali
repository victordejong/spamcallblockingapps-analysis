.class public Lcom/callapp/contacts/util/tooltip/ToolTipView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/tooltip/ToolTipView$DisappearanceAnimatorListener;,
        Lcom/callapp/contacts/util/tooltip/ToolTipView$OnToolTipViewClickedListener;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/View;

.field private h:Lcom/callapp/contacts/util/tooltip/ToolTip;

.field private i:Landroid/view/View;

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

.field private o:Lcom/callapp/contacts/util/tooltip/ToolTipView$OnToolTipViewClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1081
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 1082
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->setOrientation(I)V

    .line 1083
    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d028e

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0943

    .line 1085
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->a:Landroid/widget/ImageView;

    const p1, 0x7f0a0947

    .line 1086
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->b:Landroid/view/View;

    const p1, 0x7f0a093f

    .line 1087
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->c:Landroid/view/ViewGroup;

    const p1, 0x7f0a0940

    .line 1088
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->d:Landroid/widget/TextView;

    const p1, 0x7f0a093d

    .line 1089
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->e:Landroid/view/View;

    const p1, 0x7f0a0942

    .line 1090
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->f:Landroid/widget/ImageView;

    const p1, 0x7f0a0944

    .line 1091
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->g:Landroid/view/View;

    .line 1093
    invoke-virtual {p0, p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private a()V
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 153
    iget-object v2, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->i:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 155
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 156
    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-array v3, v0, [I

    .line 160
    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 162
    iget-object v4, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->i:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 163
    iget-object v5, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->i:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    .line 165
    aget v7, v1, v6

    aget v8, v3, v6

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->l:I

    const/4 v8, 0x1

    .line 166
    aget v1, v1, v8

    aget v3, v3, v8

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->k:I

    .line 167
    div-int/2addr v4, v0

    add-int/2addr v7, v4

    .line 169
    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    .line 170
    iget v3, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->k:I

    add-int/2addr v3, v5

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 172
    iget v4, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->m:I

    div-int/2addr v4, v0

    sub-int v4, v7, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 173
    iget v5, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->m:I

    add-int/2addr v5, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-le v5, v9, :cond_0

    .line 174
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v4, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->m:I

    sub-int v4, v2, v4

    :cond_0
    int-to-float v2, v4

    .line 177
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->setX(F)V

    .line 178
    invoke-virtual {p0, v7}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->setPointerCenterX(I)V

    if-gez v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 181
    :goto_0
    iget-object v7, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->n:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    sget-object v9, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;->TOP:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    if-ne v7, v9, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    .line 183
    :cond_2
    iget-object v7, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->n:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    sget-object v9, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;->BOTTOM:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    if-ne v7, v9, :cond_3

    const/4 v5, 0x1

    .line 187
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->a:Landroid/widget/ImageView;

    const/16 v9, 0x8

    if-eqz v5, :cond_4

    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    const/16 v10, 0x8

    :goto_2
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v7, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->f:Landroid/widget/ImageView;

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v5, :cond_6

    move v1, v3

    .line 197
    :cond_6
    iget-object v3, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {v3}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getAnimationType()Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    move-result-object v3

    sget-object v5, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;->NONE:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    if-ne v3, v5, :cond_7

    int-to-float v0, v1

    .line 198
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->setTranslationY(F)V

    .line 199
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->setTranslationX(F)V

    return-void

    .line 201
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    iget-object v3, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {v3}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getAnimationType()Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    move-result-object v3

    sget-object v5, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;->FROM_MASTER_VIEW:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    const-string v7, "translationY"

    if-ne v3, v5, :cond_8

    new-array v3, v0, [I

    .line 204
    iget v5, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->k:I

    iget-object v9, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->i:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/2addr v9, v0

    add-int/2addr v5, v9

    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getHeight()I

    move-result v9

    div-int/2addr v9, v0

    sub-int/2addr v5, v9

    aput v5, v3, v6

    aput v1, v3, v8

    invoke-static {p0, v7, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-array v1, v0, [I

    .line 205
    iget v3, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->l:I

    iget-object v5, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->i:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v3, v5

    iget v5, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->m:I

    div-int/2addr v5, v0

    sub-int/2addr v3, v5

    aput v3, v1, v6

    aput v4, v1, v8

    const-string v3, "translationX"

    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 206
    :cond_8
    iget-object v3, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {v3}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getAnimationType()Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;->FROM_TOP:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    if-ne v3, v4, :cond_9

    new-array v3, v0, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    int-to-float v1, v1

    aput v1, v3, v8

    .line 207
    invoke-static {p0, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    new-array v1, v0, [F

    .line 210
    fill-array-data v1, :array_0

    const-string v3, "scaleX"

    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-array v1, v0, [F

    .line 211
    fill-array-data v1, :array_1

    const-string v3, "scaleY"

    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-array v0, v0, [F

    .line 213
    fill-array-data v0, :array_2

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 216
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 218
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setContentView(Landroid/view/View;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 243
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1247
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getAnimationType()Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;->NONE:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    if-ne p1, v0, :cond_0

    .line 1248
    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1249
    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewManager;

    invoke-interface {p1, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    return-void

    .line 1252
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1253
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getAnimationType()Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;->FROM_MASTER_VIEW:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    const-string v2, "translationY"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v0, v1, :cond_1

    new-array v0, v5, [I

    .line 1254
    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getY()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    iget v1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->k:I

    iget-object v6, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->i:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    add-int/2addr v1, v6

    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    sub-int/2addr v1, v6

    aput v1, v0, v3

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-array v0, v5, [I

    .line 1255
    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getX()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    iget v1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->l:I

    iget-object v2, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v5

    add-int/2addr v1, v2

    iget v2, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->m:I

    div-int/2addr v2, v5

    sub-int/2addr v1, v2

    aput v1, v0, v3

    const-string v1, "translationX"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array v0, v5, [F

    .line 1257
    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getY()F

    move-result v1

    aput v1, v0, v4

    const/4 v1, 0x0

    aput v1, v0, v3

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_0
    new-array v0, v5, [F

    .line 1260
    fill-array-data v0, :array_0

    const-string v1, "scaleX"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-array v0, v5, [F

    .line 1261
    fill-array-data v0, :array_1

    const-string v1, "scaleY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-array v0, v5, [F

    .line 1263
    fill-array-data v0, :array_2

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1265
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1266
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1267
    new-instance p1, Lcom/callapp/contacts/util/tooltip/ToolTipView$DisappearanceAnimatorListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/callapp/contacts/util/tooltip/ToolTipView$DisappearanceAnimatorListener;-><init>(Lcom/callapp/contacts/util/tooltip/ToolTipView;Lcom/callapp/contacts/util/tooltip/ToolTipView$1;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1268
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onPreDraw()Z
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->j:Z

    .line 102
    iget-object v1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->m:I

    .line 104
    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    iget v2, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->m:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 106
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    if-eqz v1, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->a()V

    :cond_0
    return v0
.end method

.method public setColor(I)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 235
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 236
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->f:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 237
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 238
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method public setOnToolTipViewClickedListener(Lcom/callapp/contacts/util/tooltip/ToolTipView$OnToolTipViewClickedListener;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->o:Lcom/callapp/contacts/util/tooltip/ToolTipView$OnToolTipViewClickedListener;

    return-void
.end method

.method public setPointerCenterX(I)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->a:Landroid/widget/ImageView;

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getX()F

    move-result v0

    float-to-int v0, v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 226
    iget-object v0, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setX(F)V

    return-void
.end method

.method public setToolTip(Lcom/callapp/contacts/util/tooltip/ToolTip;Landroid/view/View;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    .line 116
    iput-object p2, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->i:Landroid/view/View;

    .line 118
    invoke-virtual {p1}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getTextResId()I

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getTextResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getTextColor()I

    move-result p1

    if-eqz p1, :cond_3

    .line 129
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getColor()I

    move-result p1

    if-eqz p1, :cond_4

    .line 133
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->setColor(I)V

    .line 136
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 137
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->setContentView(Landroid/view/View;)V

    .line 140
    :cond_5
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    .line 1197
    iget-boolean p1, p1, Lcom/callapp/contacts/util/tooltip/ToolTip;->a:Z

    if-nez p1, :cond_6

    .line 141
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->g:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->h:Lcom/callapp/contacts/util/tooltip/ToolTip;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/tooltip/ToolTip;->getOrientation()Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->n:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    .line 146
    iget-boolean p1, p0, Lcom/callapp/contacts/util/tooltip/ToolTipView;->j:Z

    if-eqz p1, :cond_7

    .line 147
    invoke-direct {p0}, Lcom/callapp/contacts/util/tooltip/ToolTipView;->a()V

    :cond_7
    return-void
.end method
