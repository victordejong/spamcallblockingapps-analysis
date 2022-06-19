.class final Lit/gmariotti/cardslib/library/view/component/CardHeaderView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->b()Landroid/widget/PopupMenu;
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

    .line 452
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$4;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 455
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$4;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->b()Lit/gmariotti/cardslib/library/a/i$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 457
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$4;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->b()Lit/gmariotti/cardslib/library/a/i$c;

    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$4;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->getParentCard()Lit/gmariotti/cardslib/library/a/b;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
