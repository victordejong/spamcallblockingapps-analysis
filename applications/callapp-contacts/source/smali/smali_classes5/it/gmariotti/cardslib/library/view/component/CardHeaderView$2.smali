.class final Lit/gmariotti/cardslib/library/view/component/CardHeaderView$2;
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

    .line 322
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$2;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 325
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$2;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->h()Lit/gmariotti/cardslib/library/a/i$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$2;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->h()Lit/gmariotti/cardslib/library/a/i$b;

    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$2;->a:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->getParentCard()Lit/gmariotti/cardslib/library/a/b;

    :cond_0
    return-void
.end method
