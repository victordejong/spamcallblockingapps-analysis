.class public Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final l:Ljava/lang/String;


# instance fields
.field public a:Landroid/widget/EditText;

.field public b:Landroid/widget/ImageButton;

.field public c:Landroid/view/View;

.field public d:Landroid/content/res/ColorStateList;

.field public f:Landroid/view/ViewGroup;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public final j:[I

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xc

    new-array p3, p3, [I

    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->j:[I

    sget-object p3, Ljq0;->Dialpad:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070112

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->k:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    const/4 p2, 0x1

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a06dd
        0x7f0a0487
        0x7f0a0669
        0x7f0a0644
        0x7f0a02c7
        0x7f0a02ba
        0x7f0a058b
        0x7f0a0579
        0x7f0a0277
        0x7f0a0478
        0x7f0a05a5
        0x7f0a04c1
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 7

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView$a;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->j:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->c(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe51eb851eb851fL    # 0.66

    mul-double v2, v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->j:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->d(I)I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double v3, v3, v5

    double-to-int v3, v3

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->j:[I

    aget v4, v4, v1

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->k:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    sget-object v4, Lqv0;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)I
    .locals 1

    const v0, 0x7f0a0487

    if-ne p1, v0, :cond_0

    const/16 p1, 0x21

    return p1

    :cond_0
    const v0, 0x7f0a0669

    if-ne p1, v0, :cond_1

    const/16 p1, 0x42

    return p1

    :cond_1
    const v0, 0x7f0a0644

    if-ne p1, v0, :cond_2

    const/16 p1, 0x63

    return p1

    :cond_2
    const v0, 0x7f0a02c7

    if-ne p1, v0, :cond_3

    const/16 p1, 0x84

    return p1

    :cond_3
    const v0, 0x7f0a02ba

    if-ne p1, v0, :cond_4

    const/16 p1, 0xa5

    return p1

    :cond_4
    const v0, 0x7f0a058b

    if-ne p1, v0, :cond_5

    const/16 p1, 0xc6

    return p1

    :cond_5
    const v0, 0x7f0a0579

    if-ne p1, v0, :cond_6

    const/16 p1, 0xe7

    return p1

    :cond_6
    const v0, 0x7f0a0277

    if-ne p1, v0, :cond_7

    const/16 p1, 0x108

    return p1

    :cond_7
    const v0, 0x7f0a0478

    if-ne p1, v0, :cond_8

    const/16 p1, 0x129

    return p1

    :cond_8
    const v0, 0x7f0a05a5

    if-ne p1, v0, :cond_9

    const/16 p1, 0x14a

    return p1

    :cond_9
    const v0, 0x7f0a06dd

    if-eq p1, v0, :cond_b

    const v0, 0x7f0a04c1

    if-ne p1, v0, :cond_a

    goto :goto_0

    :cond_a
    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->l:Ljava/lang/String;

    const-string v0, "Attempted to get animation delay for invalid key button id."

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_0
    const/16 p1, 0x16b

    return p1
.end method

.method public final d(I)I
    .locals 1

    const v0, 0x7f0a0487

    if-eq p1, v0, :cond_5

    const v0, 0x7f0a0669

    if-eq p1, v0, :cond_5

    const v0, 0x7f0a0644

    if-eq p1, v0, :cond_5

    const v0, 0x7f0a02c7

    if-eq p1, v0, :cond_5

    const v0, 0x7f0a02ba

    if-eq p1, v0, :cond_5

    const v0, 0x7f0a058b

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const v0, 0x7f0a0579

    if-eq p1, v0, :cond_4

    const v0, 0x7f0a0277

    if-eq p1, v0, :cond_4

    const v0, 0x7f0a0478

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x7f0a05a5

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a06dd

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a04c1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->l:Ljava/lang/String;

    const-string v0, "Attempted to get animation duration for invalid key button id."

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/16 p1, 0x108

    return p1

    :cond_4
    :goto_1
    const/16 p1, 0x129

    return p1

    :cond_5
    :goto_2
    const/16 p1, 0x14a

    return p1
.end method

.method public final e()V
    .locals 14

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fa"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    :goto_0
    invoke-static {v2}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->j:[I

    array-length v6, v5

    if-ge v4, v6, :cond_5

    aget v5, v5, v4

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;

    const v6, 0x7f0a0252

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0251

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->j:[I

    aget v9, v8, v4

    const v10, 0x7f0a04c1

    if-ne v9, v10, :cond_1

    const v8, 0x7f1102a3

    :goto_2
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    goto :goto_3

    :cond_1
    aget v8, v8, v4

    const v9, 0x7f0a05a5

    if-ne v8, v9, :cond_2

    const v8, 0x7f1102a5

    goto :goto_2

    :cond_2
    int-to-long v8, v4

    invoke-virtual {v2, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    aget v9, v0, v4

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v10

    new-instance v11, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v11, v9}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v13, v9

    const/16 v9, 0x21

    invoke-interface {v10, v11, v12, v13, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const v11, 0x7f0800a2

    invoke-virtual {p0, v9, v11}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/RippleDrawable;

    iget-object v11, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->d:Landroid/content/res/ColorStateList;

    if-eqz v11, :cond_3

    invoke-virtual {v9, v11}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    invoke-virtual {v5, v10}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v7, :cond_4

    aget v5, v0, v4

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    const v0, 0x7f0a0487

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;

    const v2, 0x7f11027d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a06dd

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;

    const v2, 0x7f11027c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :array_0
    .array-data 4
        0x7f110298
        0x7f110299
        0x7f11029a
        0x7f11029b
        0x7f11029c
        0x7f11029d
        0x7f11029e
        0x7f11029f
        0x7f1102a0
        0x7f1102a1
        0x7f1102a4
        0x7f1102a2
    .end array-data
.end method

.method public getDeleteButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->b:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDigits()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public getOverflowMenuButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->c:Landroid/view/View;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->e()V

    const v0, 0x7f0a0256

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->a:Landroid/widget/EditText;

    const v0, 0x7f0a023b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->b:Landroid/widget/ImageButton;

    const v0, 0x7f0a0254

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->c:Landroid/view/View;

    const v0, 0x7f0a04fc

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->f:Landroid/view/ViewGroup;

    const v1, 0x7f0a0313

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->f:Landroid/view/ViewGroup;

    const v1, 0x7f0a0314

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setCallRateInformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->f:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->f:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCanDigitsBeEdited(Z)V
    .locals 4

    const v0, 0x7f0a023b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0254

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0256

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setClickable(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLongClickable(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return-void
.end method

.method public setShowVoicemailButton(Z)V
    .locals 1

    const v0, 0x7f0a0253

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
