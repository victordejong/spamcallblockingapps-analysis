.class final Lit/gmariotti/cardslib/library/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/view/listener/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/a/c;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/a/c;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/c$1;->a:Lit/gmariotti/cardslib/library/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ListView;[I)V
    .locals 10

    .line 260
    array-length v0, p2

    new-array v0, v0, [I

    .line 261
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/String;

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    if-ge v5, v3, :cond_3

    aget v8, p2, v5

    .line 271
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lit/gmariotti/cardslib/library/a/b;

    if-eqz v9, :cond_0

    .line 272
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lit/gmariotti/cardslib/library/a/b;

    :cond_0
    if-eqz v7, :cond_1

    .line 276
    aput v8, v0, v6

    .line 277
    invoke-virtual {v7}, Lit/gmariotti/cardslib/library/a/b;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v6

    add-int/lit8 v6, v6, 0x1

    .line 287
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v8, p0, Lit/gmariotti/cardslib/library/a/c$1;->a:Lit/gmariotti/cardslib/library/a/c;

    invoke-virtual {v8, v7}, Lit/gmariotti/cardslib/library/a/c;->remove(Ljava/lang/Object;)V

    .line 289
    invoke-virtual {v7}, Lit/gmariotti/cardslib/library/a/b;->getOnSwipeListener()Lit/gmariotti/cardslib/library/a/b$g;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 290
    invoke-virtual {v7}, Lit/gmariotti/cardslib/library/a/b;->getOnSwipeListener()Lit/gmariotti/cardslib/library/a/b$g;

    goto :goto_1

    .line 293
    :cond_1
    sget-object v7, Lit/gmariotti/cardslib/library/a/c;->a:Ljava/lang/String;

    const-string v8, "Error on swipe action. Impossible to retrieve the card from position"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 296
    :cond_3
    iget-object p1, p0, Lit/gmariotti/cardslib/library/a/c$1;->a:Lit/gmariotti/cardslib/library/a/c;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/c;->notifyDataSetChanged()V

    .line 299
    iget-object p1, p0, Lit/gmariotti/cardslib/library/a/c$1;->a:Lit/gmariotti/cardslib/library/a/c;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/c;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lit/gmariotti/cardslib/library/a/c$1;->a:Lit/gmariotti/cardslib/library/a/c;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/a/c;->e:Lit/gmariotti/cardslib/library/view/listener/f;

    if-eqz p1, :cond_9

    .line 302
    new-instance p1, Lit/gmariotti/cardslib/library/view/listener/UndoCard;

    invoke-direct {p1, v0, v1}, Lit/gmariotti/cardslib/library/view/listener/UndoCard;-><init>([I[Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lit/gmariotti/cardslib/library/a/c$1;->a:Lit/gmariotti/cardslib/library/a/c;

    invoke-virtual {v1}, Lit/gmariotti/cardslib/library/a/c;->b()Lit/gmariotti/cardslib/library/view/listener/f;

    move-result-object v1

    .line 1468
    iget-object v1, v1, Lit/gmariotti/cardslib/library/view/listener/f;->i:Lit/gmariotti/cardslib/library/view/listener/f$c;

    if-eqz v1, :cond_4

    .line 307
    iget-object v1, p0, Lit/gmariotti/cardslib/library/a/c$1;->a:Lit/gmariotti/cardslib/library/a/c;

    invoke-virtual {v1}, Lit/gmariotti/cardslib/library/a/c;->b()Lit/gmariotti/cardslib/library/view/listener/f;

    move-result-object v1

    .line 2468
    iget-object v1, v1, Lit/gmariotti/cardslib/library/view/listener/f;->i:Lit/gmariotti/cardslib/library/view/listener/f$c;

    .line 307
    iget-object v3, p0, Lit/gmariotti/cardslib/library/a/c$1;->a:Lit/gmariotti/cardslib/library/a/c;

    invoke-interface {v1, v3, v0}, Lit/gmariotti/cardslib/library/view/listener/f$c;->a(Lit/gmariotti/cardslib/library/a/c;[I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v7

    :goto_2
    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 312
    iget-object v3, p0, Lit/gmariotti/cardslib/library/a/c$1;->a:Lit/gmariotti/cardslib/library/a/c;

    invoke-virtual {v3}, Lit/gmariotti/cardslib/library/a/c;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 313
    iget-object v3, p0, Lit/gmariotti/cardslib/library/a/c$1;->a:Lit/gmariotti/cardslib/library/a/c;

    invoke-virtual {v3}, Lit/gmariotti/cardslib/library/a/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 315
    sget v0, Lit/gmariotti/cardslib/library/a$f;->list_card_undo_items:I

    array-length v5, p2

    new-array v6, v1, [Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v4

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 320
    :cond_5
    iget-object p2, p0, Lit/gmariotti/cardslib/library/a/c$1;->a:Lit/gmariotti/cardslib/library/a/c;

    iget-object p2, p2, Lit/gmariotti/cardslib/library/a/c;->e:Lit/gmariotti/cardslib/library/view/listener/f;

    new-instance v3, Lit/gmariotti/cardslib/library/a/c$1$1;

    invoke-direct {v3, p0, v2}, Lit/gmariotti/cardslib/library/a/c$1$1;-><init>(Lit/gmariotti/cardslib/library/a/c$1;Ljava/util/ArrayList;)V

    .line 3123
    iget-object v2, p2, Lit/gmariotti/cardslib/library/view/listener/f;->f:Lit/gmariotti/cardslib/library/view/listener/f$b;

    if-eqz v2, :cond_7

    .line 3124
    iget-object v2, p2, Lit/gmariotti/cardslib/library/view/listener/f;->f:Lit/gmariotti/cardslib/library/view/listener/f$b;

    iget-object v5, p2, Lit/gmariotti/cardslib/library/view/listener/f;->g:Landroid/os/Parcelable;

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v2, v1}, Lit/gmariotti/cardslib/library/view/listener/f$b;->a(Z)V

    .line 3128
    :cond_7
    iput-object p1, p2, Lit/gmariotti/cardslib/library/view/listener/f;->g:Landroid/os/Parcelable;

    .line 3129
    iput-object v0, p2, Lit/gmariotti/cardslib/library/view/listener/f;->h:Ljava/lang/CharSequence;

    .line 3130
    iput-object v3, p2, Lit/gmariotti/cardslib/library/view/listener/f;->f:Lit/gmariotti/cardslib/library/view/listener/f$b;

    .line 3131
    iget-object p1, p2, Lit/gmariotti/cardslib/library/view/listener/f;->b:Landroid/widget/TextView;

    iget-object v0, p2, Lit/gmariotti/cardslib/library/view/listener/f;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3133
    iget-object p1, p2, Lit/gmariotti/cardslib/library/view/listener/f;->d:Landroid/os/Handler;

    iget-object v0, p2, Lit/gmariotti/cardslib/library/view/listener/f;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3134
    iget-object p1, p2, Lit/gmariotti/cardslib/library/view/listener/f;->d:Landroid/os/Handler;

    iget-object v0, p2, Lit/gmariotti/cardslib/library/view/listener/f;->j:Ljava/lang/Runnable;

    iget-object v1, p2, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    .line 3135
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lit/gmariotti/cardslib/library/a$d;->list_card_undobar_hide_delay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 3134
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3137
    iget-object p1, p2, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3142
    iget-object p1, p2, Lit/gmariotti/cardslib/library/view/listener/f;->i:Lit/gmariotti/cardslib/library/view/listener/f$c;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/listener/f$c;->d()Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    move-result-object p1

    sget-object v0, Lit/gmariotti/cardslib/library/view/listener/f$c$a;->ALPHA:Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_8

    .line 3144
    iget-object p1, p2, Lit/gmariotti/cardslib/library/view/listener/f;->c:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3145
    iget-object p1, p2, Lit/gmariotti/cardslib/library/view/listener/f;->c:Landroid/view/ViewPropertyAnimator;

    .line 3146
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p2, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    .line 3148
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 v0, 0x10e0000

    .line 3149
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    .line 3147
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 3150
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void

    .line 3151
    :cond_8
    iget-object p1, p2, Lit/gmariotti/cardslib/library/view/listener/f;->i:Lit/gmariotti/cardslib/library/view/listener/f$c;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/listener/f$c;->d()Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    move-result-object p1

    sget-object v0, Lit/gmariotti/cardslib/library/view/listener/f$c$a;->TOPBOTTOM:Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    if-ne p1, v0, :cond_9

    .line 3153
    iget-object p1, p2, Lit/gmariotti/cardslib/library/view/listener/f;->c:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3154
    iget-object p1, p2, Lit/gmariotti/cardslib/library/view/listener/f;->c:Landroid/view/ViewPropertyAnimator;

    .line 3155
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 3156
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p2, Lit/gmariotti/cardslib/library/view/listener/f;->a:Landroid/view/View;

    .line 3158
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0001

    .line 3159
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    .line 3157
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 3160
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_9
    return-void
.end method

.method public final a(Lit/gmariotti/cardslib/library/a/b;)Z
    .locals 1

    .line 254
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/c$1;->a:Lit/gmariotti/cardslib/library/a/c;

    iget-object v0, v0, Lit/gmariotti/cardslib/library/a/c;->g:Lit/gmariotti/cardslib/library/view/listener/a/c;

    invoke-interface {v0, p1}, Lit/gmariotti/cardslib/library/view/listener/a/c;->a(Lit/gmariotti/cardslib/library/a/b;)Z

    move-result p1

    return p1
.end method
