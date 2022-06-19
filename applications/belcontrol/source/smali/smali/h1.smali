.class public final Lh1;
.super Lb1;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Ld1;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final x:I


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lx0;

.field public final d:Lw0;

.field public final f:Z

.field public final g:I

.field public final h:I

.field public final j:I

.field public final k:Landroidx/appcompat/widget/MenuPopupWindow;

.field public final l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final m:Landroid/view/View$OnAttachStateChangeListener;

.field public n:Landroid/widget/PopupWindow$OnDismissListener;

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Ld1$a;

.field public r:Landroid/view/ViewTreeObserver;

.field public s:Z

.field public t:Z

.field public u:I

.field public v:I

.field public w:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Ll;->abc_popup_menu_item_layout:I

    sput v0, Lh1;->x:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lx0;Landroid/view/View;IIZ)V
    .locals 3

    invoke-direct {p0}, Lb1;-><init>()V

    new-instance v0, Lh1$a;

    invoke-direct {v0, p0}, Lh1$a;-><init>(Lh1;)V

    iput-object v0, p0, Lh1;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lh1$b;

    invoke-direct {v0, p0}, Lh1$b;-><init>(Lh1;)V

    iput-object v0, p0, Lh1;->m:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Lh1;->v:I

    iput-object p1, p0, Lh1;->b:Landroid/content/Context;

    iput-object p2, p0, Lh1;->c:Lx0;

    iput-boolean p6, p0, Lh1;->f:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lw0;

    sget v2, Lh1;->x:I

    invoke-direct {v1, p2, v0, p6, v2}, Lw0;-><init>(Lx0;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Lh1;->d:Lw0;

    iput p4, p0, Lh1;->h:I

    iput p5, p0, Lh1;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Li;->abc_config_prefDialogWidth:I

    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    iput p6, p0, Lh1;->g:I

    iput-object p3, p0, Lh1;->o:Landroid/view/View;

    new-instance p3, Landroidx/appcompat/widget/MenuPopupWindow;

    const/4 p6, 0x0

    invoke-direct {p3, p1, p6, p4, p5}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {p2, p0, p1}, Lx0;->addMenuPresenter(Ld1;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lh1;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Lx0;)V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lh1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lh1;->o:Landroid/view/View;

    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(Z)V
    .locals 1

    iget-object v0, p0, Lh1;->d:Lw0;

    invoke-virtual {v0, p1}, Lw0;->d(Z)V

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lh1;->v:I

    return-void
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->e(I)V

    return-void
.end method

.method public k(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lh1;->n:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lh1;->w:Z

    return-void
.end method

.method public m(I)V
    .locals 1

    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->h(I)V

    return-void
.end method

.method public n()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->n()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public onCloseMenu(Lx0;Z)V
    .locals 1

    iget-object v0, p0, Lh1;->c:Lx0;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lh1;->dismiss()V

    iget-object v0, p0, Lh1;->q:Ld1$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Ld1$a;->onCloseMenu(Lx0;Z)V

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh1;->s:Z

    iget-object v0, p0, Lh1;->c:Lx0;

    invoke-virtual {v0}, Lx0;->close()V

    iget-object v0, p0, Lh1;->r:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh1;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lh1;->r:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lh1;->r:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lh1;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh1;->r:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Lh1;->p:Landroid/view/View;

    iget-object v1, p0, Lh1;->m:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lh1;->n:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lh1;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Li1;)Z
    .locals 9

    invoke-virtual {p1}, Lx0;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Lc1;

    iget-object v3, p0, Lh1;->b:Landroid/content/Context;

    iget-object v5, p0, Lh1;->p:Landroid/view/View;

    iget-boolean v6, p0, Lh1;->f:Z

    iget v7, p0, Lh1;->h:I

    iget v8, p0, Lh1;->j:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lc1;-><init>(Landroid/content/Context;Lx0;Landroid/view/View;ZII)V

    iget-object v2, p0, Lh1;->q:Ld1$a;

    invoke-virtual {v0, v2}, Lc1;->j(Ld1$a;)V

    invoke-static {p1}, Lb1;->o(Lx0;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lc1;->g(Z)V

    iget-object v2, p0, Lh1;->n:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Lc1;->i(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lh1;->n:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Lh1;->c:Lx0;

    invoke-virtual {v2, v1}, Lx0;->close(Z)V

    iget-object v2, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->c()I

    move-result v2

    iget-object v3, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->k()I

    move-result v3

    iget v4, p0, Lh1;->v:I

    iget-object v5, p0, Lh1;->o:Landroid/view/View;

    invoke-static {v5}, Ljb;->B(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lh1;->o:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    :cond_0
    invoke-virtual {v0, v2, v3}, Lc1;->n(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh1;->q:Ld1$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ld1$a;->a(Lx0;)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final q()Z
    .locals 7

    invoke-virtual {p0}, Lh1;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lh1;->s:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lh1;->o:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iput-object v0, p0, Lh1;->p:Landroid/view/View;

    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->I(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->J(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->H(Z)V

    iget-object v0, p0, Lh1;->p:Landroid/view/View;

    iget-object v3, p0, Lh1;->r:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Lh1;->r:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lh1;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v3, p0, Lh1;->m:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ListPopupWindow;->B(Landroid/view/View;)V

    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    iget v3, p0, Lh1;->v:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ListPopupWindow;->E(I)V

    iget-boolean v0, p0, Lh1;->t:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lh1;->d:Lw0;

    iget-object v4, p0, Lh1;->b:Landroid/content/Context;

    iget v5, p0, Lh1;->g:I

    invoke-static {v0, v3, v4, v5}, Lb1;->e(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lh1;->u:I

    iput-boolean v1, p0, Lh1;->t:Z

    :cond_4
    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    iget v4, p0, Lh1;->u:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->D(I)V

    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->G(I)V

    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {p0}, Lb1;->d()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->F(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->n()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v4, p0, Lh1;->w:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lh1;->c:Lx0;

    invoke-virtual {v4}, Lx0;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lh1;->b:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Ll;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v6, p0, Lh1;->c:Lx0;

    invoke-virtual {v6}, Lx0;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_6
    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object v2, p0, Lh1;->d:Lw0;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ListPopupWindow;->l(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    return v1

    :cond_7
    :goto_1
    return v2
.end method

.method public setCallback(Ld1$a;)V
    .locals 0

    iput-object p1, p0, Lh1;->q:Ld1$a;

    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Lh1;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMenuView(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh1;->t:Z

    iget-object p1, p0, Lh1;->d:Lw0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lw0;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
