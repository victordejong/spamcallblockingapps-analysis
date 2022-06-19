.class public Lcarbon/widget/InputLayout;
.super Lcarbon/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/InputLayout$a;,
        Lcarbon/widget/InputLayout$b;,
        Lcarbon/widget/InputLayout$c;
    }
.end annotation


# instance fields
.field public S:I

.field public T:Z

.field public U:Lcarbon/widget/TextView;

.field public V:Lcarbon/widget/InputLayout$b;

.field public W:Ljava/lang/String;

.field public a0:Lcarbon/widget/TextView;

.field public b0:Lcarbon/widget/InputLayout$c;

.field public c0:Lcarbon/widget/TextView;

.field public d0:Lcarbon/widget/InputLayout$a;

.field public e0:Lcarbon/widget/ImageView;

.field public f0:Lcarbon/widget/ImageView;

.field public g0:Lcarbon/widget/ImageView;

.field public h0:Landroid/view/ViewGroup;

.field public i0:Landroid/view/View;

.field public j0:Landroid/text/method/TransformationMethod;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcarbon/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/widget/InputLayout;->T:Z

    sget-object p1, Lcarbon/widget/InputLayout$b;->a:Lcarbon/widget/InputLayout$b;

    iput-object p1, p0, Lcarbon/widget/InputLayout;->V:Lcarbon/widget/InputLayout$b;

    sget-object p1, Lcarbon/widget/InputLayout$a;->a:Lcarbon/widget/InputLayout$a;

    iput-object p1, p0, Lcarbon/widget/InputLayout;->d0:Lcarbon/widget/InputLayout$a;

    sget p1, Lh80;->carbon_inputLayoutStyle:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcarbon/widget/InputLayout;->q(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lp80;->InputLayout:[I

    sget v1, Lh80;->carbon_inputLayoutStyle:I

    sget v2, Lp80;->InputLayout_carbon_theme:I

    invoke-static {p1, p2, v0, v1, v2}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcarbon/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/widget/InputLayout;->T:Z

    sget-object p1, Lcarbon/widget/InputLayout$b;->a:Lcarbon/widget/InputLayout$b;

    iput-object p1, p0, Lcarbon/widget/InputLayout;->V:Lcarbon/widget/InputLayout$b;

    sget-object p1, Lcarbon/widget/InputLayout$a;->a:Lcarbon/widget/InputLayout$a;

    iput-object p1, p0, Lcarbon/widget/InputLayout;->d0:Lcarbon/widget/InputLayout$a;

    invoke-virtual {p0, p2, v1}, Lcarbon/widget/InputLayout;->q(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lp80;->InputLayout:[I

    sget v1, Lp80;->InputLayout_carbon_theme:I

    invoke-static {p1, p2, v0, p3, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/widget/InputLayout;->T:Z

    sget-object p1, Lcarbon/widget/InputLayout$b;->a:Lcarbon/widget/InputLayout$b;

    iput-object p1, p0, Lcarbon/widget/InputLayout;->V:Lcarbon/widget/InputLayout$b;

    sget-object p1, Lcarbon/widget/InputLayout$a;->a:Lcarbon/widget/InputLayout$a;

    iput-object p1, p0, Lcarbon/widget/InputLayout;->d0:Lcarbon/widget/InputLayout$a;

    invoke-virtual {p0, p2, p3}, Lcarbon/widget/InputLayout;->q(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic r(Lcarbon/widget/EditText;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Lcarbon/widget/InputLayout;->z(Z)V

    invoke-virtual {p0, p1}, Lcarbon/widget/InputLayout;->y(Lcarbon/widget/EditText;)V

    return-void
.end method

.method private synthetic t(Lcarbon/widget/EditText;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p3

    iput-object p3, p0, Lcarbon/widget/InputLayout;->j0:Landroid/text/method/TransformationMethod;

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    :cond_1
    iget-object p3, p0, Lcarbon/widget/InputLayout;->j0:Landroid/text/method/TransformationMethod;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1, p2, v0}, Landroid/widget/EditText;->setSelection(II)V

    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic v(Lcarbon/widget/EditText;Landroid/view/View;)V
    .locals 0

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic w(Lcarbon/widget/InputLayout;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/widget/InputLayout;->z(Z)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/View;)V
    .locals 3

    const/16 v0, 0x8

    if-nez p1, :cond_0

    iget-object p1, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcarbon/widget/InputLayout;->b0:Lcarbon/widget/InputLayout$c;

    sget-object v2, Lcarbon/widget/InputLayout$c;->b:Lcarbon/widget/InputLayout$c;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcarbon/widget/InputLayout$c;->a:Lcarbon/widget/InputLayout$c;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcarbon/widget/InputLayout;->b0:Lcarbon/widget/InputLayout$c;

    sget-object v2, Lcarbon/widget/InputLayout$c;->d:Lcarbon/widget/InputLayout$c;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_5

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcarbon/widget/InputLayout;->b0:Lcarbon/widget/InputLayout$c;

    sget-object v2, Lcarbon/widget/InputLayout$c;->c:Lcarbon/widget/InputLayout$c;

    if-eq v1, v2, :cond_4

    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcarbon/widget/TextView;->h(I)Landroid/animation/Animator;

    instance-of v0, p1, Lcarbon/widget/EditText;

    if-eqz v0, :cond_6

    check-cast p1, Lcarbon/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcarbon/widget/InputLayout;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcarbon/widget/EditText;->t()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " *"

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    :goto_1
    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcarbon/widget/TextView;->h(I)Landroid/animation/Animator;

    instance-of v0, p1, Lcarbon/widget/EditText;

    if-eqz v0, :cond_6

    check-cast p1, Lcarbon/widget/EditText;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "inputLayout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, p3}, Lcarbon/widget/InputLayout;->x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    iget-object p2, p0, Lcarbon/widget/InputLayout;->h0:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public drawableStateChanged()V
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/InputLayout;->T:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcarbon/widget/InputLayout;->T:Z

    invoke-super {p0}, Lcarbon/widget/RelativeLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcarbon/widget/InputLayout;->i0:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcarbon/widget/InputLayout;->A(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcarbon/widget/InputLayout;->T:Z

    return-void
.end method

.method public getActionButton()Lcarbon/widget/InputLayout$a;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/InputLayout;->d0:Lcarbon/widget/InputLayout$a;

    return-object v0
.end method

.method public getBaseline()I
    .locals 2

    iget-object v0, p0, Lcarbon/widget/InputLayout;->i0:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getBaseline()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcarbon/widget/InputLayout;->i0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCounterTextSize()F
    .locals 1

    iget-object v0, p0, Lcarbon/widget/InputLayout;->a0:Lcarbon/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getCounterTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/InputLayout;->a0:Lcarbon/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getErrorTextSize()F
    .locals 1

    iget-object v0, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getErrorTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelStyle()Lcarbon/widget/InputLayout$c;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/InputLayout;->b0:Lcarbon/widget/InputLayout$c;

    return-object v0
.end method

.method public getLabelTextSize()F
    .locals 1

    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getLabelTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final q(Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lm80;->carbon_inputlayout:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Ll80;->carbon_error:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/TextView;

    iput-object v0, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    new-instance v1, Lcarbon/drawable/DefaultAccentColorStateList;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcarbon/drawable/DefaultAccentColorStateList;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcarbon/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcarbon/widget/TextView;->setValid(Z)V

    sget v0, Ll80;->carbon_counter:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/TextView;

    iput-object v0, p0, Lcarbon/widget/InputLayout;->a0:Lcarbon/widget/TextView;

    sget v0, Ll80;->carbon_label:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/TextView;

    iput-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    new-instance v2, Lcarbon/drawable/DefaultAccentColorStateList;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcarbon/drawable/DefaultAccentColorStateList;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcarbon/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    iget v2, p0, Lcarbon/widget/InputLayout;->S:I

    invoke-virtual {v0, v2}, Lcarbon/widget/TextView;->setGravity(I)V

    sget v0, Ll80;->carbon_clear:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/ImageView;

    iput-object v0, p0, Lcarbon/widget/InputLayout;->e0:Lcarbon/widget/ImageView;

    sget v0, Ll80;->carbon_showPassword:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/ImageView;

    iput-object v0, p0, Lcarbon/widget/InputLayout;->f0:Lcarbon/widget/ImageView;

    sget v0, Ll80;->carbon_voiceInput:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/ImageView;

    iput-object v0, p0, Lcarbon/widget/InputLayout;->g0:Lcarbon/widget/ImageView;

    sget v0, Ll80;->carbon_inputLayoutContainer:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcarbon/widget/InputLayout;->h0:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAddStatesFromChildren(Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lp80;->InputLayout:[I

    invoke-virtual {v0, p1, v2, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    if-ge p2, v0, :cond_a

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lp80;->InputLayout_carbon_errorFontPath:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcd0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcarbon/widget/InputLayout;->setErrorTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_4

    :cond_1
    sget v2, Lp80;->InputLayout_carbon_errorTextSize:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcarbon/widget/InputLayout;->setErrorTextSize(F)V

    goto/16 :goto_4

    :cond_2
    sget v2, Lp80;->InputLayout_carbon_errorFontFamily:I

    if-ne v0, v2, :cond_3

    sget v2, Lp80;->InputLayout_android_textStyle:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcd0;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_4

    sget v2, Lp80;->InputLayout_carbon_labelFontPath:I

    if-ne v0, v2, :cond_4

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcd0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lcarbon/widget/InputLayout;->setLabelTypeface(Landroid/graphics/Typeface;)V

    goto :goto_4

    :cond_4
    sget v2, Lp80;->InputLayout_carbon_counterTextSize:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcarbon/widget/InputLayout;->setCounterTextSize(F)V

    goto :goto_4

    :cond_5
    sget v2, Lp80;->InputLayout_carbon_labelFontFamily:I

    if-ne v0, v2, :cond_6

    sget v2, Lp80;->InputLayout_android_textStyle:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcd0;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_7

    sget v2, Lp80;->InputLayout_carbon_counterFontPath:I

    if-ne v0, v2, :cond_7

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcd0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v0}, Lcarbon/widget/InputLayout;->setCounterTypeface(Landroid/graphics/Typeface;)V

    goto :goto_4

    :cond_7
    sget v2, Lp80;->InputLayout_carbon_labelTextSize:I

    if-ne v0, v2, :cond_8

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcarbon/widget/InputLayout;->setLabelTextSize(F)V

    goto :goto_4

    :cond_8
    sget v2, Lp80;->InputLayout_carbon_counterFontFamily:I

    if-ne v0, v2, :cond_9

    sget v2, Lp80;->InputLayout_android_textStyle:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcd0;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_3

    :cond_9
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_a
    sget p2, Lp80;->InputLayout_carbon_error:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcarbon/widget/InputLayout;->setError(Ljava/lang/String;)V

    invoke-static {}, Lcarbon/widget/InputLayout$b;->values()[Lcarbon/widget/InputLayout$b;

    move-result-object p2

    sget v0, Lp80;->InputLayout_carbon_errorMode:I

    sget-object v2, Lcarbon/widget/InputLayout$b;->a:Lcarbon/widget/InputLayout$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Lcarbon/widget/InputLayout;->setErrorMode(Lcarbon/widget/InputLayout$b;)V

    invoke-static {}, Lcarbon/widget/InputLayout$c;->values()[Lcarbon/widget/InputLayout$c;

    move-result-object p2

    sget v0, Lp80;->InputLayout_carbon_labelStyle:I

    sget-object v2, Lcarbon/widget/InputLayout$c;->a:Lcarbon/widget/InputLayout$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Lcarbon/widget/InputLayout;->setLabelStyle(Lcarbon/widget/InputLayout$c;)V

    sget p2, Lp80;->InputLayout_carbon_label:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcarbon/widget/InputLayout;->setLabel(Ljava/lang/String;)V

    invoke-static {}, Lcarbon/widget/InputLayout$a;->values()[Lcarbon/widget/InputLayout$a;

    move-result-object p2

    sget v0, Lp80;->InputLayout_carbon_actionButton:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Lcarbon/widget/InputLayout;->setActionButton(Lcarbon/widget/InputLayout$a;)V

    sget p2, Lp80;->InputLayout_android_gravity:I

    const v0, 0x800003

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/InputLayout;->setGravity(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public synthetic s(Lcarbon/widget/EditText;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcarbon/widget/InputLayout;->r(Lcarbon/widget/EditText;Z)V

    return-void
.end method

.method public setActionButton(Lcarbon/widget/InputLayout$a;)V
    .locals 5

    iget-object v0, p0, Lcarbon/widget/InputLayout;->i0:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget-object v2, p0, Lcarbon/widget/InputLayout;->d0:Lcarbon/widget/InputLayout$a;

    sget-object v3, Lcarbon/widget/InputLayout$a;->a:Lcarbon/widget/InputLayout$a;

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lj80;->carbon_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lj80;->carbon_iconSize:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcarbon/widget/InputLayout;->d0:Lcarbon/widget/InputLayout$a;

    iget-object v2, p0, Lcarbon/widget/InputLayout;->e0:Lcarbon/widget/ImageView;

    sget-object v3, Lcarbon/widget/InputLayout$a;->b:Lcarbon/widget/InputLayout$a;

    const/16 v4, 0x8

    if-ne p1, v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcarbon/widget/InputLayout;->f0:Lcarbon/widget/ImageView;

    sget-object v3, Lcarbon/widget/InputLayout$a;->c:Lcarbon/widget/InputLayout$a;

    if-ne p1, v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcarbon/widget/InputLayout;->g0:Lcarbon/widget/ImageView;

    sget-object v3, Lcarbon/widget/InputLayout$a;->d:Lcarbon/widget/InputLayout$a;

    if-ne p1, v3, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lj80;->carbon_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lj80;->carbon_iconSize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v0, p1

    :cond_5
    iget-object p1, p0, Lcarbon/widget/InputLayout;->i0:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcarbon/widget/InputLayout;->i0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcarbon/widget/InputLayout;->i0:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    return-void
.end method

.method public setCounterTextSize(F)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/InputLayout;->a0:Lcarbon/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcarbon/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setCounterTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/InputLayout;->a0:Lcarbon/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setErrorMode(Lcarbon/widget/InputLayout$b;)V
    .locals 2

    iput-object p1, p0, Lcarbon/widget/InputLayout;->V:Lcarbon/widget/InputLayout$b;

    iget-object v0, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    sget-object v1, Lcarbon/widget/InputLayout$b;->a:Lcarbon/widget/InputLayout$b;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    sget-object v1, Lcarbon/widget/InputLayout$b;->b:Lcarbon/widget/InputLayout$b;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setErrorTextSize(F)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcarbon/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setErrorTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iput p1, p0, Lcarbon/widget/InputLayout;->S:I

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcarbon/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/InputLayout;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcarbon/widget/InputLayout;->W:Ljava/lang/String;

    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcarbon/widget/InputLayout;->i0:Landroid/view/View;

    instance-of v2, p1, Lcarbon/widget/EditText;

    if-eqz v2, :cond_0

    check-cast p1, Lcarbon/widget/EditText;

    invoke-virtual {p1}, Lcarbon/widget/EditText;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " *"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcarbon/widget/InputLayout;->i0:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcarbon/widget/InputLayout;->A(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setLabelStyle(Lcarbon/widget/InputLayout$c;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/InputLayout;->b0:Lcarbon/widget/InputLayout$c;

    iget-object p1, p0, Lcarbon/widget/InputLayout;->i0:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcarbon/widget/InputLayout;->A(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setLabelTextSize(F)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcarbon/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setLabelTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public synthetic u(Lcarbon/widget/EditText;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/InputLayout;->t(Lcarbon/widget/EditText;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    iput-object p1, p0, Lcarbon/widget/InputLayout;->i0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Ll80;->carbon_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    const/4 v0, 0x3

    sget v1, Ll80;->carbon_label:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    instance-of v0, p1, Lcarbon/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcarbon/widget/EditText;

    iget-object v2, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcarbon/widget/InputLayout;->setLabel(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v2, Lwf0;

    invoke-direct {v2, p0, v0}, Lwf0;-><init>(Lcarbon/widget/InputLayout;Lcarbon/widget/EditText;)V

    invoke-virtual {v0, v2}, Lcarbon/widget/EditText;->b(Lkh0;)V

    iget-object v2, p0, Lcarbon/widget/InputLayout;->f0:Lcarbon/widget/ImageView;

    new-instance v3, Lxf0;

    invoke-direct {v3, p0, v0}, Lxf0;-><init>(Lcarbon/widget/InputLayout;Lcarbon/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcarbon/widget/InputLayout;->e0:Lcarbon/widget/ImageView;

    new-instance v3, Lvf0;

    invoke-direct {v3, v0}, Lvf0;-><init>(Lcarbon/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-virtual {v2, v1}, Lcarbon/widget/TextView;->setInAnimator(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-virtual {v2, v1}, Lcarbon/widget/TextView;->setOutAnimator(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcarbon/widget/InputLayout;->W:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcarbon/widget/InputLayout;->setLabel(Ljava/lang/String;)V

    iget-object v2, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    invoke-virtual {v2, v1}, Lcarbon/widget/TextView;->setInAnimator(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    invoke-virtual {v2, v1}, Lcarbon/widget/TextView;->setOutAnimator(Landroid/animation/Animator;)V

    invoke-virtual {v0}, Lcarbon/widget/EditText;->a()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcarbon/widget/InputLayout;->z(Z)V

    invoke-virtual {p0, v0}, Lcarbon/widget/InputLayout;->A(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcarbon/widget/InputLayout;->y(Lcarbon/widget/EditText;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lbe0;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lbe0;

    new-instance v2, Lyf0;

    invoke-direct {v2, p0}, Lyf0;-><init>(Lcarbon/widget/InputLayout;)V

    invoke-interface {v0, v2}, Lbe0;->b(Lkh0;)V

    iget-object v2, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-virtual {v2, v1}, Lcarbon/widget/TextView;->setInAnimator(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-virtual {v2, v1}, Lcarbon/widget/TextView;->setOutAnimator(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    invoke-virtual {v2, v1}, Lcarbon/widget/TextView;->setInAnimator(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    invoke-virtual {v2, v1}, Lcarbon/widget/TextView;->setOutAnimator(Landroid/animation/Animator;)V

    invoke-interface {v0}, Lje0;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcarbon/widget/InputLayout;->z(Z)V

    invoke-virtual {p0, p1}, Lcarbon/widget/InputLayout;->A(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-static {}, Lfa0;->e()Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/widget/TextView;->setInAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-static {}, Lfa0;->d()Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/widget/TextView;->setOutAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    invoke-static {}, Lfa0;->c()Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/widget/TextView;->setInAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    invoke-static {}, Lfa0;->d()Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/widget/TextView;->setOutAnimator(Landroid/animation/Animator;)V

    :cond_3
    iget-object v0, p0, Lcarbon/widget/InputLayout;->d0:Lcarbon/widget/InputLayout$a;

    sget-object v1, Lcarbon/widget/InputLayout$a;->a:Lcarbon/widget/InputLayout$a;

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lj80;->carbon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lj80;->carbon_iconSize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    return-object p2
.end method

.method public final y(Lcarbon/widget/EditText;)V
    .locals 5

    invoke-virtual {p1}, Lcarbon/widget/EditText;->getMinCharacters()I

    move-result v0

    invoke-virtual {p1}, Lcarbon/widget/EditText;->getMaxCharacters()I

    move-result v1

    iget-object v2, p0, Lcarbon/widget/InputLayout;->a0:Lcarbon/widget/TextView;

    invoke-virtual {p1}, Lcarbon/widget/EditText;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcarbon/widget/TextView;->setValid(Z)V

    const v2, 0x7fffffff

    const-string v3, " / "

    const/4 v4, 0x0

    if-lez v0, :cond_0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcarbon/widget/InputLayout;->a0:Lcarbon/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcarbon/widget/InputLayout;->a0:Lcarbon/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcarbon/widget/InputLayout;->a0:Lcarbon/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcarbon/widget/InputLayout;->a0:Lcarbon/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "+"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcarbon/widget/InputLayout;->a0:Lcarbon/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcarbon/widget/InputLayout;->a0:Lcarbon/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcarbon/widget/InputLayout;->a0:Lcarbon/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final z(Z)V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/InputLayout;->c0:Lcarbon/widget/TextView;

    invoke-virtual {v0, p1}, Lcarbon/widget/TextView;->setValid(Z)V

    iget-object v0, p0, Lcarbon/widget/InputLayout;->U:Lcarbon/widget/TextView;

    iget-object v1, p0, Lcarbon/widget/InputLayout;->V:Lcarbon/widget/InputLayout$b;

    sget-object v2, Lcarbon/widget/InputLayout$b;->b:Lcarbon/widget/InputLayout$b;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcarbon/widget/InputLayout$b;->a:Lcarbon/widget/InputLayout$b;

    if-ne v1, v2, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcarbon/widget/InputLayout$b;->c:Lcarbon/widget/InputLayout$b;

    if-ne v1, p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lcarbon/widget/TextView;->h(I)Landroid/animation/Animator;

    return-void
.end method
