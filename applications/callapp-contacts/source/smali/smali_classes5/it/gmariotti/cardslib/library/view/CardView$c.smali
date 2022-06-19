.class public final Lit/gmariotti/cardslib/library/view/CardView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field a:Lit/gmariotti/cardslib/library/view/CardView$b;

.field final synthetic b:Lit/gmariotti/cardslib/library/view/CardView;


# direct methods
.method private constructor <init>(Lit/gmariotti/cardslib/library/view/CardView;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;)V
    .locals 1

    const/4 v0, 0x1

    .line 776
    invoke-direct {p0, p1, p2, p3, v0}, Lit/gmariotti/cardslib/library/view/CardView$c;-><init>(Lit/gmariotti/cardslib/library/view/CardView;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;Z)V

    return-void
.end method

.method private constructor <init>(Lit/gmariotti/cardslib/library/view/CardView;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;Z)V
    .locals 7

    .line 779
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView$c;->b:Lit/gmariotti/cardslib/library/view/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    new-instance v6, Lit/gmariotti/cardslib/library/view/CardView$b;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lit/gmariotti/cardslib/library/view/CardView$b;-><init>(Lit/gmariotti/cardslib/library/view/CardView;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;ZLit/gmariotti/cardslib/library/view/CardView$1;)V

    iput-object v6, p0, Lit/gmariotti/cardslib/library/view/CardView$c;->a:Lit/gmariotti/cardslib/library/view/CardView$b;

    return-void
.end method

.method synthetic constructor <init>(Lit/gmariotti/cardslib/library/view/CardView;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;ZLit/gmariotti/cardslib/library/view/CardView$1;)V
    .locals 0

    .line 771
    invoke-direct {p0, p1, p2, p3, p4}, Lit/gmariotti/cardslib/library/view/CardView$c;-><init>(Lit/gmariotti/cardslib/library/view/CardView;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;Z)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 785
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$c;->a:Lit/gmariotti/cardslib/library/view/CardView$b;

    .line 1820
    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/CardView$b;->a:Landroid/view/View;

    .line 785
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 787
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$c;->a:Lit/gmariotti/cardslib/library/view/CardView$b;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/view/CardView$a;->a(Lit/gmariotti/cardslib/library/view/CardView$b;)V

    .line 788
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$c;->a:Lit/gmariotti/cardslib/library/view/CardView$b;

    .line 2820
    iget-boolean v0, v0, Lit/gmariotti/cardslib/library/view/CardView$b;->c:Z

    if-eqz v0, :cond_2

    .line 789
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 791
    :cond_1
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$c;->a:Lit/gmariotti/cardslib/library/view/CardView$b;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/view/CardView$a;->b(Lit/gmariotti/cardslib/library/view/CardView$b;)V

    .line 792
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$c;->a:Lit/gmariotti/cardslib/library/view/CardView$b;

    .line 3820
    iget-boolean v0, v0, Lit/gmariotti/cardslib/library/view/CardView$b;->c:Z

    if-eqz v0, :cond_2

    .line 793
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    return-void
.end method
