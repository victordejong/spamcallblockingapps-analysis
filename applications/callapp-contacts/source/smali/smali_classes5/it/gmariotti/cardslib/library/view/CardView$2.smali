.class final Lit/gmariotti/cardslib/library/view/CardView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/view/listener/d$a;


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

    .line 468
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView$2;->a:Lit/gmariotti/cardslib/library/view/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lit/gmariotti/cardslib/library/view/a/a;Lit/gmariotti/cardslib/library/a/b;)V
    .locals 1

    .line 476
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 479
    invoke-virtual {p2}, Lit/gmariotti/cardslib/library/a/b;->onSwipeCard()V

    :cond_0
    return-void
.end method

.method public final a(Lit/gmariotti/cardslib/library/a/b;)Z
    .locals 0

    .line 471
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->isSwipeable()Z

    move-result p1

    return p1
.end method
