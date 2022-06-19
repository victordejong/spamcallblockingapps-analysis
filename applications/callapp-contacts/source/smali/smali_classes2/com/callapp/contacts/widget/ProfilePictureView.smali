.class public Lcom/callapp/contacts/widget/ProfilePictureView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private final b:I

.field private c:I

.field private d:Lcom/callapp/contacts/widget/CircularTextView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/pnikosis/materialishprogress/ProgressWheel;

.field private g:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

.field private n:Landroid/content/res/TypedArray;

.field private o:Landroid/content/res/TypedArray;

.field private p:Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;

.field private q:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    .line 54
    iput p1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->h:I

    .line 55
    iput p1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->i:I

    const/4 p3, 0x0

    .line 57
    iput p3, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->k:I

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->l:Z

    const v1, 0x7f060088

    .line 92
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->c:I

    const v1, 0x7f060026

    .line 93
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->b:I

    .line 1158
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/R$styleable;->ImageWithBadge_ProfilePictureView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x2

    .line 1159
    invoke-virtual {v1, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setPresetSize(I)V

    .line 1160
    iget p1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->h:I

    invoke-virtual {v1, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setPresetFontSize(I)V

    const/4 p1, 0x4

    .line 1161
    invoke-virtual {v1, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    const/16 v3, 0xa

    .line 1162
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setFontStyle(I)V

    .line 1163
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->l:Z

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->l:Z

    .line 1165
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2131
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d017c

    invoke-static {v0, v1, p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2132
    invoke-direct {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getPresetHeight()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->j:I

    const v0, 0x7f0a06f1

    .line 2133
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->q:Landroid/view/View;

    .line 2134
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->j:I

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x7f0a0286

    .line 2136
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->e:Landroid/widget/ImageView;

    .line 2137
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 2138
    iget-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2140
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->l:Z

    if-nez v0, :cond_1

    .line 2141
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2145
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->j:I

    add-int/lit8 v4, v1, 0x0

    sub-int/2addr v1, p3

    const/16 v5, 0x11

    invoke-direct {v0, v4, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const v1, 0x7f0a0223

    .line 2146
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->g:Landroid/view/View;

    .line 2147
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2149
    new-instance v1, Lcom/callapp/contacts/widget/CircularTextView;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/callapp/contacts/widget/CircularTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->d:Lcom/callapp/contacts/widget/CircularTextView;

    .line 2150
    invoke-direct {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getPresetFontSize()F

    move-result v4

    invoke-virtual {v1, p3, v4}, Lcom/callapp/contacts/widget/CircularTextView;->setTextSize(IF)V

    .line 2151
    iget-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->d:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-direct {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getPresetTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/callapp/contacts/widget/CircularTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2152
    iget-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->d:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/CircularTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2154
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->d:Lcom/callapp/contacts/widget/CircularTextView;

    iget v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->j:I

    .line 3047
    iput v1, v0, Lcom/callapp/contacts/widget/CircularTextView;->c:I

    .line 3048
    iput v1, v0, Lcom/callapp/contacts/widget/CircularTextView;->b:I

    .line 3049
    iget-object v1, v0, Lcom/callapp/contacts/widget/CircularTextView;->e:Landroid/text/TextPaint;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 3050
    iget-object v1, v0, Lcom/callapp/contacts/widget/CircularTextView;->e:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3051
    iget-object v1, v0, Lcom/callapp/contacts/widget/CircularTextView;->e:Landroid/text/TextPaint;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CircularTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3052
    iget-object v1, v0, Lcom/callapp/contacts/widget/CircularTextView;->e:Landroid/text/TextPaint;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CircularTextView;->getTextSize()F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3054
    new-instance v1, Lcom/callapp/contacts/widget/CircularTextView$1;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/widget/CircularTextView$1;-><init>(Lcom/callapp/contacts/widget/CircularTextView;)V

    iput-object v1, v0, Lcom/callapp/contacts/widget/CircularTextView;->a:Landroid/graphics/drawable/Drawable;

    .line 4100
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/R$styleable;->ProgressWheel:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4113
    iget v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v7, v1

    .line 4114
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0601a8

    invoke-static {v1, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    const/4 p3, 0x0

    .line 4115
    invoke-virtual {v0, v2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v5, v1

    const/16 v1, 0x8

    .line 4116
    invoke-virtual {v0, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int v6, p3

    const/4 p3, 0x7

    .line 4117
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0601a9

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 4118
    new-instance p3, Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;

    const/4 v10, 0x0

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;-><init>(Lcom/callapp/contacts/widget/ProfilePictureView;IIIIILcom/callapp/contacts/widget/ProfilePictureView$1;)V

    iput-object p3, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->p:Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;

    .line 4120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4103
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/callapp/contacts/R$styleable;->dualCircleImageView:[I

    invoke-virtual {p3, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    iput-object p3, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->n:Landroid/content/res/TypedArray;

    .line 4104
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/callapp/contacts/R$styleable;->CircleImageView_ImageWithBadge:[I

    invoke-virtual {p3, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->o:Landroid/content/res/TypedArray;

    .line 4105
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4107
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/widget/ProfilePictureView;

    :cond_2
    return-void
.end method

.method private b()V
    .locals 2

    .line 344
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequests;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 347
    const-class v1, Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method

.method private getPresetFontSize()F
    .locals 2

    .line 275
    iget v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x23

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use a predefined preset size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v0, 0x7f070343

    goto :goto_1

    :cond_2
    const v0, 0x7f070345

    goto :goto_1

    :cond_3
    :goto_0
    const v0, 0x7f07034b

    .line 298
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getPresetHeight()I
    .locals 2

    .line 230
    iget v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0xf

    if-eq v0, v1, :cond_6

    const/16 v1, 0x11

    if-eq v0, v1, :cond_5

    const/16 v1, 0x14

    if-eq v0, v1, :cond_4

    const/16 v1, 0x19

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070341

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use a predefined preset size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07034a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07034d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 240
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070348

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 250
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07034e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 248
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070347

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 246
    :cond_6
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070344

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 244
    :cond_7
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070346

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 238
    :cond_8
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07034c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 234
    :cond_9
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070342

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 236
    :cond_a
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07034f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 232
    :cond_b
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070350

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getPresetTypeFace()Landroid/graphics/Typeface;
    .locals 3

    .line 261
    iget v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->k:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    const-string v0, "sans-serif-light"

    .line 267
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use a predefined font style"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "sans-serif-thin"

    .line 265
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "sans-serif"

    .line 263
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private setBadgeLayoutParams(Lcom/callapp/contacts/widget/DualCirclesCheckBox;)V
    .locals 7

    .line 457
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->n:Landroid/content/res/TypedArray;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setFromAttributes(Landroid/content/res/TypedArray;)V

    .line 458
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->o:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 459
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 460
    iget-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->o:Landroid/content/res/TypedArray;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 461
    iget-object v2, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->o:Landroid/content/res/TypedArray;

    const/4 v4, 0x3

    const/high16 v5, 0x41100000    # 9.0f

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 462
    iget-object v4, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->o:Landroid/content/res/TypedArray;

    const/4 v5, 0x2

    const/high16 v6, -0x31000000

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    float-to-int v1, v1

    .line 463
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->b(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 464
    invoke-virtual {p0, v0, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(IZ)Lcom/callapp/contacts/widget/ProfilePictureView;

    float-to-int v0, v2

    .line 465
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->c(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    const/high16 v0, -0x80000000

    if-eq v4, v0, :cond_0

    .line 467
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/widget/ProfilePictureView;->d(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    :cond_0
    const/4 v0, 0x0

    .line 470
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 471
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->requestLayout()V

    return-void
.end method

.method private setFontStyle(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must use a predefined font style"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_1
    :goto_0
    iput p1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->k:I

    return-void
.end method

.method private setPresetFontSize(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_1

    const/16 v0, 0x28

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must use a predefined preset size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_1
    :goto_0
    iput p1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->i:I

    return-void
.end method

.method private setPresetSize(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_1

    const/16 v0, 0x28

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must use a predefined preset size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_1
    :goto_0
    iput p1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->h:I

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getBadgeView()Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->b(I)Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    return-object p0
.end method

.method public final a(IZ)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getBadgeView()Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setIconColorFilter(IZ)V

    :cond_0
    return-object p0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 487
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getBadgeView()Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->a:Ljava/lang/String;

    .line 338
    invoke-direct {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->b()V

    .line 339
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->d:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/CircularTextView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 492
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getBadgeView()Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setVisibility(I)V

    return-void
.end method

.method public final a(ZZ)V
    .locals 4

    if-eqz p1, :cond_0

    .line 393
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070200

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 394
    iget p1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->c:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->b:I

    :goto_1
    if-eqz p2, :cond_2

    .line 398
    iget-object p2, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->q:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v1, 0x190

    .line 399
    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 400
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 401
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 403
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v3, Lcom/callapp/contacts/widget/ProfilePictureView$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/callapp/contacts/widget/ProfilePictureView$1;-><init>(Lcom/callapp/contacts/widget/ProfilePictureView;II)V

    invoke-virtual {p2, v3, v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 411
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setBorder(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public final a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z
    .locals 2

    .line 312
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    const/4 p1, 0x0

    return p1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->isForce()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 320
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->a:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f060244

    .line 324
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4354
    iput-object v0, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 327
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->isShowInitialsTextView()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->d:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CircularTextView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->getPlaceHolder()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4480
    :goto_0
    iput-object v0, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->h:Landroid/graphics/drawable/Drawable;

    .line 330
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->e:Landroid/widget/ImageView;

    .line 5427
    iput-object v0, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a:Landroid/widget/ImageView;

    .line 330
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5432
    iput-object v0, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 330
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return v1
.end method

.method public final b(I)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 496
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getBadgeView()Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setIconBounded(I)V

    return-object p0
.end method

.method public final b(ZZ)V
    .locals 3

    const v0, 0x7f0a06f1

    .line 417
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->g:Landroid/view/View;

    instance-of v2, v1, Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    .line 420
    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->g:Landroid/view/View;

    :cond_0
    if-eqz p2, :cond_2

    const/16 p2, 0x12c

    if-eqz p1, :cond_1

    .line 426
    iget-object p1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->g:Landroid/view/View;

    sget-object v1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;->LTR:Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    invoke-static {v0, p1, v1, p2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;Landroid/view/View;Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;I)V

    return-void

    .line 428
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->g:Landroid/view/View;

    sget-object v1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;->RTL:Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    invoke-static {p1, v0, v1, p2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;Landroid/view/View;Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;I)V

    return-void

    :cond_2
    const/4 p2, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    .line 432
    iget-object p1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->g:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 433
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 435
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->g:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final c(I)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getBadgeView()Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    move-result-object v0

    .line 7171
    iput p1, v0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->b:I

    return-object p0
.end method

.method public final d(I)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 2

    .line 506
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getBadgeView()Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1, v1, p1, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;IIII)Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method

.method public getBadgeView()Lcom/callapp/contacts/widget/DualCirclesCheckBox;
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->m:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    if-nez v0, :cond_0

    const v0, 0x7f0a0113

    .line 443
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    iput-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->m:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    const v1, 0x7f060026

    .line 444
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->a(I)Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    .line 445
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->m:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->m:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setBadgeLayoutParams(Lcom/callapp/contacts/widget/DualCirclesCheckBox;)V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->m:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    return-object v0
.end method

.method public getProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->f:Lcom/pnikosis/materialishprogress/ProgressWheel;

    if-nez v0, :cond_0

    const v0, 0x7f0a0706

    .line 549
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pnikosis/materialishprogress/ProgressWheel;

    iput-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->f:Lcom/pnikosis/materialishprogress/ProgressWheel;

    .line 9557
    iget-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->p:Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;

    invoke-static {v1}, Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;->a(Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setCircleRadius(I)V

    .line 9558
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->f:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->p:Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;

    invoke-static {v1}, Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;->b(Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setBarColor(I)V

    .line 9559
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->f:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->p:Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;

    invoke-static {v1}, Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;->c(Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setBarWidth(I)V

    .line 9560
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->f:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->p:Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;

    invoke-static {v1}, Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;->d(Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setRimWidth(I)V

    .line 9561
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->f:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->p:Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;

    invoke-static {v1}, Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;->e(Lcom/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setRimColor(I)V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->f:Lcom/pnikosis/materialishprogress/ProgressWheel;

    return-object v0
.end method

.method public isBadgeInflated()Z
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->m:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 126
    iget p1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->j:I

    invoke-virtual {p0, p1, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setMeasuredDimension(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 541
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 542
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->m:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->m:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBadgeBorderWidth(I)V
    .locals 1

    .line 529
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getBadgeView()Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    move-result-object v0

    int-to-float p1, p1

    .line 9190
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p1

    iput p1, v0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->a:F

    return-void
.end method

.method public setBorder(II)V
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->d:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-virtual {v0, p2, p1}, Lcom/callapp/contacts/widget/CircularTextView;->setBorder(II)V

    return-void

    .line 524
    :cond_0
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7480
    iput-object v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->h:Landroid/graphics/drawable/Drawable;

    .line 524
    invoke-virtual {v0, p2, p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p1

    const/4 p2, 0x1

    .line 8371
    iput-boolean p2, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 8408
    iput-boolean p2, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->p:Z

    .line 524
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public setDefaultProfilePic()V
    .locals 4

    .line 352
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const v1, 0x7f08058f

    invoke-direct {v0, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    .line 353
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f06008a

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 6354
    iput-object v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 353
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, -0x1

    .line 354
    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 6371
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 356
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700cb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    .line 352
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLongClickable(Z)V

    return-void
.end method

.method public setMargins(I)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 516
    invoke-static {p0, p1, v0, p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;IIII)Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 389
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->d:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/CircularTextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 381
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProfilePictureView;->d:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/CircularTextView;->setLetterText(Ljava/lang/CharSequence;)V

    return-void
.end method
