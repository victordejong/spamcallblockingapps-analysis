.class public Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->setTabClickListeners(Lkv0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkv0;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;Lkv0;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$b;->b:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$b;->a:Lkv0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a067f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06019d

    invoke-static {v1, v2}, Lg8;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$b;->b:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->d()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$b;->b:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a(Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$b;->a:Lkv0;

    sget-object v0, Liv0;->j:Liv0;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$b;->a:Lkv0;

    sget-object v0, Liv0;->h:Liv0;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$b;->a:Lkv0;

    sget-object v0, Liv0;->f:Liv0;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$b;->a:Lkv0;

    sget-object v0, Liv0;->d:Liv0;

    :goto_0
    invoke-interface {p1, v0}, Lkv0;->a(Liv0;)V

    :goto_1
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f0a067f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060195

    invoke-static {v0, v1}, Lg8;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
