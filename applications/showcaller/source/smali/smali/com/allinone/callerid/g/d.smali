.class public Lcom/allinone/callerid/g/d;
.super Landroidx/fragment/app/Fragment;
.source "EZCallScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final e0:Ljava/lang/String;

.field private f0:Landroid/view/View;

.field private g0:Lcom/allinone/callerid/main/CustomViewPager;

.field private h0:Lcom/allinone/callerid/d/d/b;

.field private i0:Landroid/content/Context;

.field private j0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "EZCallScreenFragment"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/g/d;->e0:Ljava/lang/String;

    return-void
.end method

.method private a2(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0907eb

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/main/CustomViewPager;

    iput-object v0, p0, Lcom/allinone/callerid/g/d;->g0:Lcom/allinone/callerid/main/CustomViewPager;

    const v0, 0x7f0903dc

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    .line 3
    new-instance v0, Lcom/allinone/callerid/b/n;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/allinone/callerid/b/n;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    new-instance v1, Lcom/allinone/callerid/d/d/b;

    invoke-direct {v1}, Lcom/allinone/callerid/d/d/b;-><init>()V

    iput-object v1, p0, Lcom/allinone/callerid/g/d;->h0:Lcom/allinone/callerid/d/d/b;

    .line 5
    new-instance v1, Lcom/allinone/callerid/d/d/a;

    invoke-direct {v1}, Lcom/allinone/callerid/d/d/a;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/allinone/callerid/g/d;->h0:Lcom/allinone/callerid/d/d/b;

    const v3, 0x7f100270

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->d0(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/allinone/callerid/b/n;->y(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v2, 0x7f1001bd

    .line 7
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->d0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/b/n;->y(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/g/d;->g0:Lcom/allinone/callerid/main/CustomViewPager;

    new-instance v2, Lcom/allinone/callerid/g/d$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/g/d$a;-><init>(Lcom/allinone/callerid/g/d;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/g/d;->g0:Lcom/allinone/callerid/main/CustomViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/g/d;->i0:Landroid/content/Context;

    const v1, 0x7f040124

    const v2, 0x7f06004f

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p1, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->r:I

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/g/d;->i0:Landroid/content/Context;

    const v1, 0x7f040145

    const v2, 0x7f06005e

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p1, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->q:I

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/g/d;->i0:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->setIndicatorColor(I)V

    const/16 v0, 0x10

    .line 13
    iput v0, p1, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->B:I

    const/4 v0, 0x0

    .line 14
    iput v0, p1, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->s:I

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/g/d;->g0:Lcom/allinone/callerid/main/CustomViewPager;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method public G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x1

    .line 1
    iput-boolean p3, p0, Lcom/allinone/callerid/g/d;->j0:Z

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/h1;->I0(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/d;->f0:Landroid/view/View;

    if-nez v0, :cond_1

    const v0, 0x7f0c00b1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/g/d;->f0:Landroid/view/View;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutDirection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/g/d;->f0:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/allinone/callerid/g/d;->a2(Landroid/view/View;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/g/d;->f0:Landroid/view/View;

    return-object p1
.end method

.method public H0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->H0()V

    return-void
.end method

.method public K0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K0()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/d;->f0:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/g/d;->f0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public T0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->T0()V

    return-void
.end method

.method public V1(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->V1(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 2
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/d/f/f;->q(Z)V

    .line 4
    new-instance p1, Ljava/util/Date;

    invoke-static {}, Lcom/allinone/callerid/d/f/f;->c()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, v1}, Lcom/allinone/callerid/util/i;->r(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v1, "new_user_callscreen_show"

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 6
    sput-boolean p1, Lcom/allinone/callerid/d/f/a;->d:Z

    .line 7
    iget-boolean v1, p0, Lcom/allinone/callerid/g/d;->j0:Z

    const-string v2, "callscreen"

    if-eqz v1, :cond_2

    .line 8
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnterOnCreate:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/allinone/callerid/g/d;->j0:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    iput-boolean v0, p0, Lcom/allinone/callerid/g/d;->j0:Z

    .line 11
    iget-object v1, p0, Lcom/allinone/callerid/g/d;->h0:Lcom/allinone/callerid/d/d/b;

    const-string v3, "download_count"

    invoke-virtual {v1, p1, v3}, Lcom/allinone/callerid/d/d/b;->u2(ILjava/lang/String;)V

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/allinone/callerid/g/d;->g0:Lcom/allinone/callerid/main/CustomViewPager;

    if-eqz v1, :cond_7

    .line 13
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, p1, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "latestFragment"

    .line 15
    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "callscreen_list_last_show_new"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_5
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_6

    const-string v1, "popularFragment"

    .line 18
    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "callscreen_list_download_show_new"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 20
    :goto_0
    sget-boolean v1, Lcom/allinone/callerid/d/f/a;->e:Z

    if-eqz v1, :cond_7

    .line 21
    sput-boolean v0, Lcom/allinone/callerid/d/f/a;->e:Z

    .line 22
    iget-object v1, p0, Lcom/allinone/callerid/g/d;->g0:Lcom/allinone/callerid/main/CustomViewPager;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 23
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroid/content/Context;

    move-result-object p1

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_9

    .line 24
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 29
    :cond_8
    sput-boolean v0, Lcom/allinone/callerid/d/f/a;->d:Z

    :cond_9
    :goto_1
    return-void
.end method

.method public Y0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->Y0()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public y0(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->y0(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/g/d;->i0:Landroid/content/Context;

    return-void
.end method
