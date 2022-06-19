.class public Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout$a;
    }
.end annotation


# instance fields
.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:I

.field i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout$a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->f:Z

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->g:Z

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->h:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->i:Ljava/util/HashSet;

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->j:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->f:Z

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->g:Z

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->h:I

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->i:Ljava/util/HashSet;

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->j:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->f:Z

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->g:Z

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->h:I

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->i:Ljava/util/HashSet;

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->j:Z

    return-void
.end method

.method private a(ZZII)V
    .locals 2

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout$a;

    invoke-interface {v1, p1, p2, p3, p4}, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout$a;->a(ZZII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "test: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Robi"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->b(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getShowPaddingBottom()I
    .locals 1

    iget-boolean v0, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->e:I

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 8

    const-string v0, "Robi"

    const-string v1, "fitSystemWindows: "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iput v1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->d:I

    iput-boolean v2, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->j:Z

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->j:Z

    :goto_0
    iget v4, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->e:I

    if-ne v4, v1, :cond_1

    goto :goto_1

    :cond_1
    if-ne v4, v0, :cond_2

    iget-boolean v4, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->j:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->g:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-boolean v4, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->g:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    iget v7, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->e:I

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_2

    :cond_3
    iget-boolean v4, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->j:Z

    if-eqz v4, :cond_4

    iput-boolean v3, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->f:Z

    :cond_4
    :goto_2
    iput-boolean v3, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->g:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->f:Z

    iget-boolean v3, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->j:Z

    invoke-direct {p0, v2, v3, v0, v1}, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->a(ZZII)V

    :cond_5
    return p1
.end method

.method public getKeyboardHeight()I
    .locals 1

    iget v0, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->d:I

    return v0
.end method

.method public getShowKeyboardHeight()I
    .locals 1

    iget v0, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->e:I

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "Robi"

    const-string v1, "onApplyWindowInsets: "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->c:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget v0, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43480000    # 200.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->d:I

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5fc5\u987b\u542b\u67092\u4e2a\u5b50View."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-direct {p0}, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->getShowPaddingBottom()I

    move-result p1

    iget v0, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->h:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eq v0, p1, :cond_1

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->h:I

    iget-boolean v1, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->f:Z

    iget-boolean v2, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->j:Z

    invoke-direct {p0, v1, v2, v0, p1}, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->a(ZZII)V

    :cond_1
    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->b:Landroid/view/View;

    sub-int p1, p5, p1

    invoke-virtual {v0, p2, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    iget-object p3, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->c:Landroid/view/View;

    invoke-virtual {p3, p2, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->b:Landroid/view/View;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-direct {p0}, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->getShowPaddingBottom()I

    move-result v3

    sub-int v3, p2, v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->c:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-direct {p0}, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->getShowPaddingBottom()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Robi"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    invoke-direct {p0, p0}, Lhani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout;->b(Landroid/view/View;)V

    return-void
.end method
