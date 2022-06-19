.class final Lit/gmariotti/cardslib/library/view/CardView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Lit/gmariotti/cardslib/library/a/b;

.field c:Z

.field final synthetic d:Lit/gmariotti/cardslib/library/view/CardView;


# direct methods
.method private constructor <init>(Lit/gmariotti/cardslib/library/view/CardView;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;Z)V
    .locals 0

    .line 826
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->d:Lit/gmariotti/cardslib/library/view/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 824
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->c:Z

    .line 827
    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->a:Landroid/view/View;

    .line 828
    iput-object p3, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 829
    iput-boolean p4, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lit/gmariotti/cardslib/library/view/CardView;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;ZLit/gmariotti/cardslib/library/view/CardView$1;)V
    .locals 0

    .line 820
    invoke-direct {p0, p1, p2, p3, p4}, Lit/gmariotti/cardslib/library/view/CardView$b;-><init>(Lit/gmariotti/cardslib/library/view/CardView;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lit/gmariotti/cardslib/library/view/CardView;
    .locals 1

    .line 833
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$b;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    check-cast v0, Lit/gmariotti/cardslib/library/view/CardView;

    return-object v0
.end method
