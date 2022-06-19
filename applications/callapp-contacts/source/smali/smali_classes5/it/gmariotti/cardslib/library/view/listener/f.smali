.class public final Lit/gmariotti/cardslib/library/view/listener/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/view/listener/f$a;,
        Lit/gmariotti/cardslib/library/view/listener/f$c;,
        Lit/gmariotti/cardslib/library/view/listener/f$b;,
        Lit/gmariotti/cardslib/library/view/listener/f$d;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/view/ViewPropertyAnimator;

.field public d:Landroid/os/Handler;

.field e:Lit/gmariotti/cardslib/library/view/listener/f$d;

.field public f:Lit/gmariotti/cardslib/library/view/listener/f$b;

.field public g:Landroid/os/Parcelable;

.field public h:Ljava/lang/CharSequence;

.field public i:Lit/gmariotti/cardslib/library/view/listener/f$c;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lit/gmariotti/cardslib/library/view/listener/f$d;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lit/gmariotti/cardslib/library/view/listener/f;-><init>(Landroid/view/View;Lit/gmariotti/cardslib/library/view/listener/f$d;Lit/gmariotti/cardslib/library/view/listener/f$c;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lit/gmariotti/cardslib/library/view/listener/f$d;Lit/gmariotti/cardslib/library/view/listener/f$c;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/f;->d:Landroid/os/Handler;

    .line 238
    new-instance v0, Lit/gmariotti/cardslib/library/view/listener/f$4;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/listener/f$4;-><init>(Lit/gmariotti/cardslib/library/view/listener/f;)V

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/f;->j:Ljava/lang/Runnable;

    .line 86
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->c:Landroid/view/ViewPropertyAnimator;

    .line 88
    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/f;->e:Lit/gmariotti/cardslib/library/view/listener/f$d;

    if-nez p3, :cond_0

    .line 91
    new-instance p3, Lit/gmariotti/cardslib/library/view/listener/f$a;

    invoke-direct {p3}, Lit/gmariotti/cardslib/library/view/listener/f$a;-><init>()V

    .line 92
    :cond_0
    iput-object p3, p0, Lit/gmariotti/cardslib/library/view/listener/f;->i:Lit/gmariotti/cardslib/library/view/listener/f$c;

    .line 94
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    invoke-interface {p3}, Lit/gmariotti/cardslib/library/view/listener/f$c;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->b:Landroid/widget/TextView;

    .line 95
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/f;->i:Lit/gmariotti/cardslib/library/view/listener/f$c;

    invoke-interface {p2}, Lit/gmariotti/cardslib/library/view/listener/f$c;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lit/gmariotti/cardslib/library/view/listener/f$1;

    invoke-direct {p2, p0}, Lit/gmariotti/cardslib/library/view/listener/f$1;-><init>(Lit/gmariotti/cardslib/library/view/listener/f;)V

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1250
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->i:Lit/gmariotti/cardslib/library/view/listener/f$c;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/listener/f$c;->d()Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    move-result-object p1

    sget-object p2, Lit/gmariotti/cardslib/library/view/listener/f$c$a;->TOPBOTTOM:Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    if-ne p1, p2, :cond_1

    .line 1251
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 108
    :cond_1
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->i:Lit/gmariotti/cardslib/library/view/listener/f$c;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/listener/f$c;->c()Lit/gmariotti/cardslib/library/view/listener/f$c$b;

    move-result-object p1

    sget-object p2, Lit/gmariotti/cardslib/library/view/listener/f$c$b;->NONE:Lit/gmariotti/cardslib/library/view/listener/f$c$b;

    if-eq p1, p2, :cond_3

    .line 1256
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 1258
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->i:Lit/gmariotti/cardslib/library/view/listener/f$c;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/listener/f$c;->c()Lit/gmariotti/cardslib/library/view/listener/f$c$b;

    move-result-object p1

    sget-object p2, Lit/gmariotti/cardslib/library/view/listener/f$c$b;->LEFTRIGHT:Lit/gmariotti/cardslib/library/view/listener/f$c$b;

    const/4 p3, 0x0

    if-ne p1, p2, :cond_2

    .line 1260
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    new-instance p2, Lit/gmariotti/cardslib/library/view/listener/c;

    new-instance v0, Lit/gmariotti/cardslib/library/view/listener/f$5;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/listener/f$5;-><init>(Lit/gmariotti/cardslib/library/view/listener/f;)V

    invoke-direct {p2, p1, p3, v0}, Lit/gmariotti/cardslib/library/view/listener/c;-><init>(Landroid/view/View;Ljava/lang/Object;Lit/gmariotti/cardslib/library/view/listener/c$a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 1275
    :cond_2
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->i:Lit/gmariotti/cardslib/library/view/listener/f$c;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/listener/f$c;->c()Lit/gmariotti/cardslib/library/view/listener/f$c$b;

    move-result-object p1

    sget-object p2, Lit/gmariotti/cardslib/library/view/listener/f$c$b;->TOPBOTTOM:Lit/gmariotti/cardslib/library/view/listener/f$c$b;

    if-ne p1, p2, :cond_3

    .line 1277
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    new-instance p2, Lit/gmariotti/cardslib/library/view/listener/b;

    new-instance v0, Lit/gmariotti/cardslib/library/view/listener/f$6;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/listener/f$6;-><init>(Lit/gmariotti/cardslib/library/view/listener/f;)V

    invoke-direct {p2, p1, p3, v0}, Lit/gmariotti/cardslib/library/view/listener/b;-><init>(Landroid/view/View;Ljava/lang/Object;Lit/gmariotti/cardslib/library/view/listener/b$a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 112
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/listener/f;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 167
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/f;->d:Landroid/os/Handler;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 169
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->h:Ljava/lang/CharSequence;

    .line 172
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/f;->f:Lit/gmariotti/cardslib/library/view/listener/f$b;

    if-eqz v0, :cond_1

    .line 174
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->g:Landroid/os/Parcelable;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lit/gmariotti/cardslib/library/view/listener/f$b;->a(Z)V

    .line 176
    :cond_1
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->f:Lit/gmariotti/cardslib/library/view/listener/f$b;

    .line 177
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->g:Landroid/os/Parcelable;

    return-void

    .line 179
    :cond_2
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->c:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 181
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->i:Lit/gmariotti/cardslib/library/view/listener/f$c;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/listener/f$c;->d()Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    move-result-object p1

    sget-object v1, Lit/gmariotti/cardslib/library/view/listener/f$c$a;->ALPHA:Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    const/high16 v2, 0x10e0000

    if-ne p1, v1, :cond_3

    .line 182
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->c:Landroid/view/ViewPropertyAnimator;

    .line 183
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    .line 184
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 185
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 184
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lit/gmariotti/cardslib/library/view/listener/f$2;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/listener/f$2;-><init>(Lit/gmariotti/cardslib/library/view/listener/f;)V

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void

    .line 199
    :cond_3
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->i:Lit/gmariotti/cardslib/library/view/listener/f$c;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/listener/f$c;->d()Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    move-result-object p1

    sget-object v1, Lit/gmariotti/cardslib/library/view/listener/f$c$a;->TOPBOTTOM:Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    if-ne p1, v1, :cond_4

    .line 200
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f;->c:Landroid/view/ViewPropertyAnimator;

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    .line 203
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 203
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lit/gmariotti/cardslib/library/view/listener/f$3;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/listener/f$3;-><init>(Lit/gmariotti/cardslib/library/view/listener/f;)V

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_4
    return-void
.end method
