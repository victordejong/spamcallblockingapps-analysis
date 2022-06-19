.class final Lit/gmariotti/cardslib/library/view/CardViewNative$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/CardViewNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/view/CardViewNative;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/CardViewNative;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$3;->a:Lit/gmariotti/cardslib/library/view/CardViewNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 603
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$3;->a:Lit/gmariotti/cardslib/library/view/CardViewNative;

    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getOnClickListener()Lit/gmariotti/cardslib/library/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$3;->a:Lit/gmariotti/cardslib/library/view/CardViewNative;

    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getOnClickListener()Lit/gmariotti/cardslib/library/a/b$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lit/gmariotti/cardslib/library/a/b$a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
