.class final Lit/gmariotti/cardslib/library/view/CardView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 496
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView$3;->a:Lit/gmariotti/cardslib/library/view/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 499
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$3;->a:Lit/gmariotti/cardslib/library/view/CardView;

    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getOnClickListener()Lit/gmariotti/cardslib/library/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$3;->a:Lit/gmariotti/cardslib/library/view/CardView;

    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getOnClickListener()Lit/gmariotti/cardslib/library/a/b$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lit/gmariotti/cardslib/library/a/b$a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
