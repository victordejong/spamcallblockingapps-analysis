.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Q(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-virtual {p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-virtual {p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->d()V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->L(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    sget-object v0, Lvt0;->g:Lvt0;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 0

    return-void
.end method
