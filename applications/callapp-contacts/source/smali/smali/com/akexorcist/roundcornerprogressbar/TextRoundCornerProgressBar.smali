.class public Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;
.super Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;
    }
.end annotation


# static fields
.field protected static final DEFAULT_TEXT_MARGIN:I = 0xa

.field protected static final DEFAULT_TEXT_SIZE:I = 0x10

.field public static final GRAVITY_END:I = 0x1

.field public static final GRAVITY_START:I = 0x0

.field public static final PRIORITY_INSIDE:I = 0x0

.field public static final PRIORITY_OUTSIDE:I = 0x1


# instance fields
.field private colorTextProgress:I

.field private textInsideGravity:I

.field private textOutsideGravity:I

.field private textPositionPriority:I

.field private textProgress:Ljava/lang/String;

.field private textProgressMargin:I

.field private textProgressSize:I

.field private tvProgress:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressPosition()V

    return-void
.end method

.method private alignTextProgressInsideProgress()V
    .locals 8

    .line 223
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->isReverse()Z

    move-result v1

    const/16 v2, 0x12

    const/16 v3, 0x13

    const/4 v4, 0x5

    const/4 v5, 0x7

    const/4 v6, 0x1

    const/16 v7, 0x11

    if-eqz v1, :cond_1

    .line 225
    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textInsideGravity:I

    if-ne v1, v6, :cond_0

    .line 226
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_progress:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 227
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_3

    .line 228
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_progress:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 231
    :cond_0
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_progress:I

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 232
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_3

    .line 233
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_progress:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 237
    :cond_1
    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textInsideGravity:I

    if-ne v1, v6, :cond_2

    .line 238
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_progress:I

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 239
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_3

    .line 240
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_progress:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 243
    :cond_2
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_progress:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 244
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_3

    .line 245
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_progress:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 249
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private alignTextProgressOutsideProgress()V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 254
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->isReverse()Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x11

    if-eqz v1, :cond_1

    .line 255
    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textOutsideGravity:I

    if-ne v1, v2, :cond_0

    const/16 v1, 0x9

    .line 256
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 257
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    const/16 v1, 0x14

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 261
    sget v2, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_progress:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 262
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    const/16 v1, 0x10

    .line 263
    sget v2, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_progress:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 267
    :cond_1
    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textOutsideGravity:I

    if-ne v1, v2, :cond_2

    const/16 v1, 0xb

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 269
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    const/16 v1, 0x15

    .line 270
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 273
    :cond_2
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_progress:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 274
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    .line 275
    sget v1, Lcom/akexorcist/roundcornerprogressbar/a$b;->layout_progress:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 279
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private clearTextProgressAlign()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 205
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v1, 0x1

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v1, 0x5

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v1, 0x7

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0x9

    .line 209
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0xb

    .line 210
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 211
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    const/16 v1, 0x10

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 213
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0x12

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0x13

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0x14

    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0x15

    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private drawTextProgress()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->tvProgress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private drawTextProgressColor()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->tvProgress:Landroid/widget/TextView;

    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->colorTextProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private drawTextProgressMargin()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 179
    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgressMargin:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 180
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private drawTextProgressPosition()V
    .locals 4

    .line 184
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->clearTextProgressAlign()V

    .line 185
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->getTextProgressMargin()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 186
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->getMax()F

    move-result v1

    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->getProgress()F

    move-result v2

    div-float/2addr v1, v2

    .line 187
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->getLayoutWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->getPadding()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 188
    iget v2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textPositionPriority:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->getLayoutWidth()F

    move-result v2

    int-to-float v1, v1

    sub-float/2addr v2, v1

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->alignTextProgressOutsideProgress()V

    return-void

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->alignTextProgressInsideProgress()V

    return-void

    .line 195
    :cond_1
    iget v2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgressMargin:I

    add-int/2addr v0, v2

    if-le v0, v1, :cond_2

    .line 196
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->alignTextProgressOutsideProgress()V

    return-void

    .line 198
    :cond_2
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->alignTextProgressInsideProgress()V

    return-void
.end method

.method private drawTextProgressSize()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->tvProgress:Landroid/widget/TextView;

    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgressSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public drawProgress(Landroid/widget/LinearLayout;Landroid/graphics/drawable/GradientDrawable;FFFIIZ)V
    .locals 3

    .line 129
    div-int/lit8 p8, p7, 0x2

    sub-int p8, p6, p8

    const/16 v0, 0x8

    new-array v0, v0, [F

    int-to-float p8, p8

    const/4 v1, 0x0

    aput p8, v0, v1

    const/4 v2, 0x1

    aput p8, v0, v2

    const/4 v2, 0x2

    aput p8, v0, v2

    const/4 v2, 0x3

    aput p8, v0, v2

    const/4 v2, 0x4

    aput p8, v0, v2

    const/4 v2, 0x5

    aput p8, v0, v2

    const/4 v2, 0x6

    aput p8, v0, v2

    const/4 v2, 0x7

    aput p8, v0, v2

    .line 130
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 131
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    div-float/2addr p3, p4

    mul-int/lit8 p2, p7, 0x2

    int-to-float p2, p2

    sub-float/2addr p5, p2

    div-float/2addr p5, p3

    float-to-int p2, p5

    .line 135
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 136
    div-int/lit8 p4, p2, 0x2

    add-int p5, p7, p4

    if-ge p5, p6, :cond_0

    sub-int/2addr p6, p7

    .line 137
    invoke-static {p6, v1}, Ljava/lang/Math;->max(II)I

    move-result p5

    sub-int/2addr p5, p4

    .line 138
    iput p5, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 139
    iput p5, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 141
    :cond_0
    iput v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 142
    iput v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 144
    :goto_0
    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 145
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getProgressText()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgress:Ljava/lang/String;

    return-object v0
.end method

.method public getTextInsideGravity()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textInsideGravity:I

    return v0
.end method

.method public getTextOutsideGravity()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textOutsideGravity:I

    return v0
.end method

.method public getTextPositionPriority()I
    .locals 1

    .line 334
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textPositionPriority:I

    return v0
.end method

.method public getTextProgressColor()I
    .locals 1

    .line 304
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->colorTextProgress:I

    return v0
.end method

.method public getTextProgressMargin()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgressMargin:I

    return v0
.end method

.method public getTextProgressSize()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgressSize:I

    return v0
.end method

.method public initLayout()I
    .locals 1

    .line 93
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$c;->layout_text_round_corner_progress_bar:I

    return v0
.end method

.method public initStyleable(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 98
    sget-object v0, Lcom/akexorcist/roundcornerprogressbar/a$d;->TextRoundCornerProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 100
    sget p2, Lcom/akexorcist/roundcornerprogressbar/a$d;->TextRoundCornerProgressBar_rcTextProgressColor:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->colorTextProgress:I

    .line 102
    sget p2, Lcom/akexorcist/roundcornerprogressbar/a$d;->TextRoundCornerProgressBar_rcTextProgressSize:I

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->dp2px(F)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgressSize:I

    .line 103
    sget p2, Lcom/akexorcist/roundcornerprogressbar/a$d;->TextRoundCornerProgressBar_rcTextProgressMargin:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->dp2px(F)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgressMargin:I

    .line 105
    sget p2, Lcom/akexorcist/roundcornerprogressbar/a$d;->TextRoundCornerProgressBar_rcTextProgress:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgress:Ljava/lang/String;

    .line 107
    sget p2, Lcom/akexorcist/roundcornerprogressbar/a$d;->TextRoundCornerProgressBar_rcTextInsideGravity:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textInsideGravity:I

    .line 108
    sget p2, Lcom/akexorcist/roundcornerprogressbar/a$d;->TextRoundCornerProgressBar_rcTextOutsideGravity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textOutsideGravity:I

    .line 109
    sget p2, Lcom/akexorcist/roundcornerprogressbar/a$d;->TextRoundCornerProgressBar_rcTextPositionPriority:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textPositionPriority:I

    .line 111
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public initView()V
    .locals 1

    .line 116
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$b;->tv_progress:I

    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->tvProgress:Landroid/widget/TextView;

    .line 117
    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 365
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressPosition()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 387
    instance-of v0, p1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;

    if-nez v0, :cond_0

    .line 388
    invoke-super {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 392
    :cond_0
    check-cast p1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;

    .line 393
    invoke-virtual {p1}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 395
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->colorTextProgress:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->colorTextProgress:I

    .line 396
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textProgressSize:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgressSize:I

    .line 397
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textProgressMargin:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgressMargin:I

    .line 399
    iget-object v0, p1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textProgress:Ljava/lang/String;

    iput-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgress:Ljava/lang/String;

    .line 401
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textInsideGravity:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textInsideGravity:I

    .line 402
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textOutsideGravity:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textOutsideGravity:I

    .line 403
    iget p1, p1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textPositionPriority:I

    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textPositionPriority:I

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 370
    invoke-super {p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 371
    new-instance v1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 373
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->colorTextProgress:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->colorTextProgress:I

    .line 374
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgressSize:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textProgressSize:I

    .line 375
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgressMargin:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textProgressMargin:I

    .line 377
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgress:Ljava/lang/String;

    iput-object v0, v1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textProgress:Ljava/lang/String;

    .line 379
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textInsideGravity:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textInsideGravity:I

    .line 380
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textOutsideGravity:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textOutsideGravity:I

    .line 381
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textPositionPriority:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$SavedState;->textPositionPriority:I

    return-object v1
.end method

.method public onViewDraw()V
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgress()V

    .line 151
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressSize()V

    .line 152
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressMargin()V

    .line 156
    new-instance v0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$1;

    invoke-direct {v0, p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar$1;-><init>(Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;)V

    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 162
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressColor()V

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 299
    invoke-super {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->setProgress(F)V

    .line 300
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressPosition()V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    int-to-float p1, p1

    .line 294
    invoke-virtual {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setProgress(F)V

    return-void
.end method

.method public setProgressText(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgress:Ljava/lang/String;

    .line 288
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgress()V

    .line 289
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressPosition()V

    return-void
.end method

.method public setTextInsideGravity(I)V
    .locals 0

    .line 348
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textInsideGravity:I

    .line 349
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressPosition()V

    return-void
.end method

.method public setTextOutsideGravity(I)V
    .locals 0

    .line 358
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textOutsideGravity:I

    .line 359
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressPosition()V

    return-void
.end method

.method public setTextPositionPriority(I)V
    .locals 0

    .line 338
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textPositionPriority:I

    .line 339
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressPosition()V

    return-void
.end method

.method public setTextProgressColor(I)V
    .locals 0

    .line 308
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->colorTextProgress:I

    .line 309
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressColor()V

    return-void
.end method

.method public setTextProgressMargin(I)V
    .locals 0

    .line 327
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgressMargin:I

    .line 328
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressMargin()V

    .line 329
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressPosition()V

    return-void
.end method

.method public setTextProgressSize(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->textProgressSize:I

    .line 318
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressSize()V

    .line 319
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->drawTextProgressPosition()V

    return-void
.end method
