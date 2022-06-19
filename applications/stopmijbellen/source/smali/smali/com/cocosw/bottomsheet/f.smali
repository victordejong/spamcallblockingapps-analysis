.class public Lcom/cocosw/bottomsheet/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

.field public final synthetic b:Lcom/cocosw/bottomsheet/h;


# direct methods
.method public constructor <init>(Lcom/cocosw/bottomsheet/h;Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cocosw/bottomsheet/f;->b:Lcom/cocosw/bottomsheet/h;

    iput-object p2, p0, Lcom/cocosw/bottomsheet/f;->a:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/cocosw/bottomsheet/f;->b:Lcom/cocosw/bottomsheet/h;

    .line 2
    iget-object p1, p1, Lcom/cocosw/bottomsheet/h;->k:Lcom/cocosw/bottomsheet/j;

    .line 3
    invoke-virtual {p1, p3}, Lcom/cocosw/bottomsheet/j;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x7f090088

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/cocosw/bottomsheet/f;->b:Lcom/cocosw/bottomsheet/h;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/h;->a(Lcom/cocosw/bottomsheet/h;)V

    .line 5
    iget-object p1, p0, Lcom/cocosw/bottomsheet/f;->a:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p1, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->k:Z

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/cocosw/bottomsheet/f;->b:Lcom/cocosw/bottomsheet/h;

    .line 8
    iget-object p1, p1, Lcom/cocosw/bottomsheet/h;->k:Lcom/cocosw/bottomsheet/j;

    .line 9
    invoke-virtual {p1, p3}, Lcom/cocosw/bottomsheet/j;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cocosw/bottomsheet/b;

    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/b;->c()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/cocosw/bottomsheet/f;->b:Lcom/cocosw/bottomsheet/h;

    .line 11
    iget-object p1, p1, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/cocosw/bottomsheet/f;->b:Lcom/cocosw/bottomsheet/h;

    .line 14
    iget-object p2, p1, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 15
    iget-object p2, p2, Lcom/cocosw/bottomsheet/h$c;->e:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p2, :cond_1

    .line 16
    iget-object p4, p1, Lcom/cocosw/bottomsheet/h;->k:Lcom/cocosw/bottomsheet/j;

    .line 17
    invoke-virtual {p4, p3}, Lcom/cocosw/bottomsheet/j;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/MenuItem;

    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p3

    invoke-interface {p2, p1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/cocosw/bottomsheet/f;->b:Lcom/cocosw/bottomsheet/h;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
