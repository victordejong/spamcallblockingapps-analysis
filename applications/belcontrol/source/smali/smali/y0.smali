.class public Ly0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Ld1$a;


# instance fields
.field public a:Lx0;

.field public b:Lp;

.field public c:Lv0;

.field public d:Ld1$a;


# direct methods
.method public constructor <init>(Lx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0;->a:Lx0;

    return-void
.end method


# virtual methods
.method public a(Lx0;)Z
    .locals 1

    iget-object v0, p0, Ly0;->d:Ld1$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ld1$a;->a(Lx0;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Ly0;->b:Lp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt;->dismiss()V

    :cond_0
    return-void
.end method

.method public c(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Ly0;->a:Lx0;

    new-instance v1, Lp$a;

    invoke-virtual {v0}, Lx0;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lp$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Lv0;

    invoke-virtual {v1}, Lp$a;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Ll;->abc_list_menu_item_layout:I

    invoke-direct {v2, v3, v4}, Lv0;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Ly0;->c:Lv0;

    invoke-virtual {v2, p0}, Lv0;->setCallback(Ld1$a;)V

    iget-object v2, p0, Ly0;->a:Lx0;

    iget-object v3, p0, Ly0;->c:Lv0;

    invoke-virtual {v2, v3}, Lx0;->addMenuPresenter(Ld1;)V

    iget-object v2, p0, Ly0;->c:Lv0;

    invoke-virtual {v2}, Lv0;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lp$a;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lp$a;

    invoke-virtual {v0}, Lx0;->getHeaderView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lp$a;->setCustomTitle(Landroid/view/View;)Lp$a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lx0;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lp$a;->setIcon(Landroid/graphics/drawable/Drawable;)Lp$a;

    move-result-object v2

    invoke-virtual {v0}, Lx0;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lp$a;->setTitle(Ljava/lang/CharSequence;)Lp$a;

    :goto_0
    invoke-virtual {v1, p0}, Lp$a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lp$a;

    invoke-virtual {v1}, Lp$a;->create()Lp;

    move-result-object v0

    iput-object v0, p0, Ly0;->b:Lp;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Ly0;->b:Lp;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz p1, :cond_1

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Ly0;->b:Lp;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Ly0;->a:Lx0;

    iget-object v0, p0, Ly0;->c:Lv0;

    invoke-virtual {v0}, Lv0;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz0;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lx0;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onCloseMenu(Lx0;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Ly0;->a:Lx0;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ly0;->b()V

    :cond_1
    iget-object v0, p0, Ly0;->d:Ld1$a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Ld1$a;->onCloseMenu(Lx0;Z)V

    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Ly0;->c:Lv0;

    iget-object v0, p0, Ly0;->a:Lx0;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lv0;->onCloseMenu(Lx0;Z)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Ly0;->b:Lp;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ly0;->b:Lp;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Ly0;->a:Lx0;

    invoke-virtual {p2, v1}, Lx0;->close(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    :cond_2
    iget-object p1, p0, Ly0;->a:Lx0;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lx0;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method
