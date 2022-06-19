.class final Lit/gmariotti/cardslib/library/view/component/CardHeaderView$1;
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
.field final synthetic a:Lit/gmariotti/cardslib/library/a/i$a;

.field final synthetic b:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/component/CardHeaderView;Lit/gmariotti/cardslib/library/a/i$a;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$1;->b:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$1;->a:Lit/gmariotti/cardslib/library/a/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 304
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$1;->b:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->getParentCard()Lit/gmariotti/cardslib/library/a/b;

    return-void
.end method
