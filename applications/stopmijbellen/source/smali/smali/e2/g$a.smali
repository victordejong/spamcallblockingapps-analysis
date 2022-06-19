.class public Le2/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:Landroid/graphics/Typeface;

.field public D:Landroid/graphics/Typeface;

.field public E:Landroid/graphics/drawable/Drawable;

.field public F:Landroidx/recyclerview/widget/RecyclerView$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$e<",
            "*>;"
        }
    .end annotation
.end field

.field public G:Landroidx/recyclerview/widget/RecyclerView$m;

.field public H:Landroid/content/DialogInterface$OnShowListener;

.field public I:Z

.field public J:I

.field public K:I

.field public L:Z

.field public M:Z

.field public N:Z

.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Le2/d;

.field public d:Le2/d;

.field public e:Le2/d;

.field public f:Le2/d;

.field public g:Le2/d;

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:Ljava/lang/CharSequence;

.field public n:Ljava/lang/CharSequence;

.field public o:Landroid/view/View;

.field public p:I

.field public q:Landroid/content/res/ColorStateList;

.field public r:Landroid/content/res/ColorStateList;

.field public s:Landroid/content/res/ColorStateList;

.field public t:Landroid/content/res/ColorStateList;

.field public u:Le2/g$c;

.field public v:Le2/g$c;

.field public w:Le2/g$c;

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le2/d;->a:Le2/d;

    iput-object v0, p0, Le2/g$a;->c:Le2/d;

    .line 3
    iput-object v0, p0, Le2/g$a;->d:Le2/d;

    .line 4
    sget-object v1, Le2/d;->c:Le2/d;

    iput-object v1, p0, Le2/g$a;->e:Le2/d;

    .line 5
    iput-object v0, p0, Le2/g$a;->f:Le2/d;

    .line 6
    iput-object v0, p0, Le2/g$a;->g:Le2/d;

    const/4 v2, 0x0

    .line 7
    iput v2, p0, Le2/g$a;->h:I

    const/4 v3, -0x1

    .line 8
    iput v3, p0, Le2/g$a;->i:I

    .line 9
    iput v3, p0, Le2/g$a;->j:I

    const/4 v4, 0x1

    .line 10
    iput v4, p0, Le2/g$a;->x:I

    .line 11
    iput-boolean v4, p0, Le2/g$a;->y:Z

    .line 12
    iput-boolean v4, p0, Le2/g$a;->z:Z

    .line 13
    iput v3, p0, Le2/g$a;->A:I

    .line 14
    iput-boolean v4, p0, Le2/g$a;->B:Z

    .line 15
    iput-boolean v2, p0, Le2/g$a;->L:Z

    .line 16
    iput-boolean v2, p0, Le2/g$a;->M:Z

    .line 17
    iput-boolean v2, p0, Le2/g$a;->N:Z

    .line 18
    iput-object p1, p0, Le2/g$a;->a:Landroid/content/Context;

    const v3, 0x7f060242

    .line 19
    invoke-static {p1, v3}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v3

    const v5, 0x7f0400ef

    .line 20
    invoke-static {p1, v5, v3}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Le2/g$a;->p:I

    const v5, 0x1010435

    .line 21
    invoke-static {p1, v5, v3}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Le2/g$a;->p:I

    .line 22
    invoke-static {p1, v3}, Lh2/b;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Le2/g$a;->q:Landroid/content/res/ColorStateList;

    .line 23
    iget v3, p0, Le2/g$a;->p:I

    invoke-static {p1, v3}, Lh2/b;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Le2/g$a;->r:Landroid/content/res/ColorStateList;

    .line 24
    iget v3, p0, Le2/g$a;->p:I

    invoke-static {p1, v3}, Lh2/b;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Le2/g$a;->s:Landroid/content/res/ColorStateList;

    .line 25
    iget v3, p0, Le2/g$a;->p:I

    const v5, 0x7f0402f8

    .line 26
    invoke-static {p1, v5, v3}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result v3

    .line 27
    invoke-static {p1, v3}, Lh2/b;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Le2/g$a;->t:Landroid/content/res/ColorStateList;

    const v3, 0x101042c

    .line 28
    invoke-static {p1, v3, v2}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result v3

    const v5, 0x7f0400f4

    .line 29
    invoke-static {p1, v5, v3}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result v3

    const v5, 0x7f0402ea

    .line 30
    invoke-static {p1, v5, v3}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Le2/g$a;->h:I

    .line 31
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    const v3, 0x1010036

    .line 32
    invoke-static {p1, v3, v2}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result v3

    .line 33
    invoke-static {v3}, Lh2/b;->d(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    iput v3, p0, Le2/g$a;->x:I

    .line 34
    sget-object v3, Ly/d;->c:Ly/d;

    if-nez v3, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    iput-object v0, p0, Le2/g$a;->c:Le2/d;

    .line 36
    iput-object v0, p0, Le2/g$a;->d:Le2/d;

    .line 37
    iput-object v1, p0, Le2/g$a;->e:Le2/d;

    .line 38
    iput-object v0, p0, Le2/g$a;->f:Le2/d;

    .line 39
    iput-object v0, p0, Le2/g$a;->g:Le2/d;

    :goto_1
    const v0, 0x7f040301

    .line 40
    iget-object v1, p0, Le2/g$a;->c:Le2/d;

    .line 41
    invoke-static {p1, v0, v1}, Lh2/b;->j(Landroid/content/Context;ILe2/d;)Le2/d;

    move-result-object v0

    iput-object v0, p0, Le2/g$a;->c:Le2/d;

    const v0, 0x7f0402ef

    .line 42
    iget-object v1, p0, Le2/g$a;->d:Le2/d;

    .line 43
    invoke-static {p1, v0, v1}, Lh2/b;->j(Landroid/content/Context;ILe2/d;)Le2/d;

    move-result-object v0

    iput-object v0, p0, Le2/g$a;->d:Le2/d;

    const v0, 0x7f0402ec

    .line 44
    iget-object v1, p0, Le2/g$a;->e:Le2/d;

    .line 45
    invoke-static {p1, v0, v1}, Lh2/b;->j(Landroid/content/Context;ILe2/d;)Le2/d;

    move-result-object v0

    iput-object v0, p0, Le2/g$a;->e:Le2/d;

    const v0, 0x7f0402f7

    .line 46
    iget-object v1, p0, Le2/g$a;->f:Le2/d;

    .line 47
    invoke-static {p1, v0, v1}, Lh2/b;->j(Landroid/content/Context;ILe2/d;)Le2/d;

    move-result-object v0

    iput-object v0, p0, Le2/g$a;->f:Le2/d;

    const v0, 0x7f0402ed

    .line 48
    iget-object v1, p0, Le2/g$a;->g:Le2/d;

    .line 49
    invoke-static {p1, v0, v1}, Lh2/b;->j(Landroid/content/Context;ILe2/d;)Le2/d;

    move-result-object v0

    iput-object v0, p0, Le2/g$a;->g:Le2/d;

    const v0, 0x7f0402fa

    .line 50
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 52
    iget-object v0, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0402ff

    .line 53
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 55
    iget-object p1, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/String;

    .line 56
    :try_start_0
    invoke-virtual {p0, v0, p1}, Le2/g$a;->m(Ljava/lang/String;Ljava/lang/String;)Le2/g$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    .line 57
    :goto_2
    iget-object p1, p0, Le2/g$a;->D:Landroid/graphics/Typeface;

    if-nez p1, :cond_2

    :try_start_1
    const-string p1, "sans-serif-medium"

    .line 58
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Le2/g$a;->D:Landroid/graphics/Typeface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 59
    :catchall_1
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object p1, p0, Le2/g$a;->D:Landroid/graphics/Typeface;

    .line 60
    :cond_2
    :goto_3
    iget-object p1, p0, Le2/g$a;->C:Landroid/graphics/Typeface;

    if-nez p1, :cond_3

    :try_start_2
    const-string p1, "sans-serif"

    .line 61
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Le2/g$a;->C:Landroid/graphics/Typeface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    nop

    .line 62
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Le2/g$a;->C:Landroid/graphics/Typeface;

    if-nez p1, :cond_3

    .line 63
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p1, p0, Le2/g$a;->C:Landroid/graphics/Typeface;

    :cond_3
    :goto_4
    return-void
.end method


# virtual methods
.method public a(I)Le2/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le2/g$a;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0, p1}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result p1

    .line 3
    iput p1, p0, Le2/g$a;->J:I

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Le2/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le2/g$a;->o:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Le2/g$a;->k:Ljava/lang/CharSequence;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot set content() when you\'re using a custom view."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(I)Le2/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le2/g$a;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0, p1}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result p1

    .line 3
    iput p1, p0, Le2/g$a;->j:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Le2/g$a;->M:Z

    return-object p0
.end method

.method public d(IZ)Le2/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Le2/g$a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le2/g$a;->k:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    iput-object p1, p0, Le2/g$a;->o:Landroid/view/View;

    .line 7
    iput-boolean p2, p0, Le2/g$a;->I:Z

    return-object p0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot use customView() when you have content set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(I)Le2/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Le2/g$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Le0/f;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    iput-object p1, p0, Le2/g$a;->E:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public f(I)Le2/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le2/g$a;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0, p1}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result p1

    .line 3
    iput p1, p0, Le2/g$a;->K:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Le2/g$a;->N:Z

    return-object p0
.end method

.method public g(I)Le2/g$a;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Le2/g$a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    iput-object p1, p0, Le2/g$a;->n:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public h(I)Le2/g$a;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Le2/g$a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    iput-object p1, p0, Le2/g$a;->m:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public i(I)Le2/g$a;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Le2/g$a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    iput-object p1, p0, Le2/g$a;->l:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public j()Le2/g;
    .locals 1

    .line 1
    new-instance v0, Le2/g;

    invoke-direct {v0, p0}, Le2/g;-><init>(Le2/g$a;)V

    .line 2
    invoke-virtual {v0}, Le2/g;->show()V

    return-object v0
.end method

.method public k(I)Le2/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le2/g$a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    iput-object p1, p0, Le2/g$a;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public l(I)Le2/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le2/g$a;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0, p1}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result p1

    .line 3
    iput p1, p0, Le2/g$a;->i:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Le2/g$a;->L:Z

    return-object p0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)Le2/g$a;
    .locals 3

    const-string v0, "\""

    const-string v1, "No font asset found for \""

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2
    iget-object v2, p0, Le2/g$a;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lh2/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Le2/g$a;->D:Landroid/graphics/Typeface;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, p1, v0}, Landroid/support/v4/media/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Le2/g$a;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lh2/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Le2/g$a;->C:Landroid/graphics/Typeface;

    if-eqz p1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, p2, v0}, Landroid/support/v4/media/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-object p0
.end method
