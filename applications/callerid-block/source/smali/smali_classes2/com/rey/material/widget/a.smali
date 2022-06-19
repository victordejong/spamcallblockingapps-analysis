.class public final Lcom/rey/material/widget/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/view/View;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/a;->d:Z

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Le/g/a/a/f;

    if-eqz v1, :cond_0

    check-cast v0, Le/g/a/a/f;

    invoke-virtual {v0}, Le/g/a/a/f;->d()V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Le/g/a/a/g;

    if-eqz v1, :cond_1

    check-cast v0, Le/g/a/a/g;

    invoke-virtual {v0}, Le/g/a/a/g;->a()V

    :cond_1
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/rey/material/widget/a;->a(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    instance-of v0, p1, Le/g/a/a/f;

    if-eqz v0, :cond_1

    check-cast p1, Le/g/a/a/f;

    invoke-virtual {p1}, Le/g/a/a/f;->i()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public c(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/rey/material/widget/a;->c:Landroid/view/View;

    sget-object p1, Lcom/callerid/block/R$styleable;->RippleView:[I

    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance p3, Le/g/a/a/f$b;

    invoke-direct {p3, p2, v0}, Le/g/a/a/f$b;-><init>(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/rey/material/widget/a;->c:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/rey/material/widget/a;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Le/g/a/a/f$b;->c(Landroid/graphics/drawable/Drawable;)Le/g/a/a/f$b;

    invoke-virtual {p3}, Le/g/a/a/f$b;->g()Le/g/a/a/f;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Le/g/a/a/f$b;

    invoke-direct {v0, p2, p3, p4, p5}, Le/g/a/a/f$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object p2, p0, Lcom/rey/material/widget/a;->c:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/rey/material/widget/a;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Le/g/a/a/f$b;->c(Landroid/graphics/drawable/Drawable;)Le/g/a/a/f$b;

    invoke-virtual {v0}, Le/g/a/a/f$b;->g()Le/g/a/a/f;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/rey/material/widget/a;->c:Landroid/view/View;

    invoke-static {p1, v2}, Le/g/a/b/d;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/rey/material/widget/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Le/g/a/a/f;

    if-eqz v1, :cond_0

    check-cast v0, Le/g/a/a/f;

    iget-object v1, p0, Lcom/rey/material/widget/a;->c:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Le/g/a/a/f;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/a;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/rey/material/widget/a;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Le/g/a/a/f;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Le/g/a/a/f;

    invoke-virtual {p1}, Le/g/a/a/f;->l()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    instance-of v0, p1, Le/g/a/a/g;

    if-eqz v0, :cond_1

    check-cast p1, Le/g/a/a/g;

    invoke-virtual {p1}, Le/g/a/a/g;->d()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long p1, v3, v1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/rey/material/widget/a;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/rey/material/widget/a;->d:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rey/material/widget/a;->d:Z

    iget-object p1, p0, Lcom/rey/material/widget/a;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/rey/material/widget/a;->run()V

    :goto_1
    return-void
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/a;->d:Z

    iget-object v0, p0, Lcom/rey/material/widget/a;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rey/material/widget/a;->c:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
