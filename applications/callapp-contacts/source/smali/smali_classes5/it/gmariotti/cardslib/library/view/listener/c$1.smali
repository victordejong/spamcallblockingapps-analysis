.class final Lit/gmariotti/cardslib/library/view/listener/c$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/view/listener/c;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/view/listener/c;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/listener/c;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/c$1;->a:Lit/gmariotti/cardslib/library/view/listener/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/c$1;->a:Lit/gmariotti/cardslib/library/view/listener/c;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/c;->a(Lit/gmariotti/cardslib/library/view/listener/c;)V

    return-void
.end method
