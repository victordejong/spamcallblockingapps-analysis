.class public Landroidx/appcompat/app/l;
.super Landroidx/appcompat/app/a;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/l$a;
    }
.end annotation


# static fields
.field static final synthetic s:Z

.field private static final t:Landroid/view/animation/Interpolator;

.field private static final u:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field a:Landroid/content/Context;

.field b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field c:Landroidx/appcompat/widget/ActionBarContainer;

.field d:Landroidx/appcompat/widget/x;

.field e:Landroidx/appcompat/widget/ActionBarContextView;

.field f:Landroid/view/View;

.field g:Landroidx/appcompat/widget/ai;

.field h:Landroidx/appcompat/app/l$a;

.field i:Landroidx/appcompat/view/b;

.field j:Landroidx/appcompat/view/b$a;

.field k:Z

.field l:Z

.field m:Z

.field n:Landroidx/appcompat/view/h;

.field o:Z

.field final p:Landroidx/core/h/z;

.field final q:Landroidx/core/h/z;

.field final r:Landroidx/core/h/ab;

.field private v:Landroid/content/Context;

.field private w:Landroid/app/Activity;

.field private x:Landroid/app/Dialog;

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Landroidx/appcompat/app/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroidx/appcompat/app/l;->s:Z

    .line 84
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/l;->t:Landroid/view/animation/Interpolator;

    .line 85
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/l;->u:Landroid/view/animation/Interpolator;

    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 169
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/l;->y:Ljava/util/ArrayList;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/app/l;->z:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/l;->C:Ljava/util/ArrayList;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/l;->E:I

    .line 124
    iput-boolean v1, p0, Landroidx/appcompat/app/l;->k:Z

    .line 129
    iput-boolean v1, p0, Landroidx/appcompat/app/l;->G:Z

    .line 135
    new-instance v0, Landroidx/appcompat/app/l$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$1;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->p:Landroidx/core/h/z;

    .line 152
    new-instance v0, Landroidx/appcompat/app/l$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$2;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->q:Landroidx/core/h/z;

    .line 160
    new-instance v0, Landroidx/appcompat/app/l$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$3;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->r:Landroidx/core/h/ab;

    .line 170
    iput-object p1, p0, Landroidx/appcompat/app/l;->w:Landroid/app/Activity;

    .line 171
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->a(Landroid/view/View;)V

    .line 174
    if-nez p2, :cond_0

    .line 175
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    .line 177
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 179
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/l;->y:Ljava/util/ArrayList;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/app/l;->z:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/l;->C:Ljava/util/ArrayList;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/l;->E:I

    .line 124
    iput-boolean v1, p0, Landroidx/appcompat/app/l;->k:Z

    .line 129
    iput-boolean v1, p0, Landroidx/appcompat/app/l;->G:Z

    .line 135
    new-instance v0, Landroidx/appcompat/app/l$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$1;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->p:Landroidx/core/h/z;

    .line 152
    new-instance v0, Landroidx/appcompat/app/l$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$2;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->q:Landroidx/core/h/z;

    .line 160
    new-instance v0, Landroidx/appcompat/app/l$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$3;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->r:Landroidx/core/h/ab;

    .line 180
    iput-object p1, p0, Landroidx/appcompat/app/l;->x:Landroid/app/Dialog;

    .line 181
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->a(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 195
    sget v0, Landroidx/appcompat/a$f;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 196
    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$a;)V

    .line 199
    :cond_0
    sget v0, Landroidx/appcompat/a$f;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->b(Landroid/view/View;)Landroidx/appcompat/widget/x;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    .line 200
    sget v0, Landroidx/appcompat/a$f;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    .line 202
    sget v0, Landroidx/appcompat/a$f;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    .line 205
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    if-nez v0, :cond_2

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    .line 213
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->o()I

    move-result v0

    .line 214
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    move v0, v2

    .line 215
    :goto_0
    if-eqz v0, :cond_3

    .line 216
    iput-boolean v2, p0, Landroidx/appcompat/app/l;->A:Z

    .line 219
    :cond_3
    iget-object v3, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-static {v3}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Landroidx/appcompat/view/a;->f()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_8

    :cond_4
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/l;->a(Z)V

    .line 221
    invoke-virtual {v3}, Landroidx/appcompat/view/a;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->k(Z)V

    .line 223
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Landroidx/appcompat/a$j;->ActionBar:[I

    sget v5, Landroidx/appcompat/a$a;->actionBarStyle:I

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 226
    sget v3, Landroidx/appcompat/a$j;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 227
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/l;->b(Z)V

    .line 229
    :cond_5
    sget v2, Landroidx/appcompat/a$j;->ActionBar_elevation:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 230
    if-eqz v1, :cond_6

    .line 231
    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/l;->a(F)V

    .line 233
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    return-void

    :cond_7
    move v0, v1

    .line 214
    goto :goto_0

    :cond_8
    move v0, v1

    .line 220
    goto :goto_1
.end method

.method static a(ZZZ)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 760
    if-eqz p2, :cond_1

    .line 765
    :cond_0
    :goto_0
    return v0

    .line 762
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 763
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;)Landroidx/appcompat/widget/x;
    .locals 3

    .prologue
    .line 237
    instance-of v0, p1, Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_0

    .line 238
    check-cast p1, Landroidx/appcompat/widget/x;

    .line 240
    :goto_0
    return-object p1

    .line 239
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 240
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/x;

    move-result-object p1

    goto :goto_0

    .line 242
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_1
.end method

.method private k(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 263
    iput-boolean p1, p0, Landroidx/appcompat/app/l;->D:Z

    .line 265
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->D:Z

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0, v3}, Landroidx/appcompat/widget/x;->a(Landroidx/appcompat/widget/ai;)V

    .line 267
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v3, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ai;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ai;)V

    .line 272
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/l;->i()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 273
    :goto_1
    iget-object v3, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ai;

    if-eqz v3, :cond_0

    .line 274
    if-eqz v0, :cond_3

    .line 275
    iget-object v3, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ai;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/ai;->setVisibility(I)V

    .line 276
    iget-object v3, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 277
    iget-object v3, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroidx/core/h/u;->q(Landroid/view/View;)V

    .line 283
    :cond_0
    :goto_2
    iget-object v4, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    iget-boolean v3, p0, Landroidx/appcompat/app/l;->D:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Landroidx/appcompat/widget/x;->a(Z)V

    .line 284
    iget-object v3, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Landroidx/appcompat/app/l;->D:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 285
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ai;)V

    .line 270
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    iget-object v3, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ai;

    invoke-interface {v0, v3}, Landroidx/appcompat/widget/x;->a(Landroidx/appcompat/widget/ai;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 272
    goto :goto_1

    .line 280
    :cond_3
    iget-object v3, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ai;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ai;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 283
    goto :goto_3

    :cond_5
    move v1, v2

    .line 284
    goto :goto_4
.end method

.method private l(Z)V
    .locals 3

    .prologue
    .line 771
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->l:Z

    iget-boolean v1, p0, Landroidx/appcompat/app/l;->m:Z

    iget-boolean v2, p0, Landroidx/appcompat/app/l;->F:Z

    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/l;->a(ZZZ)Z

    move-result v0

    .line 774
    if-eqz v0, :cond_1

    .line 775
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->G:Z

    if-nez v0, :cond_0

    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->G:Z

    .line 777
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->h(Z)V

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->G:Z

    if-eqz v0, :cond_0

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->G:Z

    .line 782
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->i(Z)V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 686
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->F:Z

    if-nez v0, :cond_1

    .line 687
    iput-boolean v1, p0, Landroidx/appcompat/app/l;->F:Z

    .line 688
    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 691
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->l(Z)V

    .line 693
    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 712
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->F:Z

    if-eqz v0, :cond_1

    .line 713
    iput-boolean v1, p0, Landroidx/appcompat/app/l;->F:Z

    .line 714
    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 717
    :cond_0
    invoke-direct {p0, v1}, Landroidx/appcompat/app/l;->l(Z)V

    .line 719
    :cond_1
    return-void
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0}, Landroidx/core/h/u;->y(Landroid/view/View;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->o()I

    move-result v0

    return v0
.end method

.method public a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/app/l$a;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/app/l$a;

    invoke-virtual {v0}, Landroidx/appcompat/app/l$a;->c()V

    .line 527
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 528
    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->c()V

    .line 529
    new-instance v0, Landroidx/appcompat/app/l$a;

    iget-object v1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/l$a;-><init>(Landroidx/appcompat/app/l;Landroid/content/Context;Landroidx/appcompat/view/b$a;)V

    .line 530
    invoke-virtual {v0}, Landroidx/appcompat/app/l$a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    iput-object v0, p0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/app/l$a;

    .line 534
    invoke-virtual {v0}, Landroidx/appcompat/app/l$a;->d()V

    .line 535
    iget-object v1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Landroidx/appcompat/view/b;)V

    .line 536
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/l;->j(Z)V

    .line 537
    iget-object v1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 540
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroidx/core/h/u;->a(Landroid/view/View;F)V

    .line 250
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 321
    iput p1, p0, Landroidx/appcompat/app/l;->E:I

    .line 322
    return-void
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 474
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->o()I

    move-result v0

    .line 475
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 476
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/app/l;->A:Z

    .line 478
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroidx/appcompat/widget/x;->c(I)V

    .line 479
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/a;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->k(Z)V

    .line 260
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/x;->a(Ljava/lang/CharSequence;)V

    .line 447
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/x;->b(Z)V

    .line 396
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1402
    iget-object v0, p0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/app/l$a;

    if-nez v0, :cond_1

    .line 1412
    :cond_0
    :goto_0
    return v2

    .line 1405
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/app/l$a;

    invoke-virtual {v0}, Landroidx/appcompat/app/l$a;->b()Landroid/view/Menu;

    move-result-object v3

    .line 1406
    if-eqz v3, :cond_0

    .line 1407
    if-eqz p2, :cond_2

    .line 1408
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 1407
    :goto_1
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1409
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_3

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 1410
    invoke-interface {v3, p1, p2, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v2

    goto :goto_0

    .line 1408
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1409
    goto :goto_2
.end method

.method public b()Landroid/content/Context;
    .locals 4

    .prologue
    .line 921
    iget-object v0, p0, Landroidx/appcompat/app/l;->v:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 922
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 923
    iget-object v1, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 924
    sget v2, Landroidx/appcompat/a$a;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 925
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 927
    if-eqz v0, :cond_1

    .line 928
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/app/l;->v:Landroid/content/Context;

    .line 933
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->v:Landroid/content/Context;

    return-object v0

    .line 930
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/app/l;->v:Landroid/content/Context;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 731
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/l;->o:Z

    .line 736
    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 737
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 1395
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->A:Z

    if-nez v0, :cond_0

    .line 1396
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->f(Z)V

    .line 1398
    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 333
    iput-boolean p1, p0, Landroidx/appcompat/app/l;->H:Z

    .line 334
    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->c()V

    .line 337
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 3

    .prologue
    .line 351
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->B:Z

    if-ne p1, v0, :cond_1

    .line 360
    :cond_0
    return-void

    .line 354
    :cond_1
    iput-boolean p1, p0, Landroidx/appcompat/app/l;->B:Z

    .line 356
    iget-object v0, p0, Landroidx/appcompat/app/l;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 357
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 358
    iget-object v0, p0, Landroidx/appcompat/app/l;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a$b;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/a$b;->a(Z)V

    .line 357
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public f(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 380
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/l;->a(II)V

    .line 381
    return-void

    .line 380
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->d()V

    .line 977
    const/4 v0, 0x1

    .line 979
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 674
    iput-boolean p1, p0, Landroidx/appcompat/app/l;->k:Z

    .line 675
    return-void
.end method

.method h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Landroidx/appcompat/view/b$a;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Landroidx/appcompat/view/b$a;

    iget-object v1, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/view/b;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;)V

    .line 314
    iput-object v2, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/view/b;

    .line 315
    iput-object v2, p0, Landroidx/appcompat/app/l;->j:Landroidx/appcompat/view/b$a;

    .line 317
    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 788
    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->c()V

    .line 791
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 793
    iget v0, p0, Landroidx/appcompat/app/l;->E:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->H:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_5

    .line 795
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 796
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 797
    if-eqz p1, :cond_2

    .line 798
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 799
    iget-object v2, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 800
    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 802
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 803
    new-instance v1, Landroidx/appcompat/view/h;

    invoke-direct {v1}, Landroidx/appcompat/view/h;-><init>()V

    .line 804
    iget-object v2, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Landroidx/core/h/u;->m(Landroid/view/View;)Landroidx/core/h/y;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/core/h/y;->b(F)Landroidx/core/h/y;

    move-result-object v2

    .line 805
    iget-object v3, p0, Landroidx/appcompat/app/l;->r:Landroidx/core/h/ab;

    invoke-virtual {v2, v3}, Landroidx/core/h/y;->a(Landroidx/core/h/ab;)Landroidx/core/h/y;

    .line 806
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/h;->a(Landroidx/core/h/y;)Landroidx/appcompat/view/h;

    .line 807
    iget-boolean v2, p0, Landroidx/appcompat/app/l;->k:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 808
    iget-object v2, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 809
    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/h/u;->m(Landroid/view/View;)Landroidx/core/h/y;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/core/h/y;->b(F)Landroidx/core/h/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/h;->a(Landroidx/core/h/y;)Landroidx/appcompat/view/h;

    .line 811
    :cond_3
    sget-object v0, Landroidx/appcompat/app/l;->u:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/h;->a(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;

    .line 812
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/h;->a(J)Landroidx/appcompat/view/h;

    .line 820
    iget-object v0, p0, Landroidx/appcompat/app/l;->q:Landroidx/core/h/z;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/h;->a(Landroidx/core/h/z;)Landroidx/appcompat/view/h;

    .line 821
    iput-object v1, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    .line 822
    invoke-virtual {v1}, Landroidx/appcompat/view/h;->a()V

    .line 831
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_4

    .line 832
    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroidx/core/h/u;->q(Landroid/view/View;)V

    .line 834
    :cond_4
    return-void

    .line 824
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    .line 825
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 826
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->k:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 827
    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 829
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/app/l;->q:Landroidx/core/h/z;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/core/h/z;->b(Landroid/view/View;)V

    goto :goto_0

    .line 798
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public i()I
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->p()I

    move-result v0

    return v0
.end method

.method public i(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 837
    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->c()V

    .line 841
    :cond_0
    iget v0, p0, Landroidx/appcompat/app/l;->E:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->H:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 842
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    .line 843
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 844
    new-instance v1, Landroidx/appcompat/view/h;

    invoke-direct {v1}, Landroidx/appcompat/view/h;-><init>()V

    .line 845
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 846
    if-eqz p1, :cond_2

    .line 847
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 848
    iget-object v3, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 849
    aget v2, v2, v4

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 851
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Landroidx/core/h/u;->m(Landroid/view/View;)Landroidx/core/h/y;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/core/h/y;->b(F)Landroidx/core/h/y;

    move-result-object v2

    .line 852
    iget-object v3, p0, Landroidx/appcompat/app/l;->r:Landroidx/core/h/ab;

    invoke-virtual {v2, v3}, Landroidx/core/h/y;->a(Landroidx/core/h/ab;)Landroidx/core/h/y;

    .line 853
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/h;->a(Landroidx/core/h/y;)Landroidx/appcompat/view/h;

    .line 854
    iget-boolean v2, p0, Landroidx/appcompat/app/l;->k:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 855
    iget-object v2, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    invoke-static {v2}, Landroidx/core/h/u;->m(Landroid/view/View;)Landroidx/core/h/y;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/core/h/y;->b(F)Landroidx/core/h/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/h;->a(Landroidx/core/h/y;)Landroidx/appcompat/view/h;

    .line 857
    :cond_3
    sget-object v0, Landroidx/appcompat/app/l;->t:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/h;->a(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;

    .line 858
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/h;->a(J)Landroidx/appcompat/view/h;

    .line 859
    iget-object v0, p0, Landroidx/appcompat/app/l;->p:Landroidx/core/h/z;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/h;->a(Landroidx/core/h/z;)Landroidx/appcompat/view/h;

    .line 860
    iput-object v1, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    .line 861
    invoke-virtual {v1}, Landroidx/appcompat/view/h;->a()V

    .line 865
    :goto_0
    return-void

    .line 863
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/app/l;->p:Landroidx/core/h/z;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/core/h/z;->b(Landroid/view/View;)V

    goto :goto_0

    .line 847
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public j()V
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->m:Z

    if-eqz v0, :cond_0

    .line 698
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->m:Z

    .line 699
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->l(Z)V

    .line 701
    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const-wide/16 v4, 0x64

    const/16 v3, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 875
    if-eqz p1, :cond_0

    .line 876
    invoke-direct {p0}, Landroidx/appcompat/app/l;->n()V

    .line 881
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/app/l;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    if-eqz p1, :cond_1

    .line 888
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0, v1, v4, v5}, Landroidx/appcompat/widget/x;->a(IJ)Landroidx/core/h/y;

    move-result-object v0

    .line 890
    iget-object v1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->a(IJ)Landroidx/core/h/y;

    move-result-object v1

    .line 898
    :goto_1
    new-instance v2, Landroidx/appcompat/view/h;

    invoke-direct {v2}, Landroidx/appcompat/view/h;-><init>()V

    .line 899
    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/view/h;->a(Landroidx/core/h/y;Landroidx/core/h/y;)Landroidx/appcompat/view/h;

    .line 900
    invoke-virtual {v2}, Landroidx/appcompat/view/h;->a()V

    .line 911
    :goto_2
    return-void

    .line 878
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/app/l;->o()V

    goto :goto_0

    .line 893
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0, v2, v6, v7}, Landroidx/appcompat/widget/x;->a(IJ)Landroidx/core/h/y;

    move-result-object v1

    .line 895
    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->a(IJ)Landroidx/core/h/y;

    move-result-object v0

    goto :goto_1

    .line 902
    :cond_2
    if-eqz p1, :cond_3

    .line 903
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/x;->d(I)V

    .line 904
    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    .line 906
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0, v2}, Landroidx/appcompat/widget/x;->d(I)V

    .line 907
    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public k()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 723
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->m:Z

    if-nez v0, :cond_0

    .line 724
    iput-boolean v1, p0, Landroidx/appcompat/app/l;->m:Z

    .line 725
    invoke-direct {p0, v1}, Landroidx/appcompat/app/l;->l(Z)V

    .line 727
    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->c()V

    .line 965
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    .line 967
    :cond_0
    return-void
.end method

.method public m()V
    .locals 0

    .prologue
    .line 971
    return-void
.end method
