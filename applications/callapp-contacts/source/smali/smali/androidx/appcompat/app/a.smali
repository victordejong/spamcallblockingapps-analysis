.class public final Landroidx/appcompat/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/a$d;,
        Landroidx/appcompat/app/a$c;,
        Landroidx/appcompat/app/a$a;,
        Landroidx/appcompat/app/a$b;
    }
.end annotation


# instance fields
.field final a:Landroidx/drawerlayout/widget/DrawerLayout;

.field b:Z

.field c:Landroid/view/View$OnClickListener;

.field private final d:Landroidx/appcompat/app/a$a;

.field private e:Landroidx/appcompat/b/a/d;

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private final h:I

.field private final i:I

.field private j:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/b/a/d;II)V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Landroidx/appcompat/app/a;->f:Z

    .line 122
    iput-boolean v0, p0, Landroidx/appcompat/app/a;->b:Z

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Landroidx/appcompat/app/a;->j:Z

    if-eqz p2, :cond_0

    .line 197
    new-instance p1, Landroidx/appcompat/app/a$d;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/a$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object p1, p0, Landroidx/appcompat/app/a;->d:Landroidx/appcompat/app/a$a;

    .line 198
    new-instance p1, Landroidx/appcompat/app/a$1;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/a$1;-><init>(Landroidx/appcompat/app/a;)V

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 208
    :cond_0
    instance-of p2, p1, Landroidx/appcompat/app/a$b;

    if-eqz p2, :cond_1

    .line 209
    check-cast p1, Landroidx/appcompat/app/a$b;

    invoke-interface {p1}, Landroidx/appcompat/app/a$b;->getDrawerToggleDelegate()Landroidx/appcompat/app/a$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/a;->d:Landroidx/appcompat/app/a$a;

    goto :goto_0

    .line 211
    :cond_1
    new-instance p2, Landroidx/appcompat/app/a$c;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/a$c;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Landroidx/appcompat/app/a;->d:Landroidx/appcompat/app/a$a;

    .line 214
    :goto_0
    iput-object p3, p0, Landroidx/appcompat/app/a;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 215
    iput p5, p0, Landroidx/appcompat/app/a;->h:I

    .line 216
    iput p6, p0, Landroidx/appcompat/app/a;->i:I

    if-nez p4, :cond_2

    .line 218
    new-instance p1, Landroidx/appcompat/b/a/d;

    iget-object p2, p0, Landroidx/appcompat/app/a;->d:Landroidx/appcompat/app/a$a;

    invoke-interface {p2}, Landroidx/appcompat/app/a$a;->b()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/b/a/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/app/a;->e:Landroidx/appcompat/b/a/d;

    goto :goto_1

    .line 220
    :cond_2
    iput-object p4, p0, Landroidx/appcompat/app/a;->e:Landroidx/appcompat/b/a/d;

    .line 1503
    :goto_1
    iget-object p1, p0, Landroidx/appcompat/app/a;->d:Landroidx/appcompat/app/a$a;

    invoke-interface {p1}, Landroidx/appcompat/app/a$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 223
    iput-object p1, p0, Landroidx/appcompat/app/a;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    .line 153
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/app/a;-><init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/b/a/d;II)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    .line 184
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/app/a;-><init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/b/a/d;II)V

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 499
    iget-object v0, p0, Landroidx/appcompat/app/a;->d:Landroidx/appcompat/app/a$a;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/a$a;->a(I)V

    return-void
.end method

.method private b(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Landroidx/appcompat/app/a;->e:Landroidx/appcompat/b/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/b/a/d;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Landroidx/appcompat/app/a;->e:Landroidx/appcompat/b/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/b/a/d;->a(Z)V

    .line 512
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/a;->e:Landroidx/appcompat/b/a/d;

    invoke-virtual {v0, p1}, Landroidx/appcompat/b/a/d;->a(F)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 429
    invoke-direct {p0, v0}, Landroidx/appcompat/app/a;->b(F)V

    .line 430
    iget-boolean v0, p0, Landroidx/appcompat/app/a;->b:Z

    if-eqz v0, :cond_0

    .line 431
    iget v0, p0, Landroidx/appcompat/app/a;->i:I

    invoke-direct {p0, v0}, Landroidx/appcompat/app/a;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 2

    .line 413
    iget-boolean v0, p0, Landroidx/appcompat/app/a;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 414
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/a;->b(F)V

    return-void

    .line 416
    :cond_0
    invoke-direct {p0, v1}, Landroidx/appcompat/app/a;->b(F)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 444
    invoke-direct {p0, v0}, Landroidx/appcompat/app/a;->b(F)V

    .line 445
    iget-boolean v0, p0, Landroidx/appcompat/app/a;->b:Z

    if-eqz v0, :cond_0

    .line 446
    iget v0, p0, Landroidx/appcompat/app/a;->h:I

    invoke-direct {p0, v0}, Landroidx/appcompat/app/a;->a(I)V

    :cond_0
    return-void
.end method
