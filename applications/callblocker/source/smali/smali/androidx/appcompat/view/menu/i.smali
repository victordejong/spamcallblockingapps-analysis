.class public final Landroidx/appcompat/view/menu/i;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroidx/core/b/a/b;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroidx/core/h/b;

.field private C:Landroid/view/MenuItem$OnActionExpandListener;

.field private D:Z

.field private E:Landroid/view/ContextMenu$ContextMenuInfo;

.field a:Landroidx/appcompat/view/menu/g;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/CharSequence;

.field private h:Landroid/content/Intent;

.field private i:C

.field private j:I

.field private k:C

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:Landroidx/appcompat/view/menu/r;

.field private p:Ljava/lang/Runnable;

.field private q:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private r:Ljava/lang/CharSequence;

.field private s:Ljava/lang/CharSequence;

.field private t:Landroid/content/res/ColorStateList;

.field private u:Landroid/graphics/PorterDuff$Mode;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/g;IIIILjava/lang/CharSequence;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x1000

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Landroidx/appcompat/view/menu/i;->j:I

    .line 70
    iput v0, p0, Landroidx/appcompat/view/menu/i;->l:I

    .line 80
    iput v1, p0, Landroidx/appcompat/view/menu/i;->n:I

    .line 93
    iput-object v2, p0, Landroidx/appcompat/view/menu/i;->t:Landroid/content/res/ColorStateList;

    .line 94
    iput-object v2, p0, Landroidx/appcompat/view/menu/i;->u:Landroid/graphics/PorterDuff$Mode;

    .line 95
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/i;->v:Z

    .line 96
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/i;->w:Z

    .line 97
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/i;->x:Z

    .line 99
    const/16 v0, 0x10

    iput v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    .line 107
    iput v1, p0, Landroidx/appcompat/view/menu/i;->z:I

    .line 112
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/i;->D:Z

    .line 139
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    .line 140
    iput p3, p0, Landroidx/appcompat/view/menu/i;->b:I

    .line 141
    iput p2, p0, Landroidx/appcompat/view/menu/i;->c:I

    .line 142
    iput p4, p0, Landroidx/appcompat/view/menu/i;->d:I

    .line 143
    iput p5, p0, Landroidx/appcompat/view/menu/i;->e:I

    .line 144
    iput-object p6, p0, Landroidx/appcompat/view/menu/i;->f:Ljava/lang/CharSequence;

    .line 145
    iput p7, p0, Landroidx/appcompat/view/menu/i;->z:I

    .line 146
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 570
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->x:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->w:Z

    if-eqz v0, :cond_3

    .line 571
    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 574
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->v:Z

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->t:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 578
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->w:Z

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->u:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 582
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->x:Z

    .line 585
    :cond_3
    return-object p1
.end method

.method private static a(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 402
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    .line 403
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Landroidx/core/b/a/b;
    .locals 3

    .prologue
    .line 762
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->f()Landroid/content/Context;

    move-result-object v0

    .line 763
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 764
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/i;->a(Landroid/view/View;)Landroidx/core/b/a/b;

    .line 765
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroidx/core/b/a/b;
    .locals 2

    .prologue
    .line 751
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    .line 753
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    if-lez v0, :cond_0

    .line 754
    iget v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 756
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/i;)V

    .line 757
    return-object p0
.end method

.method public a(Landroidx/core/h/b;)Landroidx/core/b/a/b;
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    invoke-virtual {v0}, Landroidx/core/h/b;->f()V

    .line 802
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;

    .line 803
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    .line 804
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 805
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    new-instance v1, Landroidx/appcompat/view/menu/i$1;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/i$1;-><init>(Landroidx/appcompat/view/menu/i;)V

    invoke-virtual {v0, v1}, Landroidx/core/h/b;->a(Landroidx/core/h/b$b;)V

    .line 813
    :cond_1
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/core/b/a/b;
    .locals 2

    .prologue
    .line 882
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->r:Ljava/lang/CharSequence;

    .line 884
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 886
    return-object p0
.end method

.method public a()Landroidx/core/h/b;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    return-object v0
.end method

.method a(Landroidx/appcompat/view/menu/n$a;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 446
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/appcompat/view/menu/n$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 446
    :goto_0
    return-object v0

    .line 448
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->E:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 683
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/r;)V
    .locals 1

    .prologue
    .line 428
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->o:Landroidx/appcompat/view/menu/r;

    .line 430
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/r;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 431
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 605
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    .line 606
    return-void

    .line 605
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Landroidx/core/b/a/b;
    .locals 0

    .prologue
    .line 818
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->setShowAsAction(I)V

    .line 819
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/b/a/b;
    .locals 2

    .prologue
    .line 896
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->s:Ljava/lang/CharSequence;

    .line 898
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 900
    return-object p0
.end method

.method b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 631
    iget v2, p0, Landroidx/appcompat/view/menu/i;->y:I

    .line 632
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    .line 633
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    if-eq v2, v0, :cond_0

    .line 634
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 636
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 632
    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 154
    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->q:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->q:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    iget-object v2, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1, v2, p0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->p:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->p:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->h:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 169
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/i;->h:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    const-string/jumbo v2, "MenuItemImpl"

    const-string/jumbo v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_3
    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    invoke-virtual {v1}, Landroidx/core/h/b;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Landroidx/appcompat/view/menu/i;->e:I

    return v0
.end method

.method c(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 655
    iget v2, p0, Landroidx/appcompat/view/menu/i;->y:I

    .line 656
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    .line 657
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 656
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 838
    iget v1, p0, Landroidx/appcompat/view/menu/i;->z:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 851
    :cond_0
    :goto_0
    return v0

    .line 841
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;

    if-nez v1, :cond_2

    .line 843
    const/4 v0, 0x1

    goto :goto_0

    .line 846
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/MenuItem$OnActionExpandListener;

    .line 847
    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 848
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/g;->d(Landroidx/appcompat/view/menu/i;)Z

    move-result v0

    goto :goto_0
.end method

.method d()C
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->k:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->i:C

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 720
    if-eqz p1, :cond_0

    .line 721
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    .line 725
    :goto_0
    return-void

    .line 723
    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    goto :goto_0
.end method

.method e()Ljava/lang/String;
    .locals 6

    .prologue
    .line 352
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->d()C

    move-result v1

    .line 353
    if-nez v1, :cond_0

    .line 354
    const-string/jumbo v0, ""

    .line 398
    :goto_0
    return-object v0

    .line 357
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    sget v0, Landroidx/appcompat/a$h;->abc_prepend_shortcut_label:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    .line 365
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/appcompat/view/menu/i;->l:I

    .line 366
    :goto_1
    const/high16 v4, 0x10000

    sget v5, Landroidx/appcompat/a$h;->abc_menu_meta_shortcut_label:I

    .line 367
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 366
    invoke-static {v3, v0, v4, v5}, Landroidx/appcompat/view/menu/i;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 368
    const/16 v4, 0x1000

    sget v5, Landroidx/appcompat/a$h;->abc_menu_ctrl_shortcut_label:I

    .line 369
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-static {v3, v0, v4, v5}, Landroidx/appcompat/view/menu/i;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 370
    const/4 v4, 0x2

    sget v5, Landroidx/appcompat/a$h;->abc_menu_alt_shortcut_label:I

    .line 371
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-static {v3, v0, v4, v5}, Landroidx/appcompat/view/menu/i;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 372
    const/4 v4, 0x1

    sget v5, Landroidx/appcompat/a$h;->abc_menu_shift_shortcut_label:I

    .line 373
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 372
    invoke-static {v3, v0, v4, v5}, Landroidx/appcompat/view/menu/i;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 374
    const/4 v4, 0x4

    sget v5, Landroidx/appcompat/a$h;->abc_menu_sym_shortcut_label:I

    .line 375
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 374
    invoke-static {v3, v0, v4, v5}, Landroidx/appcompat/view/menu/i;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 376
    const/16 v4, 0x8

    sget v5, Landroidx/appcompat/a$h;->abc_menu_function_shortcut_label:I

    .line 377
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 376
    invoke-static {v3, v0, v4, v5}, Landroidx/appcompat/view/menu/i;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 379
    sparse-switch v1, :sswitch_data_0

    .line 394
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_2
    iget v0, p0, Landroidx/appcompat/view/menu/i;->j:I

    goto :goto_1

    .line 382
    :sswitch_0
    sget v0, Landroidx/appcompat/a$h;->abc_menu_enter_shortcut_label:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 386
    :sswitch_1
    sget v0, Landroidx/appcompat/a$h;->abc_menu_delete_shortcut_label:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 390
    :sswitch_2
    sget v0, Landroidx/appcompat/a$h;->abc_menu_space_shortcut_label:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 865
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->D:Z

    .line 866
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 867
    return-void
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 824
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 833
    :cond_0
    :goto_0
    return v0

    .line 828
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/MenuItem$OnActionExpandListener;

    .line 829
    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/g;->c(Landroidx/appcompat/view/menu/i;)Z

    move-result v0

    goto :goto_0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->d()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 788
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;

    .line 776
    :goto_0
    return-object v0

    .line 772
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    invoke-virtual {v0, p0}, Landroidx/core/h/b;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;

    .line 774
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;

    goto :goto_0

    .line 776
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Landroidx/appcompat/view/menu/i;->l:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 243
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->k:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->r:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroidx/appcompat/view/menu/i;->c:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/i;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 511
    :goto_0
    return-object v0

    .line 504
    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/i;->n:I

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->f()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/i;->n:I

    invoke-static {v0, v1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 506
    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/view/menu/i;->n:I

    .line 507
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->m:Landroid/graphics/drawable/Drawable;

    .line 508
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/i;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 511
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->t:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->u:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->h:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 209
    iget v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->E:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Landroidx/appcompat/view/menu/i;->j:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 280
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->i:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Landroidx/appcompat/view/menu/i;->d:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->o:Landroidx/appcompat/view/menu/r;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->g:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->g:Ljava/lang/CharSequence;

    .line 473
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 477
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_0
    return-object v0

    .line 471
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->f:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->s:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/i;)V

    .line 692
    return-void
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->o:Landroidx/appcompat/view/menu/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->r()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 871
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->D:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 590
    iget v1, p0, Landroidx/appcompat/view/menu/i;->y:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 614
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 640
    iget-object v2, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    invoke-virtual {v2}, Landroidx/core/h/b;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 641
    iget v2, p0, Landroidx/appcompat/view/menu/i;->y:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    invoke-virtual {v2}, Landroidx/core/h/b;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 641
    goto :goto_0

    .line 643
    :cond_2
    iget v2, p0, Landroidx/appcompat/view/menu/i;->y:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 702
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 706
    iget v1, p0, Landroidx/appcompat/view/menu/i;->z:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 711
    iget v0, p0, Landroidx/appcompat/view/menu/i;->z:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 728
    iget v0, p0, Landroidx/appcompat/view/menu/i;->z:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 855
    iget v1, p0, Landroidx/appcompat/view/menu/i;->z:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 856
    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->B:Landroidx/core/h/b;

    invoke-virtual {v1, p0}, Landroidx/core/h/b;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;

    .line 859
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 861
    :cond_1
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 782
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->a(I)Landroidx/core/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->a(Landroid/view/View;)Landroidx/core/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 248
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->k:C

    if-ne v0, p1, :cond_0

    .line 256
    :goto_0
    return-object p0

    .line 252
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroidx/appcompat/view/menu/i;->k:C

    .line 254
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    goto :goto_0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 261
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->k:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/i;->l:I

    if-ne v0, p2, :cond_0

    .line 270
    :goto_0
    return-object p0

    .line 266
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroidx/appcompat/view/menu/i;->k:C

    .line 267
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/i;->l:I

    .line 269
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    goto :goto_0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 595
    iget v2, p0, Landroidx/appcompat/view/menu/i;->y:I

    .line 596
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    .line 597
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    if-eq v2, v0, :cond_0

    .line 598
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 601
    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    .line 596
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;)V

    .line 627
    :goto_0
    return-object p0

    .line 624
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->b(Z)V

    goto :goto_0
.end method

.method public synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->a(Ljava/lang/CharSequence;)Landroidx/core/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    .line 196
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 198
    return-object p0

    .line 193
    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroidx/appcompat/view/menu/i;->y:I

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->m:Landroid/graphics/drawable/Drawable;

    .line 527
    iput p1, p0, Landroidx/appcompat/view/menu/i;->n:I

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->x:Z

    .line 531
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 533
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 516
    iput v1, p0, Landroidx/appcompat/view/menu/i;->n:I

    .line 517
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->m:Landroid/graphics/drawable/Drawable;

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->x:Z

    .line 519
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 521
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 539
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->t:Landroid/content/res/ColorStateList;

    .line 540
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->v:Z

    .line 541
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->x:Z

    .line 543
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 545
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 555
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->u:Landroid/graphics/PorterDuff$Mode;

    .line 556
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->w:Z

    .line 557
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->x:Z

    .line 559
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 561
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->h:Landroid/content/Intent;

    .line 229
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 290
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->i:C

    if-ne v0, p1, :cond_0

    .line 298
    :goto_0
    return-object p0

    .line 294
    :cond_0
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->i:C

    .line 296
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    goto :goto_0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 303
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->i:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/i;->j:I

    if-ne v0, p2, :cond_0

    .line 312
    :goto_0
    return-object p0

    .line 307
    :cond_0
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->i:C

    .line 308
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/i;->j:I

    .line 310
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/MenuItem$OnActionExpandListener;

    .line 877
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->q:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 673
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 317
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->i:C

    .line 318
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroidx/appcompat/view/menu/i;->k:C

    .line 320
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 322
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 328
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->i:C

    .line 329
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/i;->j:I

    .line 330
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroidx/appcompat/view/menu/i;->k:C

    .line 331
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/i;->l:I

    .line 333
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 335
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2

    .prologue
    .line 733
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 742
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :pswitch_0
    iput p1, p0, Landroidx/appcompat/view/menu/i;->z:I

    .line 746
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/i;)V

    .line 747
    return-void

    .line 733
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->b(I)Landroidx/core/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/i;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 453
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->f:Ljava/lang/CharSequence;

    .line 455
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 457
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->o:Landroidx/appcompat/view/menu/r;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->o:Landroidx/appcompat/view/menu/r;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/r;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 461
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 486
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->g:Ljava/lang/CharSequence;

    .line 489
    if-nez p1, :cond_0

    .line 490
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->f:Ljava/lang/CharSequence;

    .line 493
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 495
    return-object p0
.end method

.method public synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->b(Ljava/lang/CharSequence;)Landroidx/core/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/i;)V

    .line 667
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->f:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
