.class public final Lit/gmariotti/cardslib/library/view/listener/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field public a:Lit/gmariotti/cardslib/library/view/listener/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 43
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/e;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    xor-int/2addr p2, v0

    .line 1163
    iput-boolean p2, p1, Lit/gmariotti/cardslib/library/view/listener/a;->a:Z

    :cond_1
    return-void
.end method
