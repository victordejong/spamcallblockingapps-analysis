.class public final Lorg/mistergroup/shouldianswer/ui/main/MainFragment;
.super Lorg/mistergroup/shouldianswer/ui/c;
.source "MainFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;,
        Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;
    }
.end annotation


# static fields
.field public static final b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

.field private static j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/mistergroup/shouldianswer/ui/main/MainFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

.field private c:Landroidx/appcompat/app/b;

.field private d:Lorg/mistergroup/shouldianswer/a/y;

.field private e:I

.field private f:Lorg/mistergroup/shouldianswer/ui/main/c;

.field private g:Landroidx/appcompat/widget/Toolbar;

.field private h:Landroidx/appcompat/app/a;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

    .line 256
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/c;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->e:I

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)Lorg/mistergroup/shouldianswer/a/y;
    .locals 1

    .line 36
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)Lorg/mistergroup/shouldianswer/ui/main/c;
    .locals 1

    .line 36
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->f:Lorg/mistergroup/shouldianswer/ui/main/c;

    if-nez p0, :cond_0

    const-string v0, "mainPagerAdapter"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic g()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 36
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->j:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->e:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .line 50
    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->e:I

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/ui/main/MainActivity;Landroid/os/Bundle;)V
    .locals 13

    const-string p2, "binding.viewPager"

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 141
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    move-result-wide v2

    .line 142
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "MainFragment.initWithActivity.begin"

    invoke-static {v4, v5, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 143
    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ai;->b()I

    move-result v4

    iput v4, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->e:I

    .line 145
    new-instance v4, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$d;

    move-object v8, p1

    check-cast v8, Landroid/app/Activity;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "binding"

    if-nez v5, :cond_0

    :try_start_1
    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v9, v5, Lorg/mistergroup/shouldianswer/a/y;->m:Landroidx/drawerlayout/widget/DrawerLayout;

    const v10, 0x7f10008e

    const v11, 0x7f10008e

    move-object v5, v4

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v5 .. v11}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;Lorg/mistergroup/shouldianswer/ui/main/MainActivity;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    check-cast v4, Landroidx/appcompat/app/b;

    iput-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->c:Landroidx/appcompat/app/b;

    .line 156
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->c:Landroidx/appcompat/app/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "drawerToggle"

    if-nez v4, :cond_1

    :try_start_2
    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4}, Landroidx/appcompat/app/b;->a()V

    .line 158
    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->c:Landroidx/appcompat/app/b;

    if-nez v6, :cond_2

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    invoke-direct {v4, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;->b(Ljava/lang/ref/WeakReference;)V

    .line 159
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez v4, :cond_3

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/y;->m:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->c:Landroidx/appcompat/app/b;

    if-nez v6, :cond_4

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    check-cast v6, Landroidx/drawerlayout/widget/DrawerLayout$c;

    invoke-virtual {v4, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroidx/drawerlayout/widget/DrawerLayout$c;)V

    .line 160
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez v4, :cond_5

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/y;->s:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v4, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->f:Lorg/mistergroup/shouldianswer/ui/main/c;

    if-nez v5, :cond_6

    const-string v6, "mainPagerAdapter"

    invoke-static {v6}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    check-cast v5, Landroidx/viewpager/widget/a;

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 161
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez v4, :cond_7

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/y;->s:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v4, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 162
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez v4, :cond_8

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/y;->s:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v4, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->e:I

    invoke-virtual {v4, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 163
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez p2, :cond_9

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/y;->s:Landroidx/viewpager/widget/ViewPager;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$e;

    invoke-direct {v4, p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;Lorg/mistergroup/shouldianswer/ui/main/MainActivity;)V

    check-cast v4, Landroidx/viewpager/widget/ViewPager$f;

    invoke-virtual {p2, v4}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 183
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MainFragment.initWithActivity pageSelected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 184
    iget p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "binding.bottomNavigation"

    if-eqz p2, :cond_e

    const/4 v5, 0x1

    if-eq p2, v5, :cond_c

    if-eq p2, v0, :cond_a

    goto :goto_0

    .line 187
    :cond_a
    :try_start_3
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez p2, :cond_b

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/y;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {p2, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0a01b7

    invoke-virtual {p2, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    goto :goto_0

    .line 186
    :cond_c
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez p2, :cond_d

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/y;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {p2, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0a01b9

    invoke-virtual {p2, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    goto :goto_0

    .line 185
    :cond_e
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez p2, :cond_f

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/y;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {p2, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0a01b8

    invoke-virtual {p2, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 190
    :goto_0
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez p2, :cond_10

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_10
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/y;->n:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$f;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez p2, :cond_11

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/y;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$g;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$g;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)V

    check-cast v4, Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {p2, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 201
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez p2, :cond_12

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_12
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/y;->k:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$h;

    invoke-direct {v4, p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;Lorg/mistergroup/shouldianswer/ui/main/MainActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez p2, :cond_13

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_13
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/y;->h:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$i;

    invoke-direct {v4, p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$i;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;Lorg/mistergroup/shouldianswer/ui/main/MainActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez p2, :cond_14

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_14
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/y;->j:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$j;

    invoke-direct {v4, p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$j;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;Lorg/mistergroup/shouldianswer/ui/main/MainActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez p2, :cond_15

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_15
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/y;->i:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$k;

    invoke-direct {v4, p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$k;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;Lorg/mistergroup/shouldianswer/ui/main/MainActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez p2, :cond_16

    invoke-static {v12}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_16
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/y;->e:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$l;

    invoke-direct {v4, p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$l;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;Lorg/mistergroup/shouldianswer/ui/main/MainActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainFragment.initWithActivity.end in "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v4, v2, v3}, Lorg/mistergroup/shouldianswer/utils/u;->a(J)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 229
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected final b()Lorg/mistergroup/shouldianswer/ui/main/MainActivity;
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    if-nez v0, :cond_0

    const-string v1, "mainActivity"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final c()V
    .locals 8

    const/4 v0, 0x0

    .line 117
    :try_start_0
    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->i:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 118
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->i:Z

    .line 119
    sget-object v1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/c/f;

    const/4 v4, 0x0

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;

    invoke-direct {v1, p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;Lkotlin/c/c;)V

    move-object v5, v1

    check-cast v5, Lkotlin/e/a/m;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 135
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    invoke-static {v2, v1, v0, v3, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final d()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 239
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/y;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public final e()V
    .locals 2

    .line 243
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/y;->n:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 247
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/y;->n:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 65
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onActivityCreated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javaClass.simpleName"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fragment"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lorg/mistergroup/shouldianswer/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->g:Landroidx/appcompat/widget/Toolbar;

    .line 70
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    .line 71
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    const-string v1, "mainActivity"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;->a(Landroidx/appcompat/widget/Toolbar;)V

    .line 72
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;->c()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 73
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->a(Z)V

    .line 74
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->b(Z)V

    .line 75
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->h:Landroidx/appcompat/app/a;

    .line 77
    :cond_2
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->g:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_3

    .line 78
    new-instance v2, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$m;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$m;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_3
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v0, p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainActivity;Landroid/os/Bundle;)V

    return-void

    .line 70
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type org.mistergroup.shouldianswer.ui.main.MainActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/c;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->setHasOptionsMenu(Z)V

    .line 59
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->j:Ljava/lang/ref/WeakReference;

    .line 60
    new-instance p1, Lorg/mistergroup/shouldianswer/ui/main/c;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->getChildFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, Lorg/mistergroup/shouldianswer/ui/main/c;-><init>(Landroidx/fragment/app/h;Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->f:Lorg/mistergroup/shouldianswer/ui/main/c;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->f:Lorg/mistergroup/shouldianswer/ui/main/c;

    if-nez v0, :cond_0

    const-string v1, "mainPagerAdapter"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->e:I

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/c;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/d;

    invoke-virtual {v0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/d;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type org.mistergroup.shouldianswer.ui.main.PagerFragment"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 99
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x0

    const-string v1, "MainFragment.onCreateView"

    const/4 v2, 0x2

    invoke-static {p3, v1, v0, v2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const p3, 0x7f0d0037

    const/4 v0, 0x0

    .line 91
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/y;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    .line 92
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/y;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 251
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/c;->onDestroyView()V

    .line 252
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    if-nez v0, :cond_0

    const-string v1, "mainActivity"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;->b(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0038

    if-eq v0, v1, :cond_0

    .line 110
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/c;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 107
    :cond_0
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->b:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$a;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 234
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/c;->onResume()V

    .line 235
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/b;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    if-nez v1, :cond_0

    const-string v2, "mainActivity"

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->d:Lorg/mistergroup/shouldianswer/a/y;

    if-nez v2, :cond_1

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    invoke-direct {v0, v1, v2}, Lorg/mistergroup/shouldianswer/ui/main/b;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainActivity;Lorg/mistergroup/shouldianswer/a/y;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/b;->b()V

    return-void
.end method
