.class final Lit/gmariotti/cardslib/library/view/listener/f$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/view/listener/f;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/view/listener/f;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/listener/f;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f$2;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 189
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f$2;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    .line 1042
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    const/16 v0, 0x8

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f$2;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    const/4 v0, 0x0

    .line 2042
    iput-object v0, p1, Lit/gmariotti/cardslib/library/view/listener/f;->h:Ljava/lang/CharSequence;

    .line 191
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f$2;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    .line 3042
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/listener/f;->f:Lit/gmariotti/cardslib/library/view/listener/f$b;

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f$2;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    .line 4042
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/listener/f;->f:Lit/gmariotti/cardslib/library/view/listener/f$b;

    .line 193
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/f$2;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    .line 5042
    iget-object v1, v1, Lit/gmariotti/cardslib/library/view/listener/f;->g:Landroid/os/Parcelable;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 193
    :goto_0
    invoke-interface {p1, v1}, Lit/gmariotti/cardslib/library/view/listener/f$b;->a(Z)V

    .line 195
    :cond_1
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f$2;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    .line 6042
    iput-object v0, p1, Lit/gmariotti/cardslib/library/view/listener/f;->f:Lit/gmariotti/cardslib/library/view/listener/f$b;

    .line 196
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f$2;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    .line 7042
    iput-object v0, p1, Lit/gmariotti/cardslib/library/view/listener/f;->g:Landroid/os/Parcelable;

    return-void
.end method
