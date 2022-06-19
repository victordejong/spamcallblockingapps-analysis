.class public final Landroidx/appcompat/app/m;
.super Landroidx/appcompat/app/ActionBar;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/m$a;
    }
.end annotation


# static fields
.field private static final s:Landroid/view/animation/Interpolator;

.field private static final t:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private B:Z

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Z

.field a:Landroid/content/Context;

.field b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field c:Landroidx/appcompat/widget/ActionBarContainer;

.field d:Landroidx/appcompat/widget/o;

.field e:Landroidx/appcompat/widget/ActionBarContextView;

.field f:Landroid/view/View;

.field g:Landroidx/appcompat/widget/ScrollingTabContainerView;

.field h:Landroidx/appcompat/app/m$a;

.field i:Landroidx/appcompat/view/b;

.field j:Landroidx/appcompat/view/b$a;

.field k:Z

.field l:Z

.field m:Z

.field n:Landroidx/appcompat/view/h;

.field o:Z

.field final p:Landroidx/core/view/z;

.field final q:Landroidx/core/view/z;

.field final r:Landroidx/core/view/ab;

.field private u:Landroid/content/Context;

.field private v:Landroid/app/Activity;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/m;->s:Landroid/view/animation/Interpolator;

    .line 86
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/m;->t:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 169
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/m;->w:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Landroidx/appcompat/app/m;->x:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/m;->A:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Landroidx/appcompat/app/m;->C:I

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->k:Z

    .line 129
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->E:Z

    .line 135
    new-instance v0, Landroidx/appcompat/app/m$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/m$1;-><init>(Landroidx/appcompat/app/m;)V

    iput-object v0, p0, Landroidx/appcompat/app/m;->p:Landroidx/core/view/z;

    .line 152
    new-instance v0, Landroidx/appcompat/app/m$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/m$2;-><init>(Landroidx/appcompat/app/m;)V

    iput-object v0, p0, Landroidx/appcompat/app/m;->q:Landroidx/core/view/z;

    .line 160
    new-instance v0, Landroidx/appcompat/app/m$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/m$3;-><init>(Landroidx/appcompat/app/m;)V

    iput-object v0, p0, Landroidx/appcompat/app/m;->r:Landroidx/core/view/ab;

    .line 170
    iput-object p1, p0, Landroidx/appcompat/app/m;->v:Landroid/app/Activity;

    .line 171
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 173
    invoke-direct {p0, p1}, Landroidx/appcompat/app/m;->a(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/m;->f:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 179
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/m;->w:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Landroidx/appcompat/app/m;->x:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/m;->A:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Landroidx/appcompat/app/m;->C:I

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->k:Z

    .line 129
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->E:Z

    .line 135
    new-instance v0, Landroidx/appcompat/app/m$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/m$1;-><init>(Landroidx/appcompat/app/m;)V

    iput-object v0, p0, Landroidx/appcompat/app/m;->p:Landroidx/core/view/z;

    .line 152
    new-instance v0, Landroidx/appcompat/app/m$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/m$2;-><init>(Landroidx/appcompat/app/m;)V

    iput-object v0, p0, Landroidx/appcompat/app/m;->q:Landroidx/core/view/z;

    .line 160
    new-instance v0, Landroidx/appcompat/app/m$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/m$3;-><init>(Landroidx/appcompat/app/m;)V

    iput-object v0, p0, Landroidx/appcompat/app/m;->r:Landroidx/core/view/ab;

    .line 180
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/m;->a(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 188
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/m;->w:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Landroidx/appcompat/app/m;->x:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/m;->A:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Landroidx/appcompat/app/m;->C:I

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->k:Z

    .line 129
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->E:Z

    .line 135
    new-instance v0, Landroidx/appcompat/app/m$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/m$1;-><init>(Landroidx/appcompat/app/m;)V

    iput-object v0, p0, Landroidx/appcompat/app/m;->p:Landroidx/core/view/z;

    .line 152
    new-instance v0, Landroidx/appcompat/app/m$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/m$2;-><init>(Landroidx/appcompat/app/m;)V

    iput-object v0, p0, Landroidx/appcompat/app/m;->q:Landroidx/core/view/z;

    .line 160
    new-instance v0, Landroidx/appcompat/app/m$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/m$3;-><init>(Landroidx/appcompat/app/m;)V

    iput-object v0, p0, Landroidx/appcompat/app/m;->r:Landroidx/core/view/ab;

    .line 189
    invoke-direct {p0, p1}, Landroidx/appcompat/app/m;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 193
    sget v0, Landroidx/appcompat/a$f;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroidx/appcompat/app/m;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$a;)V

    .line 197
    :cond_0
    sget v0, Landroidx/appcompat/a$f;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/m;->b(Landroid/view/View;)Landroidx/appcompat/widget/o;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    .line 198
    sget v0, Landroidx/appcompat/a$f;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/m;->e:Landroidx/appcompat/widget/ActionBarContextView;

    .line 200
    sget v0, Landroidx/appcompat/a$f;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    .line 203
    iget-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroidx/appcompat/app/m;->e:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 208
    invoke-interface {v0}, Landroidx/appcompat/widget/o;->b()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/m;->a:Landroid/content/Context;

    .line 211
    iget-object p1, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {p1}, Landroidx/appcompat/widget/o;->m()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 214
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->y:Z

    .line 217
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/m;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->d()Z

    .line 219
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->b()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/m;->g(Z)V

    .line 221
    iget-object p1, p0, Landroidx/appcompat/app/m;->a:Landroid/content/Context;

    const/4 v0, 0x0

    sget-object v2, Landroidx/appcompat/a$j;->ActionBar:[I

    sget v3, Landroidx/appcompat/a$a;->actionBarStyle:I

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 224
    sget v0, Landroidx/appcompat/a$j;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    invoke-virtual {p0}, Landroidx/appcompat/app/m;->h()V

    .line 227
    :cond_3
    sget v0, Landroidx/appcompat/a$j;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_4

    int-to-float v0, v0

    .line 229
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/m;->a(F)V

    .line 231
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 204
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/view/View;)Landroidx/appcompat/widget/o;
    .locals 3

    .line 235
    instance-of v0, p0, Landroidx/appcompat/widget/o;

    if-eqz v0, :cond_0

    .line 236
    check-cast p0, Landroidx/appcompat/widget/o;

    return-object p0

    .line 237
    :cond_0
    instance-of v0, p0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 238
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->i()Landroidx/appcompat/widget/o;

    move-result-object p0

    return-object p0

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "null"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(Z)V
    .locals 4

    .line 261
    iput-boolean p1, p0, Landroidx/appcompat/app/m;->B:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 264
    iget-object p1, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/o;->a(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 265
    iget-object p1, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/m;->g:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 268
    iget-object p1, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    iget-object v0, p0, Landroidx/appcompat/app/m;->g:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/o;->a(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 270
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/app/m;->q()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 271
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/m;->g:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 273
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Landroidx/appcompat/app/m;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    .line 275
    invoke-static {v0}, Landroidx/core/view/v;->r(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    .line 278
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 281
    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    iget-boolean v3, p0, Landroidx/appcompat/app/m;->B:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/o;->a(Z)V

    .line 282
    iget-object v0, p0, Landroidx/appcompat/app/m;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Landroidx/appcompat/app/m;->B:Z

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method private h(Z)V
    .locals 3

    .line 769
    iget-boolean v0, p0, Landroidx/appcompat/app/m;->l:Z

    iget-boolean v1, p0, Landroidx/appcompat/app/m;->m:Z

    iget-boolean v2, p0, Landroidx/appcompat/app/m;->D:Z

    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/m;->a(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-boolean v0, p0, Landroidx/appcompat/app/m;->E:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 774
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->E:Z

    .line 775
    invoke-direct {p0, p1}, Landroidx/appcompat/app/m;->i(Z)V

    return-void

    .line 778
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/app/m;->E:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 779
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->E:Z

    .line 780
    invoke-direct {p0, p1}, Landroidx/appcompat/app/m;->j(Z)V

    :cond_1
    return-void
.end method

.method private i(Z)V
    .locals 4

    .line 786
    iget-object v0, p0, Landroidx/appcompat/app/m;->n:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Landroidx/appcompat/view/h;->b()V

    .line 789
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 791
    iget v0, p0, Landroidx/appcompat/app/m;->C:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/app/m;->F:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 793
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 794
    iget-object v0, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 796
    fill-array-data p1, :array_0

    .line 797
    iget-object v2, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/ActionBarContainer;->getLocationInWindow([I)V

    const/4 v2, 0x1

    .line 798
    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 800
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 801
    new-instance p1, Landroidx/appcompat/view/h;

    invoke-direct {p1}, Landroidx/appcompat/view/h;-><init>()V

    .line 802
    iget-object v2, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Landroidx/core/view/v;->m(Landroid/view/View;)Landroidx/core/view/y;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/view/y;->b(F)Landroidx/core/view/y;

    move-result-object v2

    .line 803
    iget-object v3, p0, Landroidx/appcompat/app/m;->r:Landroidx/core/view/ab;

    invoke-virtual {v2, v3}, Landroidx/core/view/y;->a(Landroidx/core/view/ab;)Landroidx/core/view/y;

    .line 804
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/h;->a(Landroidx/core/view/y;)Landroidx/appcompat/view/h;

    .line 805
    iget-boolean v2, p0, Landroidx/appcompat/app/m;->k:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/app/m;->f:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 806
    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 807
    iget-object v0, p0, Landroidx/appcompat/app/m;->f:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/v;->m(Landroid/view/View;)Landroidx/core/view/y;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/view/y;->b(F)Landroidx/core/view/y;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->a(Landroidx/core/view/y;)Landroidx/appcompat/view/h;

    .line 809
    :cond_3
    sget-object v0, Landroidx/appcompat/app/m;->t:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->a(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;

    .line 810
    invoke-virtual {p1}, Landroidx/appcompat/view/h;->c()Landroidx/appcompat/view/h;

    .line 818
    iget-object v0, p0, Landroidx/appcompat/app/m;->q:Landroidx/core/view/z;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->a(Landroidx/core/view/z;)Landroidx/appcompat/view/h;

    .line 819
    iput-object p1, p0, Landroidx/appcompat/app/m;->n:Landroidx/appcompat/view/h;

    .line 820
    invoke-virtual {p1}, Landroidx/appcompat/view/h;->a()V

    goto :goto_0

    .line 822
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    .line 823
    iget-object p1, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 824
    iget-boolean p1, p0, Landroidx/appcompat/app/m;->k:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/app/m;->f:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 825
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 827
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/app/m;->q:Landroidx/core/view/z;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/view/z;->b(Landroid/view/View;)V

    .line 829
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/m;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_6

    .line 830
    invoke-static {p1}, Landroidx/core/view/v;->r(Landroid/view/View;)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private j(Z)V
    .locals 4

    .line 835
    iget-object v0, p0, Landroidx/appcompat/app/m;->n:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Landroidx/appcompat/view/h;->b()V

    .line 839
    :cond_0
    iget v0, p0, Landroidx/appcompat/app/m;->C:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/app/m;->F:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 840
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    .line 841
    iget-object v0, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 842
    new-instance v0, Landroidx/appcompat/view/h;

    invoke-direct {v0}, Landroidx/appcompat/view/h;-><init>()V

    .line 843
    iget-object v2, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 845
    fill-array-data p1, :array_0

    .line 846
    iget-object v3, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 847
    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    .line 849
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Landroidx/core/view/v;->m(Landroid/view/View;)Landroidx/core/view/y;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/view/y;->b(F)Landroidx/core/view/y;

    move-result-object p1

    .line 850
    iget-object v1, p0, Landroidx/appcompat/app/m;->r:Landroidx/core/view/ab;

    invoke-virtual {p1, v1}, Landroidx/core/view/y;->a(Landroidx/core/view/ab;)Landroidx/core/view/y;

    .line 851
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/view/y;)Landroidx/appcompat/view/h;

    .line 852
    iget-boolean p1, p0, Landroidx/appcompat/app/m;->k:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/m;->f:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 853
    invoke-static {p1}, Landroidx/core/view/v;->m(Landroid/view/View;)Landroidx/core/view/y;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/view/y;->b(F)Landroidx/core/view/y;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/view/y;)Landroidx/appcompat/view/h;

    .line 855
    :cond_3
    sget-object p1, Landroidx/appcompat/app/m;->s:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;

    .line 856
    invoke-virtual {v0}, Landroidx/appcompat/view/h;->c()Landroidx/appcompat/view/h;

    .line 857
    iget-object p1, p0, Landroidx/appcompat/app/m;->p:Landroidx/core/view/z;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/view/z;)Landroidx/appcompat/view/h;

    .line 858
    iput-object v0, p0, Landroidx/appcompat/app/m;->n:Landroidx/appcompat/view/h;

    .line 859
    invoke-virtual {v0}, Landroidx/appcompat/view/h;->a()V

    return-void

    .line 861
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/m;->p:Landroidx/core/view/z;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/view/z;->b(Landroid/view/View;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private q()I
    .locals 1

    .line 511
    iget-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->n()I

    move-result v0

    return v0
.end method

.method private r()V
    .locals 2

    .line 684
    iget-boolean v0, p0, Landroidx/appcompat/app/m;->D:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 685
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->D:Z

    .line 686
    iget-object v1, p0, Landroidx/appcompat/app/m;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 687
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 689
    invoke-direct {p0, v0}, Landroidx/appcompat/app/m;->h(Z)V

    :cond_1
    return-void
.end method

.method private s()V
    .locals 2

    .line 710
    iget-boolean v0, p0, Landroidx/appcompat/app/m;->D:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 711
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->D:Z

    .line 712
    iget-object v1, p0, Landroidx/appcompat/app/m;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 713
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 715
    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/app/m;->h(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 2

    .line 521
    iget-object v0, p0, Landroidx/appcompat/app/m;->h:Landroidx/appcompat/app/m$a;

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Landroidx/appcompat/app/m$a;->c()V

    .line 525
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/m;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 526
    iget-object v0, p0, Landroidx/appcompat/app/m;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->c()V

    .line 527
    new-instance v0, Landroidx/appcompat/app/m$a;

    iget-object v1, p0, Landroidx/appcompat/app/m;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/m$a;-><init>(Landroidx/appcompat/app/m;Landroid/content/Context;Landroidx/appcompat/view/b$a;)V

    .line 528
    invoke-virtual {v0}, Landroidx/appcompat/app/m$a;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 531
    iput-object v0, p0, Landroidx/appcompat/app/m;->h:Landroidx/appcompat/app/m$a;

    .line 532
    invoke-virtual {v0}, Landroidx/appcompat/app/m$a;->d()V

    .line 533
    iget-object p1, p0, Landroidx/appcompat/app/m;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Landroidx/appcompat/view/b;)V

    const/4 p1, 0x1

    .line 534
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/m;->f(Z)V

    .line 535
    iget-object p1, p0, Landroidx/appcompat/app/m;->e:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 465
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->y:Z

    .line 467
    iget-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/o;->c(I)V

    return-void
.end method

.method public final a(F)V
    .locals 1

    .line 247
    iget-object v0, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroidx/core/view/v;->a(Landroid/view/View;F)V

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 362
    invoke-virtual {p0}, Landroidx/appcompat/app/m;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    .line 363
    invoke-interface {v1}, Landroidx/appcompat/widget/o;->a()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    .line 362
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2284
    iget-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/o;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 257
    iget-object p1, p0, Landroidx/appcompat/app/m;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/a;->b()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/m;->g(Z)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 481
    iget-object v0, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 439
    iget-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/o;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2472
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {v1}, Landroidx/appcompat/widget/o;->m()I

    move-result v1

    const/4 v2, 0x1

    .line 2474
    iput-boolean v2, p0, Landroidx/appcompat/app/m;->y:Z

    .line 2476
    iget-object v2, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    and-int/2addr p1, v0

    and-int/lit8 v0, v1, -0x5

    or-int/2addr p1, v0

    invoke-interface {v2, p1}, Landroidx/appcompat/widget/o;->c(I)V

    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1400
    iget-object v0, p0, Landroidx/appcompat/app/m;->h:Landroidx/appcompat/app/m$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4006
    :cond_0
    iget-object v0, v0, Landroidx/appcompat/app/m$a;->a:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 1406
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 1405
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 1407
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 1408
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 496
    iget-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->o()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    .line 956
    iget-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/o;->d(I)V

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 941
    iget-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/o;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 444
    iget-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/o;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 1393
    iget-boolean v0, p0, Landroidx/appcompat/app/m;->y:Z

    if-nez v0, :cond_0

    .line 1394
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/m;->a(Z)V

    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/CharSequence;
    .locals 1

    .line 501
    iget-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    .line 319
    iput p1, p0, Landroidx/appcompat/app/m;->C:I

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Landroidx/appcompat/app/m;->F:Z

    if-nez p1, :cond_0

    .line 332
    iget-object p1, p0, Landroidx/appcompat/app/m;->n:Landroidx/appcompat/view/h;

    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p1}, Landroidx/appcompat/view/h;->b()V

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    .line 516
    iget-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->m()I

    move-result v0

    return v0
.end method

.method public final d(Z)V
    .locals 2

    .line 349
    iget-boolean v0, p0, Landroidx/appcompat/app/m;->z:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 352
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/m;->z:Z

    .line 354
    iget-object p1, p0, Landroidx/appcompat/app/m;->A:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 356
    iget-object v1, p0, Landroidx/appcompat/app/m;->A:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 1

    .line 677
    iget-boolean v0, p0, Landroidx/appcompat/app/m;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 678
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->l:Z

    .line 679
    invoke-direct {p0, v0}, Landroidx/appcompat/app/m;->h(Z)V

    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 672
    iput-boolean p1, p0, Landroidx/appcompat/app/m;->k:Z

    return-void
.end method

.method public final f()V
    .locals 1

    .line 703
    iget-boolean v0, p0, Landroidx/appcompat/app/m;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 704
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->l:Z

    const/4 v0, 0x0

    .line 705
    invoke-direct {p0, v0}, Landroidx/appcompat/app/m;->h(Z)V

    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 874
    invoke-direct {p0}, Landroidx/appcompat/app/m;->r()V

    goto :goto_0

    .line 876
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/app/m;->s()V

    .line 3914
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/m;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0}, Landroidx/core/view/v;->B(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_1

    .line 886
    iget-object p1, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {p1, v1, v4, v5}, Landroidx/appcompat/widget/o;->a(IJ)Landroidx/core/view/y;

    move-result-object p1

    .line 888
    iget-object v0, p0, Landroidx/appcompat/app/m;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->a(IJ)Landroidx/core/view/y;

    move-result-object v0

    goto :goto_1

    .line 891
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {p1, v3, v6, v7}, Landroidx/appcompat/widget/o;->a(IJ)Landroidx/core/view/y;

    move-result-object v0

    .line 893
    iget-object p1, p0, Landroidx/appcompat/app/m;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->a(IJ)Landroidx/core/view/y;

    move-result-object p1

    .line 896
    :goto_1
    new-instance v1, Landroidx/appcompat/view/h;

    invoke-direct {v1}, Landroidx/appcompat/view/h;-><init>()V

    .line 897
    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/view/h;->a(Landroidx/core/view/y;Landroidx/core/view/y;)Landroidx/appcompat/view/h;

    .line 898
    invoke-virtual {v1}, Landroidx/appcompat/view/h;->a()V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 901
    iget-object p1, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {p1, v1}, Landroidx/appcompat/widget/o;->e(I)V

    .line 902
    iget-object p1, p0, Landroidx/appcompat/app/m;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void

    .line 904
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {p1, v3}, Landroidx/appcompat/widget/o;->e(I)V

    .line 905
    iget-object p1, p0, Landroidx/appcompat/app/m;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

.method public final g()Landroid/content/Context;
    .locals 4

    .line 919
    iget-object v0, p0, Landroidx/appcompat/app/m;->u:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 920
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 921
    iget-object v1, p0, Landroidx/appcompat/app/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 922
    sget v2, Landroidx/appcompat/a$a;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 923
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 926
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroidx/appcompat/app/m;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/app/m;->u:Landroid/content/Context;

    goto :goto_0

    .line 928
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/m;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/app/m;->u:Landroid/content/Context;

    .line 931
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/m;->u:Landroid/content/Context;

    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 729
    iget-object v0, p0, Landroidx/appcompat/app/m;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 3211
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 733
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->o:Z

    .line 734
    iget-object v1, p0, Landroidx/appcompat/app/m;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void

    .line 730
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()Z
    .locals 1

    .line 973
    iget-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->d()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()V
    .locals 1

    .line 695
    iget-boolean v0, p0, Landroidx/appcompat/app/m;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 696
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->m:Z

    const/4 v0, 0x1

    .line 697
    invoke-direct {p0, v0}, Landroidx/appcompat/app/m;->h(Z)V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 1

    .line 721
    iget-boolean v0, p0, Landroidx/appcompat/app/m;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 722
    iput-boolean v0, p0, Landroidx/appcompat/app/m;->m:Z

    .line 723
    invoke-direct {p0, v0}, Landroidx/appcompat/app/m;->h(Z)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 1

    .line 961
    iget-object v0, p0, Landroidx/appcompat/app/m;->n:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {v0}, Landroidx/appcompat/view/h;->b()V

    const/4 v0, 0x0

    .line 963
    iput-object v0, p0, Landroidx/appcompat/app/m;->n:Landroidx/appcompat/view/h;

    :cond_0
    return-void
.end method
