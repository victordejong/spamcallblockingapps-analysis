.class Landroidx/drawerlayout/widget/DrawerLayout$a;
.super Landroidx/core/g/a;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/drawerlayout/widget/DrawerLayout;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 0

    .line 2349
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$a;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {p0}, Landroidx/core/g/a;-><init>()V

    .line 2350
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$a;->b:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroidx/core/g/a/d;Landroid/view/ViewGroup;)V
    .locals 4

    .line 2426
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2428
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2429
    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2430
    invoke-virtual {p1, v2}, Landroidx/core/g/a/d;->c(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroidx/core/g/a/d;Landroidx/core/g/a/d;)V
    .locals 1

    .line 2442
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$a;->b:Landroid/graphics/Rect;

    .line 2444
    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->a(Landroid/graphics/Rect;)V

    .line 2445
    invoke-virtual {p1, v0}, Landroidx/core/g/a/d;->b(Landroid/graphics/Rect;)V

    .line 2447
    invoke-virtual {p2, v0}, Landroidx/core/g/a/d;->c(Landroid/graphics/Rect;)V

    .line 2448
    invoke-virtual {p1, v0}, Landroidx/core/g/a/d;->d(Landroid/graphics/Rect;)V

    .line 2450
    invoke-virtual {p2}, Landroidx/core/g/a/d;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/g/a/d;->e(Z)V

    .line 2451
    invoke-virtual {p2}, Landroidx/core/g/a/d;->q()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/g/a/d;->a(Ljava/lang/CharSequence;)V

    .line 2452
    invoke-virtual {p2}, Landroidx/core/g/a/d;->r()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/g/a/d;->b(Ljava/lang/CharSequence;)V

    .line 2453
    invoke-virtual {p2}, Landroidx/core/g/a/d;->t()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/g/a/d;->e(Ljava/lang/CharSequence;)V

    .line 2455
    invoke-virtual {p2}, Landroidx/core/g/a/d;->n()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/g/a/d;->j(Z)V

    .line 2456
    invoke-virtual {p2}, Landroidx/core/g/a/d;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/g/a/d;->h(Z)V

    .line 2457
    invoke-virtual {p2}, Landroidx/core/g/a/d;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/g/a/d;->c(Z)V

    .line 2458
    invoke-virtual {p2}, Landroidx/core/g/a/d;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/g/a/d;->d(Z)V

    .line 2459
    invoke-virtual {p2}, Landroidx/core/g/a/d;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/g/a/d;->f(Z)V

    .line 2460
    invoke-virtual {p2}, Landroidx/core/g/a/d;->k()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/g/a/d;->g(Z)V

    .line 2461
    invoke-virtual {p2}, Landroidx/core/g/a/d;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/g/a/d;->i(Z)V

    .line 2463
    invoke-virtual {p2}, Landroidx/core/g/a/d;->d()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/core/g/a/d;->a(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 2399
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 2400
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    .line 2401
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$a;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->c()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2403
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$a;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result p2

    .line 2404
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$a;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2406
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 2413
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/core/g/a;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 2387
    invoke-super {p0, p1, p2}, Landroidx/core/g/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2389
    const-class p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/g/a/d;)V
    .locals 3

    .line 2354
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->b:Z

    if-eqz v0, :cond_0

    .line 2355
    invoke-super {p0, p1, p2}, Landroidx/core/g/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/g/a/d;)V

    goto :goto_0

    .line 2360
    :cond_0
    invoke-static {p2}, Landroidx/core/g/a/d;->a(Landroidx/core/g/a/d;)Landroidx/core/g/a/d;

    move-result-object v0

    .line 2361
    invoke-super {p0, p1, v0}, Landroidx/core/g/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/g/a/d;)V

    .line 2363
    invoke-virtual {p2, p1}, Landroidx/core/g/a/d;->b(Landroid/view/View;)V

    .line 2364
    invoke-static {p1}, Landroidx/core/g/u;->g(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    .line 2365
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2366
    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Landroidx/core/g/a/d;->d(Landroid/view/View;)V

    .line 2368
    :cond_1
    invoke-direct {p0, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout$a;->a(Landroidx/core/g/a/d;Landroidx/core/g/a/d;)V

    .line 2369
    invoke-virtual {v0}, Landroidx/core/g/a/d;->u()V

    .line 2371
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout$a;->a(Landroidx/core/g/a/d;Landroid/view/ViewGroup;)V

    .line 2374
    :goto_0
    const-class p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/g/a/d;->b(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 2379
    invoke-virtual {p2, p1}, Landroidx/core/g/a/d;->c(Z)V

    .line 2380
    invoke-virtual {p2, p1}, Landroidx/core/g/a/d;->d(Z)V

    .line 2381
    sget-object p1, Landroidx/core/g/a/d$a;->a:Landroidx/core/g/a/d$a;

    invoke-virtual {p2, p1}, Landroidx/core/g/a/d;->b(Landroidx/core/g/a/d$a;)Z

    .line 2382
    sget-object p1, Landroidx/core/g/a/d$a;->b:Landroidx/core/g/a/d$a;

    invoke-virtual {p2, p1}, Landroidx/core/g/a/d;->b(Landroidx/core/g/a/d$a;)Z

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 2419
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->b:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 2420
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/g/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method
