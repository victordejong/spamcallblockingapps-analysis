.class final Lit/gmariotti/cardslib/library/a/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/view/listener/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/a/c$1;->a(Landroid/widget/ListView;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lit/gmariotti/cardslib/library/a/c$1;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/a/c$1;Ljava/util/ArrayList;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/c$1$1;->b:Lit/gmariotti/cardslib/library/a/c$1;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/a/c$1$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-nez p1, :cond_1

    .line 331
    iget-object p1, p0, Lit/gmariotti/cardslib/library/a/c$1$1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/gmariotti/cardslib/library/a/b;

    .line 332
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getOnUndoHideSwipeListListener()Lit/gmariotti/cardslib/library/a/b$h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getOnUndoHideSwipeListListener()Lit/gmariotti/cardslib/library/a/b$h;

    .line 334
    :cond_0
    iget-object v1, p0, Lit/gmariotti/cardslib/library/a/c$1$1;->b:Lit/gmariotti/cardslib/library/a/c$1;

    iget-object v1, v1, Lit/gmariotti/cardslib/library/a/c$1;->a:Lit/gmariotti/cardslib/library/a/c;

    iget-object v1, v1, Lit/gmariotti/cardslib/library/a/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
