.class final Lit/gmariotti/cardslib/library/view/component/CardHeaderView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


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

    .line 463
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$5;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1

    .line 466
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$5;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->f:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    .line 467
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$5;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->f:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_0
    return-void
.end method
