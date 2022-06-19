.class final Lit/gmariotti/cardslib/library/view/CardView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/view/CardView;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/view/CardView;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/CardView;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView$5;->a:Lit/gmariotti/cardslib/library/view/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 549
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView$5;->a:Lit/gmariotti/cardslib/library/view/CardView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getOnLongClickListener()Lit/gmariotti/cardslib/library/a/b$f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 550
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView$5;->a:Lit/gmariotti/cardslib/library/view/CardView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getOnLongClickListener()Lit/gmariotti/cardslib/library/a/b$f;

    move-result-object p1

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/a/b$f;->a()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
