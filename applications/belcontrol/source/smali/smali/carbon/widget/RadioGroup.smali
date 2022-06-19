.class public Lcarbon/widget/RadioGroup;
.super Lcarbon/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/RadioGroup$d;,
        Lcarbon/widget/RadioGroup$b;,
        Lcarbon/widget/RadioGroup$c;,
        Lcarbon/widget/RadioGroup$LayoutParams;
    }
.end annotation


# instance fields
.field public S:I

.field public T:Lcarbon/widget/RadioButton$b;

.field public U:Z

.field public V:Lcarbon/widget/RadioGroup$c;

.field public W:Lcarbon/widget/RadioGroup$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcarbon/widget/RadioGroup;->S:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/widget/RadioGroup;->U:Z

    invoke-virtual {p0}, Lcarbon/widget/RadioGroup;->z()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcarbon/widget/RadioGroup;->S:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcarbon/widget/RadioGroup;->U:Z

    sget-object v2, Lp80;->RadioGroup:[I

    sget v3, Lh80;->radioButtonStyle:I

    invoke-virtual {p1, p2, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lp80;->RadioGroup_android_checkedButton:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcarbon/widget/RadioGroup;->S:I

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcarbon/widget/RadioGroup;->z()V

    return-void
.end method

.method public static synthetic s(Lcarbon/widget/RadioGroup;)Z
    .locals 0

    iget-boolean p0, p0, Lcarbon/widget/RadioGroup;->U:Z

    return p0
.end method

.method private setCheckedId(I)V
    .locals 1

    iput p1, p0, Lcarbon/widget/RadioGroup;->S:I

    iget-object v0, p0, Lcarbon/widget/RadioGroup;->V:Lcarbon/widget/RadioGroup$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcarbon/widget/RadioGroup$c;->a(Lcarbon/widget/RadioGroup;I)V

    :cond_0
    return-void
.end method

.method public static synthetic t(Lcarbon/widget/RadioGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcarbon/widget/RadioGroup;->U:Z

    return p1
.end method

.method public static synthetic u(Lcarbon/widget/RadioGroup;)I
    .locals 0

    iget p0, p0, Lcarbon/widget/RadioGroup;->S:I

    return p0
.end method

.method public static synthetic v(Lcarbon/widget/RadioGroup;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcarbon/widget/RadioGroup;->A(IZ)V

    return-void
.end method

.method public static synthetic w(Lcarbon/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/RadioGroup;->setCheckedId(I)V

    return-void
.end method

.method public static synthetic x(Lcarbon/widget/RadioGroup;)Lcarbon/widget/RadioButton$b;
    .locals 0

    iget-object p0, p0, Lcarbon/widget/RadioGroup;->T:Lcarbon/widget/RadioButton$b;

    return-object p0
.end method


# virtual methods
.method public final A(IZ)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcarbon/widget/RadioButton;

    if-eqz v0, :cond_0

    check-cast p1, Lcarbon/widget/RadioButton;

    invoke-virtual {p1, p2}, Lcarbon/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    instance-of v0, p1, Lcarbon/widget/RadioButton;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcarbon/widget/RadioButton;

    invoke-virtual {v0}, Lcarbon/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcarbon/widget/RadioGroup;->U:Z

    iget v1, p0, Lcarbon/widget/RadioGroup;->S:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1, v3}, Lcarbon/widget/RadioGroup;->A(IZ)V

    :cond_0
    iput-boolean v3, p0, Lcarbon/widget/RadioGroup;->U:Z

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcarbon/widget/RadioGroup;->setCheckedId(I)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcarbon/widget/RadioGroup$LayoutParams;

    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcarbon/widget/RadioGroup;->j()Lcarbon/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcarbon/widget/RadioGroup;->j()Lcarbon/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/widget/RadioGroup;->y(Landroid/util/AttributeSet;)Lcarbon/widget/RadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/widget/RadioGroup;->y(Landroid/util/AttributeSet;)Lcarbon/widget/RadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    iget v0, p0, Lcarbon/widget/RadioGroup;->S:I

    return v0
.end method

.method public j()Lcarbon/widget/LinearLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcarbon/widget/RadioGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcarbon/widget/RadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic k(Landroid/util/AttributeSet;)Lcarbon/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/widget/RadioGroup;->y(Landroid/util/AttributeSet;)Lcarbon/widget/RadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget v0, p0, Lcarbon/widget/RadioGroup;->S:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcarbon/widget/RadioGroup;->U:Z

    invoke-virtual {p0, v0, v1}, Lcarbon/widget/RadioGroup;->A(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcarbon/widget/RadioGroup;->U:Z

    iget v0, p0, Lcarbon/widget/RadioGroup;->S:I

    invoke-direct {p0, v0}, Lcarbon/widget/RadioGroup;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcarbon/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcarbon/widget/RadioGroup$c;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/RadioGroup;->V:Lcarbon/widget/RadioGroup$c;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/RadioGroup;->W:Lcarbon/widget/RadioGroup$d;

    invoke-static {v0, p1}, Lcarbon/widget/RadioGroup$d;->a(Lcarbon/widget/RadioGroup$d;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public y(Landroid/util/AttributeSet;)Lcarbon/widget/RadioGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcarbon/widget/RadioGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcarbon/widget/RadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final z()V
    .locals 2

    new-instance v0, Lcarbon/widget/RadioGroup$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcarbon/widget/RadioGroup$b;-><init>(Lcarbon/widget/RadioGroup;Lcarbon/widget/RadioGroup$a;)V

    iput-object v0, p0, Lcarbon/widget/RadioGroup;->T:Lcarbon/widget/RadioButton$b;

    new-instance v0, Lcarbon/widget/RadioGroup$d;

    invoke-direct {v0, p0, v1}, Lcarbon/widget/RadioGroup$d;-><init>(Lcarbon/widget/RadioGroup;Lcarbon/widget/RadioGroup$a;)V

    iput-object v0, p0, Lcarbon/widget/RadioGroup;->W:Lcarbon/widget/RadioGroup$d;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method
