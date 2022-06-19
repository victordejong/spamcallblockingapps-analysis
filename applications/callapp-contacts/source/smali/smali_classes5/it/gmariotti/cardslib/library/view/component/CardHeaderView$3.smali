.class final Lit/gmariotti/cardslib/library/view/component/CardHeaderView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/component/CardHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/component/CardHeaderView;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$3;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 417
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$3;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->l:Landroid/widget/PopupMenu;

    if-nez p1, :cond_0

    .line 420
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$3;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a(Lit/gmariotti/cardslib/library/view/component/CardHeaderView;)Landroid/widget/PopupMenu;

    move-result-object v0

    iput-object v0, p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->l:Landroid/widget/PopupMenu;

    .line 422
    :cond_0
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$3;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->l:Landroid/widget/PopupMenu;

    if-eqz p1, :cond_1

    .line 423
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$3;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->l:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 424
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$3;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->f:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_1
    return-void
.end method
