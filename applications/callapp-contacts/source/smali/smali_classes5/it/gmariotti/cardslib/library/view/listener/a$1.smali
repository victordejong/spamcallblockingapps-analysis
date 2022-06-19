.class final Lit/gmariotti/cardslib/library/view/listener/a$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/listener/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lit/gmariotti/cardslib/library/view/listener/a;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/listener/a;Landroid/view/View;I)V
    .locals 0

    .line 373
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a$1;->c:Lit/gmariotti/cardslib/library/view/listener/a;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/a$1;->a:Landroid/view/View;

    iput p3, p0, Lit/gmariotti/cardslib/library/view/listener/a$1;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 376
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a$1;->c:Lit/gmariotti/cardslib/library/view/listener/a;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a$1;->a:Landroid/view/View;

    iget v1, p0, Lit/gmariotti/cardslib/library/view/listener/a$1;->b:I

    invoke-static {p1, v0, v1}, Lit/gmariotti/cardslib/library/view/listener/a;->a(Lit/gmariotti/cardslib/library/view/listener/a;Landroid/view/View;I)V

    return-void
.end method
