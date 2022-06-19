.class public Lcom/mglab/scm/MainActivity;
.super Lf/j;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$a;
.implements Lf2/b$h;


# static fields
.field public static final synthetic v:I


# instance fields
.field public n:I

.field public o:Landroid/widget/FrameLayout;

.field public p:Lcom/google/android/gms/ads/AdView;

.field public q:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field public r:Ls4/c;

.field public final s:Lea/b;

.field public final t:Lea/b;

.field public final u:Lea/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/j;-><init>()V

    .line 2
    new-instance v0, Lcom/mglab/scm/MainActivity$b;

    invoke-direct {v0, p0}, Lcom/mglab/scm/MainActivity$b;-><init>(Lcom/mglab/scm/MainActivity;)V

    iput-object v0, p0, Lcom/mglab/scm/MainActivity;->s:Lea/b;

    .line 3
    new-instance v0, Lcom/mglab/scm/MainActivity$c;

    invoke-direct {v0, p0}, Lcom/mglab/scm/MainActivity$c;-><init>(Lcom/mglab/scm/MainActivity;)V

    iput-object v0, p0, Lcom/mglab/scm/MainActivity;->t:Lea/b;

    .line 4
    new-instance v0, Lcom/mglab/scm/MainActivity$e;

    invoke-direct {v0, p0}, Lcom/mglab/scm/MainActivity$e;-><init>(Lcom/mglab/scm/MainActivity;)V

    iput-object v0, p0, Lcom/mglab/scm/MainActivity;->u:Lea/b;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 9

    const v0, 0x7f090260

    .line 1
    invoke-virtual {p0, v0}, Lf/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [[I

    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, 0x10100a0

    const/4 v7, 0x0

    aput v6, v5, v7

    aput-object v5, v3, v7

    new-array v5, v4, [I

    const v6, 0x101009e

    aput v6, v5, v7

    aput-object v5, v3, v4

    .line 3
    invoke-static {v1}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v5

    new-array v2, v2, [I

    const v6, 0x7f06005b

    if-eqz v5, :cond_0

    const v8, 0x7f06005e

    .line 4
    invoke-static {v1, v8}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v8

    goto :goto_0

    :cond_0
    invoke-static {v1, v6}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v8

    :goto_0
    aput v8, v2, v7

    if-eqz v5, :cond_1

    .line 5
    invoke-static {v1, v6}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v1

    goto :goto_1

    :cond_1
    const v5, 0x7f060057

    invoke-static {v1, v5}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v1

    :goto_1
    aput v1, v2, v4

    .line 6
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f09025b

    .line 9
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/h;->J(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f09025a

    .line 10
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/h;->J(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 11
    invoke-static {}, Lh8/q;->x()I

    move-result v1

    const v2, 0x7f090261

    .line 12
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f110027

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    const-string v5, " ["

    const-string v6, ""

    if-eqz v1, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v6

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 13
    invoke-static {}, Lh8/q;->n()I

    move-result v1

    const v2, 0x7f090259

    .line 14
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f11001e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3
    iput v0, p1, Landroid/content/res/Configuration;->uiMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lf8/h;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    goto :goto_0

    .line 5
    :cond_0
    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    const-string v5, ""

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v4}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    if-lt v2, v3, :cond_1

    .line 9
    invoke-virtual {v1, v4}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_1

    .line 10
    :cond_1
    iput-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    .line 12
    new-instance v0, Lf8/n;

    invoke-direct {v0, p1}, Lf8/n;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-super {p0, v0}, Lf/j;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public f(Lf2/b;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/mglab/scm/MainActivity;->n:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "psetnotifusecustomtextcolor"

    .line 3
    invoke-static {p1, v1, v0}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance v1, Lk8/h;

    invoke-direct {v1, v0}, Lk8/h;-><init>(I)V

    invoke-virtual {p1, v1}, Lba/b;->g(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public g(Lf2/b;I)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/mglab/scm/MainActivity;->n:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_1

    const/16 p1, 0x3e7

    .line 2
    iput p1, p0, Lcom/mglab/scm/MainActivity;->n:I

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "psetnotifusecustomtextcolor"

    .line 4
    invoke-static {p1, v1, v0}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "psetnotifcustomtextcolor"

    invoke-static {p1, v0, p2}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/h;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lk8/h;-><init>(I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/g;->N(Landroid/content/Context;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/mglab/scm/MainActivity;->n:I

    if-ne v1, v0, :cond_2

    const-string v0, "setsimcolor1"

    goto :goto_0

    :cond_2
    const-string v0, "setsimcolor2"

    .line 10
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lf/j;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1, p2}, Lf8/g;->G(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 12
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/u;

    const-string v0, "true"

    invoke-direct {p2, v0}, Lk8/u;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/o;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x212

    if-eq p1, p3, :cond_1

    const/16 p3, 0x1b5f

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/r;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Lk8/r;-><init>(I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    const/16 p2, 0x4d

    invoke-static {p2, p1}, La6/d;->f(ILba/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    const v0, 0x7f09013b

    .line 1
    invoke-virtual {p0, v0}, Lf/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    .line 2
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->n(I)Z

    .line 3
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->n(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object v0

    const v1, 0x7f09017e

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->H(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 7
    instance-of v2, v1, Lcom/mglab/scm/visual/FragmentPin;

    if-nez v2, :cond_6

    instance-of v2, v1, Lcom/mglab/scm/visual/FragmentStat;

    if-eqz v2, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    instance-of v2, v1, Lo8/q;

    if-eqz v2, :cond_2

    .line 9
    sget-object v3, Lo8/q;->b:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    sget-object v0, Lo8/q;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 11
    :cond_2
    iget-object v3, v0, Landroidx/fragment/app/a0;->d:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-lez v3, :cond_5

    .line 12
    instance-of v3, v1, Lo8/r;

    if-nez v3, :cond_4

    instance-of v3, v1, Lcom/mglab/scm/visual/FragmentSocial;

    if-nez v3, :cond_4

    if-nez v2, :cond_4

    instance-of v2, v1, Lcom/mglab/scm/visual/FragmentBuyPro;

    if-nez v2, :cond_4

    instance-of v1, v1, Lcom/mglab/scm/visual/FragmentLanguage;

    if-nez v1, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/mglab/scm/MainActivity;->u()V

    const v0, 0x7f090260

    .line 14
    invoke-virtual {p0, v0}, Lf/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 16
    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 17
    :cond_4
    new-instance v1, Landroidx/fragment/app/a0$m;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/fragment/app/a0$m;-><init>(Landroidx/fragment/app/a0;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/a0;->A(Landroidx/fragment/app/a0$l;Z)V

    goto :goto_1

    .line 18
    :cond_5
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    :goto_1
    return-void

    .line 19
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/mglab/scm/MainActivity;->u()V

    .line 20
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "appinsd"

    .line 3
    invoke-static {p1, v0}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    const-string v0, "needinitnotificationchannels"

    const/4 v1, 0x1

    .line 5
    invoke-static {p1, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    invoke-static {p1, v0, v3}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    if-eqz v2, :cond_3

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "notification"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 9
    new-instance v2, Landroid/app/NotificationChannel;

    const v4, 0x7f110182

    .line 10
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const-string v6, "SCM_SERVICE"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v4, 0x7f110183

    .line 11
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v2, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v6, -0x1

    .line 14
    invoke-virtual {v2, v6}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 15
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 16
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 17
    new-instance v2, Landroid/app/NotificationChannel;

    const v6, 0x7f11017e

    .line 18
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SCM_BLOCKED"

    invoke-direct {v2, v7, v6, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v6, 0x7f11017f

    .line 19
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 21
    invoke-virtual {v2, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 22
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 23
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 24
    new-instance v2, Landroid/app/NotificationChannel;

    const v4, 0x7f110180

    .line 25
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SCM_DEFAULT"

    invoke-direct {v2, v7, v6, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 26
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 28
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 29
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 30
    :cond_3
    :goto_0
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 31
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->k(Ljava/lang/Object;)V

    .line 32
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "show_filter"

    invoke-static {p1, v2, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    invoke-static {}, Lf8/g;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "bvc"

    invoke-static {p1, v4, v2}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v0, v2, :cond_5

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pcode"

    invoke-static {p1, v3, v2}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    new-instance v0, Lf8/b;

    invoke-direct {v0}, Lf8/b;-><init>()V

    invoke-virtual {v0}, Lf8/b;->a()Lf8/b;

    .line 39
    :cond_5
    invoke-static {p1}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f12012d

    .line 40
    invoke-virtual {p0, v0}, Lf/j;->setTheme(I)V

    :cond_6
    const v0, 0x7f0c001d

    .line 41
    invoke-virtual {p0, v0}, Lf/j;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    sput-object v0, Lf8/a;->a:Landroid/content/Context;

    .line 44
    invoke-static {}, Lf8/a;->g()V

    const-string v0, "fstart"

    .line 45
    invoke-static {p1, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 46
    invoke-static {p1, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "phone"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 48
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 51
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_8

    const-string v0, ""

    goto :goto_1

    .line 52
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "CC"

    .line 53
    invoke-static {p1, v1, v0}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lf8/b;

    invoke-direct {v0}, Lf8/b;-><init>()V

    invoke-virtual {v0}, Lf8/b;->a()Lf8/b;

    .line 55
    sget-object v0, Lg8/d;->a:[Ljava/lang/String;

    invoke-static {p1, v0}, Lf8/h;->n0(Landroid/content/Context;[Ljava/lang/String;)V

    .line 56
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mglab/scm/intro/IntroActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 60
    :cond_9
    invoke-static {p1}, Lf8/g;->v(Landroid/content/Context;)V

    .line 61
    invoke-static {p1}, Lf8/g;->N(Landroid/content/Context;)V

    const v0, 0x7f090387

    .line 62
    invoke-virtual {p0, v0}, Lf/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 63
    invoke-virtual {p0}, Lf/j;->r()Lf/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf/l;->y(Landroidx/appcompat/widget/Toolbar;)V

    .line 64
    invoke-static {p1}, Lf8/h;->R(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 65
    new-instance p1, Lcom/mglab/scm/visual/FragmentPin;

    invoke-direct {p1}, Lcom/mglab/scm/visual/FragmentPin;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/mglab/scm/MainActivity;->x(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 67
    :cond_a
    invoke-virtual {p0}, Lcom/mglab/scm/MainActivity;->y()V

    :goto_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/j;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/MainActivity;->p:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->destroy()V

    .line 3
    :cond_0
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->m(Ljava/lang/Object;)V

    .line 5
    :cond_1
    sget-object v0, Lf8/a;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lf8/a;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->b()V

    .line 7
    :cond_2
    invoke-super {p0}, Lf/j;->onDestroy()V

    return-void
.end method

.method public onMessageEventBackStack(Lk8/b;)V
    .locals 1
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const p1, 0x7f090260

    .line 1
    invoke-virtual {p0, p1}, Lf/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/navigation/NavigationView;

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$a;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 5
    invoke-virtual {p0}, Lcom/mglab/scm/MainActivity;->A()V

    .line 6
    invoke-virtual {p0}, Lcom/mglab/scm/MainActivity;->u()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public onMessageEventColorDialog(Lk8/d;)V
    .locals 4
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget p1, p1, Lk8/d;->a:I

    iput p1, p0, Lcom/mglab/scm/MainActivity;->n:I

    .line 2
    new-instance p1, Lf2/b$g;

    const v0, 0x7f1100a5

    invoke-direct {p1, p0, v0}, Lf2/b$g;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lf2/b$g;->g:Z

    const v1, 0x7f11018f

    .line 4
    iput v1, p1, Lf2/b$g;->b:I

    const v1, 0x7f11006e

    .line 5
    iput v1, p1, Lf2/b$g;->d:I

    const v1, 0x7f1100fb

    .line 6
    iput v1, p1, Lf2/b$g;->c:I

    const v1, 0x7f1100a3

    .line 7
    iput v1, p1, Lf2/b$g;->e:I

    const v1, 0x7f1100a4

    .line 8
    iput v1, p1, Lf2/b$g;->f:I

    .line 9
    iput-boolean v0, p1, Lf2/b$g;->h:Z

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object v0

    .line 11
    new-instance v1, Lf2/b;

    invoke-direct {v1}, Lf2/b;-><init>()V

    .line 12
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "builder"

    .line 13
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 14
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {v1}, Lf2/b;->c()Lf2/b$g;

    move-result-object p1

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "[MD_COLOR_CHOOSER]"

    .line 17
    invoke-virtual {v0, p1}, Landroidx/fragment/app/a0;->I(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 18
    move-object v3, v2

    check-cast v3, Landroidx/fragment/app/l;

    invoke-virtual {v3}, Landroidx/fragment/app/l;->dismiss()V

    .line 19
    new-instance v3, Landroidx/fragment/app/a;

    invoke-direct {v3, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/a0;)V

    .line 20
    invoke-virtual {v3, v2}, Landroidx/fragment/app/a;->o(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/i0;

    invoke-virtual {v3}, Landroidx/fragment/app/a;->c()I

    .line 21
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/l;->show(Landroidx/fragment/app/a0;Ljava/lang/String;)V

    return-void
.end method

.method public onMessageEventGetPermission(Lk8/o;)V
    .locals 1
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget p1, p1, Lk8/o;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "android.permission.WRITE_CALL_LOG"

    .line 2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lea/a;->b(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/mglab/scm/MainActivity;->t:Lea/b;

    invoke-static {p0, p1, v0}, Lea/a;->a(Landroid/app/Activity;[Ljava/lang/String;Lea/b;)V

    goto :goto_0

    :cond_1
    const-string p1, "android.permission.READ_CONTACTS"

    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lea/a;->b(Landroid/content/Context;)V

    .line 7
    iget-object v0, p0, Lcom/mglab/scm/MainActivity;->s:Lea/b;

    invoke-static {p0, p1, v0}, Lea/a;->a(Landroid/app/Activity;[Ljava/lang/String;Lea/b;)V

    :goto_0
    return-void
.end method

.method public onMessageEventProStatusChanged(Lk8/s;)V
    .locals 1
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/mglab/scm/MainActivity;->o:Landroid/widget/FrameLayout;

    invoke-static {}, Lf8/g;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :goto_1
    invoke-static {}, Lf8/g;->y()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/mglab/scm/MainActivity;->v()V

    :cond_1
    return-void
.end method

.method public onMessageEventShowInterstitialAd(Lk8/t;)V
    .locals 4
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {}, Lf8/g;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lf8/b;

    invoke-direct {p1}, Lf8/b;-><init>()V

    const-string v0, "video_ads_repeat_interval_min"

    invoke-virtual {p1, v0}, Lf8/b;->b(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    const-string v1, "VIDEO_ADS_REPEAT_INTERVAL_MIN"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VIDEO_ADS"

    invoke-static {v0, v1, p1}, Lf8/g;->z(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0xb4

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "valshown"

    .line 7
    invoke-static {v0, v1}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const v2, 0xea60

    mul-int p1, p1, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/mglab/scm/MainActivity;->q:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/mglab/scm/MainActivity;->w()V

    :goto_0
    return-void
.end method

.method public onMessageEventStartBuyPro(Lk8/v;)V
    .locals 1
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {}, Lf8/a;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lf8/a;->c:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/mglab/scm/visual/FragmentBuyPro;

    invoke-direct {p1}, Lcom/mglab/scm/visual/FragmentBuyPro;-><init>()V

    invoke-virtual {p0, p1}, Lcom/mglab/scm/MainActivity;->x(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string v0, "ERROR: Google Play billing N/A"

    .line 3
    invoke-static {p0, p1, v0}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onMessageEventStartHelp(Lk8/w;)V
    .locals 0
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lk8/w;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mglab/scm/MainActivity;->z(Ljava/lang/String;)V

    return-void
.end method

.method public onMessageEventStartLanguage(Lk8/x;)V
    .locals 0
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    new-instance p1, Lcom/mglab/scm/visual/FragmentLanguage;

    invoke-direct {p1}, Lcom/mglab/scm/visual/FragmentLanguage;-><init>()V

    invoke-virtual {p0, p1}, Lcom/mglab/scm/MainActivity;->x(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onMessageEventStartMain(Lk8/y;)V
    .locals 0
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mglab/scm/MainActivity;->u()V

    .line 2
    invoke-virtual {p0}, Lcom/mglab/scm/MainActivity;->y()V

    return-void
.end method

.method public onMessageEventStartPreset(Lk8/z;)V
    .locals 2
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget p1, p1, Lk8/z;->a:I

    const-string v1, "no"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    new-instance p1, Lo8/r;

    invoke-direct {p1}, Lo8/r;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/mglab/scm/MainActivity;->x(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onMessageEventStartPurchaseFlow(Lk8/a0;)V
    .locals 5
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p1, Lk8/a0;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Lf8/a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object p1, p1, Lk8/a0;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v2, Lf8/a;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "subs"

    const-string v4, "inapp"

    if-eqz v2, :cond_0

    move-object p1, v3

    goto :goto_0

    .line 7
    :cond_0
    sget-object v2, Lf8/a;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, v4

    goto :goto_0

    :cond_1
    const-string p1, "null"

    .line 8
    :goto_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    goto :goto_1

    .line 10
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    :goto_1
    sget-object v1, Lf8/a;->b:Lcom/android/billingclient/api/a;

    .line 12
    new-instance v2, Li2/h;

    invoke-direct {v2}, Li2/h;-><init>()V

    .line 13
    iput-object v3, v2, Li2/h;->a:Ljava/lang/String;

    .line 14
    iput-object p1, v2, Li2/h;->b:Ljava/util/List;

    .line 15
    new-instance p1, Lz2/n;

    const/4 v3, 0x3

    invoke-direct {p1, p0, v0, v3}, Lz2/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2, p1}, Lcom/android/billingclient/api/a;->e(Li2/h;Li2/i;)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    const-string v0, "Google Play billing client not ready"

    .line 16
    invoke-static {p0, p1, v0}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onMessageEventStartSocial(Lk8/b0;)V
    .locals 3
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p1, Lk8/b0;->b:Ljava/lang/String;

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean p1, p1, Lk8/b0;->a:Z

    const-string v1, "openFeedback"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    new-instance p1, Lcom/mglab/scm/visual/FragmentSocial;

    invoke-direct {p1}, Lcom/mglab/scm/visual/FragmentSocial;-><init>()V

    .line 5
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/mglab/scm/MainActivity;->x(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidx.core.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.support.v4.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x80000

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v2, p0

    .line 7
    :goto_0
    instance-of v3, v2, Landroid/content/ContextWrapper;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 8
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 9
    check-cast v2, Landroid/app/Activity;

    goto :goto_1

    .line 10
    :cond_0
    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const-string v3, "androidx.core.app.EXTRA_CALLING_ACTIVITY"

    .line 12
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "android.support.v4.app.EXTRA_CALLING_ACTIVITY"

    .line 13
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 14
    :cond_2
    invoke-virtual {p0}, Lf/j;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    .line 15
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v2, "text/plain"

    .line 16
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0}, Lf/j;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 24
    :sswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object p1

    const v0, 0x7f09017e

    invoke-virtual {p1, v0}, Landroidx/fragment/app/a0;->H(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 25
    instance-of v0, p1, Lo8/q;

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    return p1

    .line 26
    :cond_3
    instance-of v0, p1, Lcom/mglab/scm/visual/FragmentStat;

    if-eqz v0, :cond_4

    const-string p1, "main"

    goto :goto_2

    .line 27
    :cond_4
    instance-of v0, p1, Lcom/mglab/scm/visual/FragmentBlackList;

    if-eqz v0, :cond_5

    const-string p1, "blacklist"

    goto :goto_2

    .line 28
    :cond_5
    instance-of v0, p1, Lcom/mglab/scm/visual/FragmentWhiteList;

    if-eqz v0, :cond_6

    const-string p1, "whitelist"

    goto :goto_2

    .line 29
    :cond_6
    instance-of v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;

    if-eqz v0, :cond_7

    const-string p1, "settings"

    goto :goto_2

    .line 30
    :cond_7
    instance-of v0, p1, Lcom/mglab/scm/visual/FragmentSocial;

    if-eqz v0, :cond_8

    const-string p1, "feedbacks"

    goto :goto_2

    .line 31
    :cond_8
    instance-of v0, p1, Lo8/r;

    if-eqz v0, :cond_9

    const-string p1, "presets"

    goto :goto_2

    .line 32
    :cond_9
    instance-of p1, p1, Lcom/mglab/scm/visual/FragmentPin;

    if-eqz p1, :cond_a

    const-string p1, "pin"

    goto :goto_2

    :cond_a
    const-string p1, ""

    .line 33
    :goto_2
    invoke-virtual {p0, p1}, Lcom/mglab/scm/MainActivity;->z(Ljava/lang/String;)V

    return v1

    :sswitch_2
    const-string p1, "faq"

    .line 34
    invoke-virtual {p0, p1}, Lcom/mglab/scm/MainActivity;->z(Ljava/lang/String;)V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f09003e -> :sswitch_2
        0x7f09003f -> :sswitch_1
        0x7f090046 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/MainActivity;->p:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->pause()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/o;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/o;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {p1, p3}, Lea/a;->c(I[I)V

    return-void
.end method

.method public onRestart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lea/a;->b(Landroid/content/Context;)V

    const-string v1, "android.permission.READ_CALL_LOG"

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android.permission.CALL_PHONE"

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_0

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 3
    filled-new-array {v0, v3, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/mglab/scm/MainActivity;->u:Lea/b;

    invoke-static {p0, v0, v1}, Lea/a;->a(Landroid/app/Activity;[Ljava/lang/String;Lea/b;)V

    goto :goto_0

    .line 5
    :cond_0
    filled-new-array {v3, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/mglab/scm/MainActivity;->u:Lea/b;

    invoke-static {p0, v0, v1}, Lea/a;->a(Landroid/app/Activity;[Ljava/lang/String;Lea/b;)V

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/o;->onResume()V

    .line 8
    invoke-static {}, Lf8/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lf8/a;->i()V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/mglab/scm/MainActivity;->p:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->resume()V

    :cond_3
    const-string v0, "pmessagelsid"

    const-string v1, ""

    const-string v2, "pmessage"

    .line 12
    invoke-static {p0, v2, v1}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_3

    .line 14
    :cond_4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "id"

    .line 15
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "type"

    .line 16
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "expire"

    .line 17
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyy-MM-dd"

    .line 18
    invoke-static {v4, v5}, Lf8/g;->P(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    const/4 v6, -0x1

    .line 19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v0, v6}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v2, v6, :cond_c

    if-eqz v5, :cond_5

    .line 20
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_3

    .line 21
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const v0, 0x7f0800ee

    const v2, 0x7f060091

    const v6, 0x7f060033

    const v7, 0x7f06005b

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const v11, 0x7f06005e

    if-eq v3, v9, :cond_9

    if-eq v3, v8, :cond_6

    goto/16 :goto_3

    :cond_6
    const-string v3, "content"

    .line 22
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    .line 23
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v4, Le2/g$a;

    invoke-direct {v4, p0}, Le2/g$a;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v1, v4, Le2/g$a;->b:Ljava/lang/CharSequence;

    .line 26
    invoke-virtual {v4, v7}, Le2/g$a;->l(I)Le2/g$a;

    .line 27
    invoke-static {p0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v6, 0x7f06005e

    :cond_7
    invoke-virtual {v4, v6}, Le2/g$a;->c(I)Le2/g$a;

    .line 28
    invoke-static {p0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    const v2, 0x7f06005e

    :goto_1
    invoke-virtual {v4, v2}, Le2/g$a;->a(I)Le2/g$a;

    .line 29
    invoke-virtual {v4, v0}, Le2/g$a;->e(I)Le2/g$a;

    .line 30
    invoke-virtual {v4, v3}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    .line 31
    iput-boolean v10, v4, Le2/g$a;->y:Z

    .line 32
    iput-boolean v10, v4, Le2/g$a;->z:Z

    const v0, 0x7f11018f

    .line 33
    invoke-virtual {v4, v0}, Le2/g$a;->i(I)Le2/g$a;

    .line 34
    invoke-virtual {v4}, Le2/g$a;->j()Le2/g;

    goto/16 :goto_3

    :cond_9
    const-string v3, "percent"

    .line 35
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v12, "dispercent"

    invoke-static {p0, v12, v3}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "disexpdate"

    .line 38
    invoke-static {p0, v3, v4}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lf8/g;->x()Z

    move-result v3

    if-nez v3, :cond_c

    .line 40
    new-instance v3, Le2/g$a;

    invoke-direct {v3, p0}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1100ca

    .line 41
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 42
    iput-object v4, v3, Le2/g$a;->b:Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {v3, v7}, Le2/g$a;->l(I)Le2/g$a;

    .line 44
    invoke-static {p0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    const v6, 0x7f06005e

    :cond_a
    invoke-virtual {v3, v6}, Le2/g$a;->c(I)Le2/g$a;

    .line 45
    invoke-static {p0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_2

    :cond_b
    const v2, 0x7f06005e

    :goto_2
    invoke-virtual {v3, v2}, Le2/g$a;->a(I)Le2/g$a;

    .line 46
    invoke-virtual {v3, v0}, Le2/g$a;->e(I)Le2/g$a;

    const v0, 0x7f1100c9

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v10

    .line 47
    invoke-static {p0, v5}, Lf8/g;->s(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v9

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Le2/g$a;->b(Ljava/lang/CharSequence;)Le2/g$a;

    .line 48
    iput-boolean v10, v3, Le2/g$a;->y:Z

    .line 49
    iput-boolean v10, v3, Le2/g$a;->z:Z

    const v0, 0x7f110063

    .line 50
    invoke-virtual {v3, v0}, Le2/g$a;->i(I)Le2/g$a;

    const v0, 0x7f11006e

    .line 51
    invoke-virtual {v3, v0}, Le2/g$a;->g(I)Le2/g$a;

    move-result-object v0

    sget-object v1, Lz2/l;->g:Lz2/l;

    .line 52
    iput-object v1, v0, Le2/g$a;->u:Le2/g$c;

    .line 53
    invoke-virtual {v0}, Le2/g$a;->j()Le2/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_3
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lf/j;->onStart()V

    .line 2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->k(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lf/j;->onStop()V

    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/a0;->X(Ljava/lang/String;II)Z

    return-void
.end method

.method public final v()V
    .locals 4

    .line 1
    invoke-static {}, Lf8/g;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mglab/scm/MainActivity;->p:Lcom/google/android/gms/ads/AdView;

    const v1, 0x7f110028

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/mglab/scm/MainActivity;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 5
    iget-object v0, p0, Lcom/mglab/scm/MainActivity;->o:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mglab/scm/MainActivity;->p:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 9
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 10
    iget-object v2, p0, Lcom/mglab/scm/MainActivity;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    .line 11
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v1

    :cond_1
    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 12
    invoke-static {p0, v0}, Lcom/google/android/gms/ads/AdSize;->getPortraitAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/mglab/scm/MainActivity;->p:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 14
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/mglab/scm/MainActivity;->p:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 16
    invoke-virtual {p0}, Lcom/mglab/scm/MainActivity;->w()V

    return-void
.end method

.method public final w()V
    .locals 3

    .line 1
    invoke-static {}, Lf8/g;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lf8/b;

    invoke-direct {v0}, Lf8/b;-><init>()V

    const-string v1, "video_ads_show_after_block_calls"

    invoke-virtual {v0, v1}, Lf8/b;->b(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v1, v0

    if-nez v1, :cond_1

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "VIDEO_ADS_SHOW_AFTER_BLOCK_CALLS"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "VIDEO_ADS"

    invoke-static {v1, v2, v0}, Lf8/g;->z(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v1, 0x1e

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->a(Landroid/content/Context;)I

    move-result v0

    if-ge v0, v1, :cond_2

    return-void

    .line 7
    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    const v1, 0x7f1100fa

    .line 8
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mglab/scm/MainActivity$d;

    invoke-direct {v2, p0}, Lcom/mglab/scm/MainActivity$d;-><init>(Lcom/mglab/scm/MainActivity;)V

    invoke-static {p0, v1, v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void
.end method

.method public final x(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/a0;->X(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a0;->I(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/a0;)V

    const v1, 0x7f09017e

    .line 6
    invoke-virtual {v2, v1, p1, v0}, Landroidx/fragment/app/i0;->e(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/i0;

    .line 7
    iput v3, v2, Landroidx/fragment/app/i0;->f:I

    .line 8
    iget-boolean p1, v2, Landroidx/fragment/app/i0;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, v2, Landroidx/fragment/app/i0;->g:Z

    .line 10
    iput-object v0, v2, Landroidx/fragment/app/i0;->i:Ljava/lang/String;

    .line 11
    invoke-virtual {v2}, Landroidx/fragment/app/a;->c()I

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final y()V
    .locals 10

    .line 1
    invoke-static {}, Lf8/g;->y()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->getAppOptions()Ld2/l;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "GDPR"

    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_required"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v5, v0, Ld2/l;->d:Ld2/f4;

    invoke-static {v5, v2, v1}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 6
    iget-object v0, v0, Ld2/l;->d:Ld2/f4;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_consent_string"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v0, v2, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    .line 8
    :goto_0
    sget-object v0, Lf8/l;->a:Lf8/l;

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 9
    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    const-string v2, "6EE0D80236FC86BAF026B28CF4FE37A8"

    .line 10
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    const v0, 0x7f09004d

    .line 12
    invoke-virtual {p0, v0}, Lf/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mglab/scm/MainActivity;->o:Landroid/widget/FrameLayout;

    .line 13
    new-instance v2, Landroidx/appcompat/widget/a1;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/widget/a1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object v0

    const v2, 0x7f09017e

    invoke-virtual {v0, v2}, Landroidx/fragment/app/a0;->H(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 15
    new-instance v3, Lcom/mglab/scm/visual/FragmentStat;

    invoke-direct {v3}, Lcom/mglab/scm/visual/FragmentStat;-><init>()V

    .line 16
    instance-of v0, v0, Lcom/mglab/scm/visual/FragmentStat;

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object v0

    .line 18
    new-instance v4, Landroidx/fragment/app/a;

    invoke-direct {v4, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/a0;)V

    .line 19
    const-class v0, Lcom/mglab/scm/visual/FragmentStat;

    const-string v0, "FragmentStat"

    invoke-virtual {v4, v2, v3, v0}, Landroidx/fragment/app/i0;->e(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/i0;

    .line 20
    invoke-virtual {v4}, Landroidx/fragment/app/a;->c()I

    :cond_1
    const v0, 0x7f090387

    .line 21
    invoke-virtual {p0, v0}, Lf/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/Toolbar;

    .line 22
    invoke-virtual {p0}, Lf/j;->r()Lf/l;

    move-result-object v0

    invoke-virtual {v0, v6}, Lf/l;->y(Landroidx/appcompat/widget/Toolbar;)V

    const v0, 0x7f09013b

    .line 23
    invoke-virtual {p0, v0}, Lf/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 24
    new-instance v9, Lcom/mglab/scm/MainActivity$a;

    const v7, 0x7f110178

    const v8, 0x7f110177

    move-object v2, v9

    move-object v3, p0

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v2 .. v8}, Lcom/mglab/scm/MainActivity$a;-><init>(Lcom/mglab/scm/MainActivity;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    .line 25
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    if-nez v2, :cond_2

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    .line 28
    :cond_2
    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, v9, Lf/c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->n(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    invoke-virtual {v9, v0}, Lf/c;->e(F)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 31
    invoke-virtual {v9, v0}, Lf/c;->e(F)V

    .line 32
    :goto_1
    iget-boolean v0, v9, Lf/c;->e:Z

    if-eqz v0, :cond_6

    .line 33
    iget-object v0, v9, Lf/c;->c:Lh/d;

    .line 34
    iget-object v3, v9, Lf/c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v3, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->n(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 35
    iget v2, v9, Lf/c;->g:I

    goto :goto_2

    :cond_4
    iget v2, v9, Lf/c;->f:I

    .line 36
    :goto_2
    iget-boolean v3, v9, Lf/c;->h:Z

    if-nez v3, :cond_5

    iget-object v3, v9, Lf/c;->a:Lf/c$a;

    invoke-interface {v3}, Lf/c$a;->b()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "ActionBarDrawerToggle"

    const-string v4, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    .line 37
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput-boolean v1, v9, Lf/c;->h:Z

    .line 39
    :cond_5
    iget-object v3, v9, Lf/c;->a:Lf/c$a;

    invoke-interface {v3, v0, v2}, Lf/c$a;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_6
    const v0, 0x7f090260

    .line 40
    invoke-virtual {p0, v0}, Lf/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 41
    invoke-virtual {v0, p0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$a;)V

    .line 42
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v2, 0x0

    .line 43
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 44
    invoke-virtual {p0}, Lcom/mglab/scm/MainActivity;->A()V

    .line 45
    invoke-static {}, Lf8/g;->y()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 46
    :cond_7
    new-instance v0, Ls4/d$a;

    invoke-direct {v0}, Ls4/d$a;-><init>()V

    .line 47
    iput-boolean v2, v0, Ls4/d$a;->a:Z

    .line 48
    new-instance v1, Ls4/d;

    .line 49
    invoke-direct {v1, v0}, Ls4/d;-><init>(Ls4/d$a;)V

    .line 50
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzd;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/consent_sdk/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzd;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzk;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/mglab/scm/MainActivity;->r:Ls4/c;

    .line 52
    new-instance v2, Ly2/l;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    sget-object v3, Lt4/d;->h:Lt4/d;

    invoke-interface {v0, p0, v1, v2, v3}, Ls4/c;->requestConsentInfoUpdate(Landroid/app/Activity;Ls4/d;Ls4/c$b;Ls4/c$a;)V

    :goto_3
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "page"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lo8/q;

    invoke-direct {p1}, Lo8/q;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/mglab/scm/MainActivity;->x(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
