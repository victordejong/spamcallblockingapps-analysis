.class public Lcarbon/widget/DropDown;
.super Lcarbon/widget/EditText;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/DropDown$SavedState;,
        Lcarbon/widget/DropDown$e;,
        Lcarbon/widget/DropDown$d;,
        Lcarbon/widget/DropDown$k;,
        Lcarbon/widget/DropDown$c;,
        Lcarbon/widget/DropDown$f;,
        Lcarbon/widget/DropDown$i;,
        Lcarbon/widget/DropDown$h;,
        Lcarbon/widget/DropDown$j;,
        Lcarbon/widget/DropDown$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type::",
        "Ljava/io/Serializable;",
        ">",
        "Lcarbon/widget/EditText;"
    }
.end annotation


# instance fields
.field public A0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TType;>;"
        }
    .end annotation
.end field

.field public B0:Lsc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsc0<",
            "TType;>;"
        }
    .end annotation
.end field

.field public C0:Lcarbon/widget/DropDown$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcarbon/widget/DropDown$h<",
            "TType;>;"
        }
    .end annotation
.end field

.field public D0:Lcarbon/widget/DropDown$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcarbon/widget/DropDown$i<",
            "TType;>;"
        }
    .end annotation
.end field

.field public E0:Z

.field public F0:Landroid/view/GestureDetector;

.field public G0:Lcarbon/widget/RecyclerView$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcarbon/widget/RecyclerView$d<",
            "TType;>;"
        }
    .end annotation
.end field

.field public y0:Lxb0;

.field public z0:Lcarbon/widget/DropDown$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcarbon/widget/DropDown$f<",
            "TType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    sget v0, Lh80;->carbon_dropDownStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcarbon/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v2, Lcf0;->a:Lcf0;

    iput-object v2, p0, Lcarbon/widget/DropDown;->z0:Lcarbon/widget/DropDown$f;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcarbon/widget/DropDown;->A0:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcarbon/widget/DropDown;->E0:Z

    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcarbon/widget/DropDown$a;

    invoke-direct {v3, p0}, Lcarbon/widget/DropDown$a;-><init>(Lcarbon/widget/DropDown;)V

    invoke-direct {v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcarbon/widget/DropDown;->F0:Landroid/view/GestureDetector;

    new-instance v2, Lcarbon/widget/DropDown$b;

    invoke-direct {v2, p0}, Lcarbon/widget/DropDown$b;-><init>(Lcarbon/widget/DropDown;)V

    iput-object v2, p0, Lcarbon/widget/DropDown;->G0:Lcarbon/widget/RecyclerView$d;

    invoke-virtual {p0, p1, v1, v0}, Lcarbon/widget/DropDown;->K(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget v0, Lh80;->carbon_dropDownStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcarbon/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v1, Lcf0;->a:Lcf0;

    iput-object v1, p0, Lcarbon/widget/DropDown;->z0:Lcarbon/widget/DropDown$f;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcarbon/widget/DropDown;->A0:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcarbon/widget/DropDown;->E0:Z

    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcarbon/widget/DropDown$a;

    invoke-direct {v2, p0}, Lcarbon/widget/DropDown$a;-><init>(Lcarbon/widget/DropDown;)V

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcarbon/widget/DropDown;->F0:Landroid/view/GestureDetector;

    new-instance v1, Lcarbon/widget/DropDown$b;

    invoke-direct {v1, p0}, Lcarbon/widget/DropDown$b;-><init>(Lcarbon/widget/DropDown;)V

    iput-object v1, p0, Lcarbon/widget/DropDown;->G0:Lcarbon/widget/RecyclerView$d;

    invoke-virtual {p0, p1, p2, v0}, Lcarbon/widget/DropDown;->K(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcf0;->a:Lcf0;

    iput-object v0, p0, Lcarbon/widget/DropDown;->z0:Lcarbon/widget/DropDown$f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcarbon/widget/DropDown;->A0:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcarbon/widget/DropDown;->E0:Z

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcarbon/widget/DropDown$a;

    invoke-direct {v1, p0}, Lcarbon/widget/DropDown$a;-><init>(Lcarbon/widget/DropDown;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcarbon/widget/DropDown;->F0:Landroid/view/GestureDetector;

    new-instance v0, Lcarbon/widget/DropDown$b;

    invoke-direct {v0, p0}, Lcarbon/widget/DropDown$b;-><init>(Lcarbon/widget/DropDown;)V

    iput-object v0, p0, Lcarbon/widget/DropDown;->G0:Lcarbon/widget/RecyclerView$d;

    invoke-virtual {p0, p1, p2, p3}, Lcarbon/widget/DropDown;->K(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic L()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcarbon/widget/DropDown;->E0:Z

    return-void
.end method

.method public static synthetic N(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public final K(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/EditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lxb0;

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ln80;->carbon_dropdown:I

    invoke-direct {v0, v1, v2}, Lxb0;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcarbon/widget/DropDown;->y0:Lxb0;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld80;->c(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcarbon/widget/DropDown;->y0:Lxb0;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Lxb0;->setBounds(IIII)V

    iget-object v0, p0, Lcarbon/widget/DropDown;->y0:Lxb0;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v1}, Lcarbon/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->DropDown:[I

    sget v2, Lo80;->carbon_DropDown:I

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lp80;->DropDown_carbon_popupTheme:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    new-instance v0, Lsc0;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lsc0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    new-instance p1, Lbf0;

    invoke-direct {p1, p0}, Lbf0;-><init>(Lcarbon/widget/DropDown;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p1, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-static {}, Lcarbon/widget/DropDown$g;->values()[Lcarbon/widget/DropDown$g;

    move-result-object p3

    sget v0, Lp80;->DropDown_carbon_mode:I

    sget-object v1, Lcarbon/widget/DropDown$g;->a:Lcarbon/widget/DropDown$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Lsc0;->r(Lcarbon/widget/DropDown$g;)V

    invoke-static {}, Lcarbon/widget/DropDown$j;->values()[Lcarbon/widget/DropDown$j;

    move-result-object p1

    sget p3, Lp80;->DropDown_carbon_style:I

    sget-object v0, Lcarbon/widget/DropDown$j;->a:Lcarbon/widget/DropDown$j;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    aget-object p1, p1, p3

    invoke-virtual {p0, p1}, Lcarbon/widget/DropDown;->setStyle(Lcarbon/widget/DropDown$j;)V

    iget-object p1, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    iget-object p3, p0, Lcarbon/widget/DropDown;->G0:Lcarbon/widget/RecyclerView$d;

    invoke-virtual {p1, p3}, Lsc0;->s(Lcarbon/widget/RecyclerView$d;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public synthetic M()V
    .locals 0

    invoke-direct {p0}, Lcarbon/widget/DropDown;->L()V

    return-void
.end method

.method public O()V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    iget-object v1, p0, Lcarbon/widget/DropDown;->z0:Lcarbon/widget/DropDown$f;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcarbon/widget/DropDown$f;->a(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lsc0;->p(Ljava/lang/Object;)V

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0, p0}, Lsc0;->x(Landroid/view/View;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcarbon/widget/DropDown;->E0:Z

    return-void
.end method

.method public getAdapter()Lid0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lid0<",
            "*TType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0}, Lsc0;->c()Lid0;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Lcarbon/widget/DropDown$g;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0}, Lsc0;->d()Lcarbon/widget/DropDown$g;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0}, Lsc0;->e()I

    move-result v0

    return v0
.end method

.method public getSelectedIndices()[I
    .locals 1

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0}, Lsc0;->f()[I

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItem()Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0}, Lsc0;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0}, Lsc0;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcarbon/widget/DropDown$j;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0}, Lsc0;->j()Lcarbon/widget/DropDown$j;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcarbon/widget/DropDown;->E0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0, p0}, Lsc0;->y(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcarbon/widget/DropDown;->E0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0}, Lsc0;->b()V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcarbon/widget/EditText;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    sget p2, Ll80;->carbon_popupContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcarbon/widget/FrameLayout;

    invoke-virtual {p1}, Lcarbon/widget/FrameLayout;->getAnimator()Landroid/animation/Animator;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {p1}, Lsc0;->update()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcarbon/widget/DropDown$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcarbon/widget/DropDown$SavedState;

    invoke-virtual {p1}, Lcarbon/widget/DropDown$SavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcarbon/widget/DropDown$SavedState;->a:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcarbon/widget/DropDown;->E0:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcarbon/widget/DropDown$SavedState;

    invoke-direct {v1, v0}, Lcarbon/widget/DropDown$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcarbon/widget/DropDown;->E0:Z

    iput v0, v1, Lcarbon/widget/DropDown$SavedState;->a:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0}, Lsc0;->j()Lcarbon/widget/DropDown$j;

    move-result-object v0

    sget-object v1, Lcarbon/widget/DropDown$j;->c:Lcarbon/widget/DropDown$j;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcarbon/widget/DropDown;->y0:Lxb0;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0}, Lsc0;->j()Lcarbon/widget/DropDown$j;

    move-result-object v0

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcarbon/widget/DropDown;->F0:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Lld0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lld0<",
            "TType;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0, p1}, Lsc0;->o(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object p1, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {p1}, Lsc0;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCustomItemFactory(Lcarbon/widget/DropDown$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcarbon/widget/DropDown$f<",
            "TType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcarbon/widget/DropDown;->z0:Lcarbon/widget/DropDown$f;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcarbon/widget/DropDown;->A0:Ljava/util/List;

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0, p1}, Lsc0;->q(Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcarbon/widget/DropDown;->setSelectedIndex(I)V

    return-void
.end method

.method public setItems([Ljava/io/Serializable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TType;)V"
        }
    .end annotation

    iget-object v0, p0, Lcarbon/widget/DropDown;->A0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcarbon/widget/DropDown;->A0:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    iget-object v0, p0, Lcarbon/widget/DropDown;->A0:Ljava/util/List;

    invoke-virtual {p1, v0}, Lsc0;->q(Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcarbon/widget/DropDown;->setSelectedIndex(I)V

    return-void
.end method

.method public setMode(Lcarbon/widget/DropDown$g;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0, p1}, Lsc0;->r(Lcarbon/widget/DropDown$g;)V

    return-void
.end method

.method public setOnItemSelectedListener(Lcarbon/widget/DropDown$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcarbon/widget/DropDown$h<",
            "TType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcarbon/widget/DropDown;->C0:Lcarbon/widget/DropDown$h;

    return-void
.end method

.method public setOnSelectionChangedListener(Lcarbon/widget/DropDown$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcarbon/widget/DropDown$i<",
            "TType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcarbon/widget/DropDown;->D0:Lcarbon/widget/DropDown$i;

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0, p1}, Lsc0;->t(I)V

    invoke-virtual {p0}, Lcarbon/widget/DropDown;->getAdapter()Lid0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lid0;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSelectedIndices([I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0, p1}, Lsc0;->u([I)V

    return-void
.end method

.method public setSelectedItem(Ljava/io/Serializable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcarbon/widget/DropDown;->A0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcarbon/widget/DropDown;->A0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcarbon/widget/DropDown;->setSelectedIndex(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSelectedItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TType;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0, p1}, Lsc0;->v(Ljava/util/List;)V

    return-void
.end method

.method public setStyle(Lcarbon/widget/DropDown$j;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/DropDown;->B0:Lsc0;

    invoke-virtual {v0, p1}, Lsc0;->w(Lcarbon/widget/DropDown$j;)V

    sget-object v0, Lcarbon/widget/DropDown$j;->c:Lcarbon/widget/DropDown$j;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setLongClickable(Z)V

    return-void
.end method
