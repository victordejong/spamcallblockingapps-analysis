.class public Lcom/google/android/material/navigation/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/e$a;


# instance fields
.field public final synthetic a:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/a;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/material/navigation/a;->a:Lcom/google/android/material/navigation/NavigationView;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/navigation/NavigationView$a;

    if-eqz p1, :cond_a

    check-cast p1, Lcom/mglab/scm/MainActivity;

    .line 2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object v0

    const v1, 0x7f09017e

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->H(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const v1, 0x7f09025e

    if-ne p2, v1, :cond_0

    .line 4
    instance-of v1, v0, Lcom/mglab/scm/visual/FragmentStat;

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/mglab/scm/MainActivity;->u()V

    goto/16 :goto_1

    :cond_0
    const v1, 0x7f090259

    if-ne p2, v1, :cond_1

    .line 6
    instance-of v1, v0, Lcom/mglab/scm/visual/FragmentBlackList;

    if-nez v1, :cond_1

    .line 7
    new-instance p2, Lcom/mglab/scm/visual/FragmentBlackList;

    invoke-direct {p2}, Lcom/mglab/scm/visual/FragmentBlackList;-><init>()V

    invoke-virtual {p1, p2}, Lcom/mglab/scm/MainActivity;->x(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_1

    :cond_1
    const v1, 0x7f090261

    if-ne p2, v1, :cond_2

    .line 8
    instance-of v1, v0, Lcom/mglab/scm/visual/FragmentWhiteList;

    if-nez v1, :cond_2

    .line 9
    new-instance p2, Lcom/mglab/scm/visual/FragmentWhiteList;

    invoke-direct {p2}, Lcom/mglab/scm/visual/FragmentWhiteList;-><init>()V

    invoke-virtual {p1, p2}, Lcom/mglab/scm/MainActivity;->x(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_1

    :cond_2
    const v1, 0x7f090258

    if-ne p2, v1, :cond_3

    .line 10
    instance-of v1, v0, Lcom/mglab/scm/visual/FragmentAbout;

    if-nez v1, :cond_3

    .line 11
    new-instance p2, Lcom/mglab/scm/visual/FragmentAbout;

    invoke-direct {p2}, Lcom/mglab/scm/visual/FragmentAbout;-><init>()V

    invoke-virtual {p1, p2}, Lcom/mglab/scm/MainActivity;->x(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_1

    :cond_3
    const v1, 0x7f09025b

    if-ne p2, v1, :cond_4

    .line 12
    instance-of v1, v0, Lcom/mglab/scm/visual/FragmentDev;

    if-nez v1, :cond_4

    .line 13
    new-instance p2, Lcom/mglab/scm/visual/FragmentDev;

    invoke-direct {p2}, Lcom/mglab/scm/visual/FragmentDev;-><init>()V

    invoke-virtual {p1, p2}, Lcom/mglab/scm/MainActivity;->x(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_1

    :cond_4
    const v1, 0x7f09025d

    if-ne p2, v1, :cond_5

    .line 14
    invoke-static {p1}, Lcom/mglab/scm/visual/c;->p(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_5
    const v1, 0x7f09025a

    if-ne p2, v1, :cond_7

    .line 15
    new-instance p2, Landroidx/appcompat/app/b$a;

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f12012e

    goto :goto_0

    :cond_6
    const v0, 0x7f12000a

    .line 17
    :goto_0
    invoke-direct {p2, p1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f11001f

    .line 18
    iget-object v1, p2, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    const v0, 0x7f0c002c

    .line 19
    iget-object v1, p2, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iput v0, v1, Landroidx/appcompat/app/AlertController$b;->k:I

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800dc

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 22
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06005b

    invoke-static {v1, v2}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v1

    .line 24
    invoke-static {v0, v1}, Lf8/g;->H(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 25
    iget-object v1, p2, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->c:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f11018f

    .line 26
    sget-object v2, Lf8/k;->b:Lf8/k;

    .line 27
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 28
    iget-object v0, p2, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v2, v0, Landroidx/appcompat/app/AlertController$b;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 29
    invoke-virtual {p2}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_7
    const v1, 0x7f09025f

    if-ne p2, v1, :cond_8

    .line 30
    instance-of v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;

    if-nez v1, :cond_8

    .line 31
    new-instance p2, Lcom/mglab/scm/visual/FragmentPreferences;

    invoke-direct {p2}, Lcom/mglab/scm/visual/FragmentPreferences;-><init>()V

    invoke-virtual {p1, p2}, Lcom/mglab/scm/MainActivity;->x(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :cond_8
    const v1, 0x7f09025c

    if-ne p2, v1, :cond_9

    .line 32
    instance-of p2, v0, Lcom/mglab/scm/visual/FragmentDonate;

    if-nez p2, :cond_9

    .line 33
    new-instance p2, Lcom/mglab/scm/visual/FragmentDonate;

    invoke-direct {p2}, Lcom/mglab/scm/visual/FragmentDonate;-><init>()V

    invoke-virtual {p1, p2}, Lcom/mglab/scm/MainActivity;->x(Landroidx/fragment/app/Fragment;)V

    :cond_9
    :goto_1
    const p2, 0x7f09013b

    .line 34
    invoke-virtual {p1, p2}, Lf/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    const p2, 0x800003

    .line 35
    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)V

    const/4 p1, 0x1

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public b(Landroidx/appcompat/view/menu/e;)V
    .locals 0

    return-void
.end method
