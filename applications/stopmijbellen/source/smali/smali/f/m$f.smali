.class public Lf/m$f;
.super Lk/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public b:Lf/m$c;

.field public final synthetic c:Lf/m;


# direct methods
.method public constructor <init>(Lf/m;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/m$f;->c:Lf/m;

    .line 2
    invoke-direct {p0, p2}, Lk/h;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 9

    .line 1
    new-instance v0, Lk/e$a;

    iget-object v1, p0, Lf/m$f;->c:Lf/m;

    iget-object v1, v1, Lf/m;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lk/e$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 2
    iget-object p1, p0, Lf/m$f;->c:Lf/m;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p1, Lf/m;->n:Lk/a;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lk/a;->c()V

    .line 6
    :cond_0
    new-instance v1, Lf/m$e;

    invoke-direct {v1, p1, v0}, Lf/m$e;-><init>(Lf/m;Lk/a$a;)V

    .line 7
    invoke-virtual {p1}, Lf/m;->S()V

    .line 8
    iget-object v2, p1, Lf/m;->h:Lf/a;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2, v1}, Lf/a;->s(Lk/a$a;)Lk/a;

    move-result-object v2

    iput-object v2, p1, Lf/m;->n:Lk/a;

    if-eqz v2, :cond_1

    .line 10
    iget-object v3, p1, Lf/m;->g:Lf/k;

    if-eqz v3, :cond_1

    .line 11
    invoke-interface {v3, v2}, Lf/k;->j(Lk/a;)V

    .line 12
    :cond_1
    iget-object v2, p1, Lf/m;->n:Lk/a;

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 13
    invoke-virtual {p1}, Lf/m;->K()V

    .line 14
    iget-object v2, p1, Lf/m;->n:Lk/a;

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v2}, Lk/a;->c()V

    .line 16
    :cond_2
    iget-object v2, p1, Lf/m;->g:Lf/k;

    if-eqz v2, :cond_3

    iget-boolean v4, p1, Lf/m;->J:Z

    if-nez v4, :cond_3

    .line 17
    :try_start_0
    invoke-interface {v2, v1}, Lf/k;->h(Lk/a$a;)Lk/a;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_4

    .line 18
    iput-object v2, p1, Lf/m;->n:Lk/a;

    goto/16 :goto_5

    .line 19
    :cond_4
    iget-object v2, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_7

    .line 20
    iget-boolean v2, p1, Lf/m;->B:Z

    if-eqz v2, :cond_6

    .line 21
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 22
    iget-object v6, p1, Lf/m;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f04000b

    .line 23
    invoke-virtual {v6, v7, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 24
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_5

    .line 25
    iget-object v7, p1, Lf/m;->d:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 26
    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 27
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v6, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 28
    new-instance v6, Lk/c;

    iget-object v8, p1, Lf/m;->d:Landroid/content/Context;

    invoke-direct {v6, v8, v5}, Lk/c;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-virtual {v6}, Lk/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    .line 30
    :cond_5
    iget-object v6, p1, Lf/m;->d:Landroid/content/Context;

    .line 31
    :goto_1
    new-instance v7, Landroidx/appcompat/widget/ActionBarContextView;

    .line 32
    invoke-direct {v7, v6, v3}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v7, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    .line 34
    new-instance v7, Landroid/widget/PopupWindow;

    const v8, 0x7f04001a

    invoke-direct {v7, v6, v3, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p1, Lf/m;->p:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    .line 35
    invoke-static {v7, v8}, Lp0/f;->b(Landroid/widget/PopupWindow;I)V

    .line 36
    iget-object v7, p1, Lf/m;->p:Landroid/widget/PopupWindow;

    iget-object v8, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 37
    iget-object v7, p1, Lf/m;->p:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 38
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f040005

    invoke-virtual {v7, v8, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 39
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 40
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 41
    invoke-static {v2, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    .line 42
    iget-object v6, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 43
    iget-object v2, p1, Lf/m;->p:Landroid/widget/PopupWindow;

    const/4 v6, -0x2

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 44
    new-instance v2, Lf/p;

    invoke-direct {v2, p1}, Lf/p;-><init>(Lf/m;)V

    iput-object v2, p1, Lf/m;->q:Ljava/lang/Runnable;

    goto :goto_2

    .line 45
    :cond_6
    iget-object v2, p1, Lf/m;->t:Landroid/view/ViewGroup;

    const v6, 0x7f090044

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v2, :cond_7

    .line 46
    invoke-virtual {p1}, Lf/m;->O()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 47
    invoke-virtual {v2}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v2, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    .line 48
    :cond_7
    :goto_2
    iget-object v2, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v2, :cond_c

    .line 49
    invoke-virtual {p1}, Lf/m;->K()V

    .line 50
    iget-object v2, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 51
    new-instance v2, Lk/d;

    iget-object v6, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v8, p1, Lf/m;->p:Landroid/widget/PopupWindow;

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    invoke-direct {v2, v6, v7, v1, v4}, Lk/d;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lk/a$a;Z)V

    .line 52
    iget-object v4, v2, Lk/d;->h:Landroidx/appcompat/view/menu/e;

    .line 53
    invoke-virtual {v1, v2, v4}, Lf/m$e;->b(Lk/a;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 54
    invoke-virtual {v2}, Lk/d;->i()V

    .line 55
    iget-object v1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->f(Lk/a;)V

    .line 56
    iput-object v2, p1, Lf/m;->n:Lk/a;

    .line 57
    invoke-virtual {p1}, Lf/m;->Y()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_9

    .line 58
    iget-object v1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 59
    iget-object v1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v1}, Lm0/v;->b(Landroid/view/View;)Lm0/y;

    move-result-object v1

    invoke-virtual {v1, v2}, Lm0/y;->a(F)Lm0/y;

    iput-object v1, p1, Lf/m;->r:Lm0/y;

    .line 60
    new-instance v2, Lf/q;

    invoke-direct {v2, p1}, Lf/q;-><init>(Lf/m;)V

    .line 61
    iget-object v4, v1, Lm0/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_a

    .line 62
    invoke-virtual {v1, v4, v2}, Lm0/y;->e(Landroid/view/View;Lm0/z;)V

    goto :goto_4

    .line 63
    :cond_9
    iget-object v1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 64
    iget-object v1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 65
    iget-object v1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_a

    .line 66
    iget-object v1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 67
    invoke-static {v1}, Lm0/v$h;->c(Landroid/view/View;)V

    .line 68
    :cond_a
    :goto_4
    iget-object v1, p1, Lf/m;->p:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_c

    .line 69
    iget-object v1, p1, Lf/m;->e:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p1, Lf/m;->q:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 70
    :cond_b
    iput-object v3, p1, Lf/m;->n:Lk/a;

    .line 71
    :cond_c
    :goto_5
    iget-object v1, p1, Lf/m;->n:Lk/a;

    if-eqz v1, :cond_d

    iget-object v2, p1, Lf/m;->g:Lf/k;

    if-eqz v2, :cond_d

    .line 72
    invoke-interface {v2, v1}, Lf/k;->j(Lk/a;)V

    .line 73
    :cond_d
    iget-object v1, p1, Lf/m;->n:Lk/a;

    .line 74
    iput-object v1, p1, Lf/m;->n:Lk/a;

    .line 75
    :cond_e
    iget-object p1, p1, Lf/m;->n:Lk/a;

    if-eqz p1, :cond_f

    .line 76
    invoke-virtual {v0, p1}, Lk/e$a;->e(Lk/a;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_f
    return-object v3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m$f;->c:Lf/m;

    invoke-virtual {v0, p1}, Lf/m;->I(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lk/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lf/m$f;->c:Lf/m;

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 4
    invoke-virtual {v0}, Lf/m;->S()V

    .line 5
    iget-object v4, v0, Lf/m;->h:Lf/a;

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4, v3, p1}, Lf/a;->i(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, v0, Lf/m;->F:Lf/m$k;

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, v2}, Lf/m;->W(Lf/m$k;ILandroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object p1, v0, Lf/m;->F:Lf/m$k;

    if-eqz p1, :cond_0

    .line 10
    iput-boolean v2, p1, Lf/m$k;->l:Z

    goto :goto_0

    .line 11
    :cond_2
    iget-object v3, v0, Lf/m;->F:Lf/m$k;

    if-nez v3, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Lf/m;->Q(I)Lf/m$k;

    move-result-object v3

    .line 13
    invoke-virtual {v0, v3, p1}, Lf/m;->X(Lf/m$k;Landroid/view/KeyEvent;)Z

    .line 14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, v2}, Lf/m;->W(Lf/m$k;ILandroid/view/KeyEvent;I)Z

    move-result p1

    .line 15
    iput-boolean v1, v3, Lf/m$k;->k:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1
    instance-of v0, p2, Landroidx/appcompat/view/menu/e;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lk/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m$f;->b:Lf/m$c;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, Lf/v$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 3
    new-instance v1, Landroid/view/View;

    iget-object v0, v0, Lf/v$e;->a:Lf/v;

    iget-object v0, v0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0}, Landroidx/appcompat/widget/g0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-object v0, p0, Lk/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2
    iget-object p2, p0, Lf/m$f;->c:Lf/m;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lf/m;->S()V

    .line 4
    iget-object p1, p2, Lf/m;->h:Lf/a;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lf/a;->c(Z)V

    :cond_0
    return v1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2
    iget-object p2, p0, Lf/m$f;->c:Lf/m;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Lf/m;->S()V

    .line 4
    iget-object p1, p2, Lf/m;->h:Lf/a;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lf/a;->c(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p2, p1}, Lf/m;->Q(I)Lf/m$k;

    move-result-object p1

    .line 7
    iget-boolean v1, p1, Lf/m$k;->m:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p2, p1, v0}, Lf/m;->G(Lf/m$k;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 6

    .line 1
    instance-of v0, p3, Landroidx/appcompat/view/menu/e;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/appcompat/view/menu/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    iput-boolean v2, v0, Landroidx/appcompat/view/menu/e;->x:Z

    .line 3
    :cond_2
    iget-object v3, p0, Lf/m$f;->b:Lf/m$c;

    if-eqz v3, :cond_3

    check-cast v3, Lf/v$e;

    if-nez p1, :cond_3

    .line 4
    iget-object v4, v3, Lf/v$e;->a:Lf/v;

    iget-boolean v5, v4, Lf/v;->d:Z

    if-nez v5, :cond_3

    .line 5
    iget-object v4, v4, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v4}, Landroidx/appcompat/widget/g0;->c()V

    .line 6
    iget-object v3, v3, Lf/v$e;->a:Lf/v;

    iput-boolean v2, v3, Lf/v;->d:Z

    .line 7
    :cond_3
    iget-object v2, p0, Lk/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_4

    .line 8
    iput-boolean v1, v0, Landroidx/appcompat/view/menu/e;->x:Z

    :cond_4
    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/m$f;->c:Lf/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/m;->Q(I)Lf/m$k;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lk/h;->a:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, v0, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lk/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lf/m$f;->c:Lf/m;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Lf/m$f;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 5
    iget-object v0, p0, Lf/m$f;->c:Lf/m;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 7
    iget-object v0, p0, Lk/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lf/m$f;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
