.class public abstract Landroidx/fragment/app/n;
.super Landroidx/viewpager/widget/a;
.source "FragmentPagerAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final c:Landroidx/fragment/app/FragmentManager;

.field private final d:I

.field private e:Landroidx/fragment/app/s;

.field private f:Landroidx/fragment/app/Fragment;

.field private g:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/n;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    .line 4
    iput-object v0, p0, Landroidx/fragment/app/n;->f:Landroidx/fragment/app/Fragment;

    .line 5
    iput-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/FragmentManager;

    .line 6
    iput p2, p0, Landroidx/fragment/app/n;->d:I

    return-void
.end method

.method private static x(IJ)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->l()Landroidx/fragment/app/s;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/s;->l(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/n;->f:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/n;->f:Landroidx/fragment/app/Fragment;

    :cond_1
    return-void
.end method

.method public d(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/n;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/n;->g:Z

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iput-boolean v1, p0, Landroidx/fragment/app/n;->g:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/fragment/app/n;->g:Z

    .line 6
    throw p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    :cond_1
    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->l()Landroidx/fragment/app/s;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/n;->w(I)J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Landroidx/fragment/app/n;->x(IJ)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->i0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/s;->g(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/n;->v(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 8
    iget-object p2, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Landroidx/fragment/app/n;->x(IJ)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p2, v3, v2, p1}, Landroidx/fragment/app/s;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 11
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/n;->f:Landroidx/fragment/app/Fragment;

    if-eq v2, p1, :cond_3

    const/4 p1, 0x0

    .line 12
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->P1(Z)V

    .line 13
    iget p2, p0, Landroidx/fragment/app/n;->d:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 14
    iget-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->g:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v2, p2}, Landroidx/fragment/app/s;->r(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/s;

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->V1(Z)V

    :cond_3
    :goto_1
    return-object v2
.end method

.method public k(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->f0()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public o()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/n;->f:Landroidx/fragment/app/Fragment;

    if-eq p3, p1, :cond_5

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->P1(Z)V

    .line 4
    iget p1, p0, Landroidx/fragment/app/n;->d:I

    if-ne p1, p2, :cond_1

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->l()Landroidx/fragment/app/s;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    .line 7
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    iget-object v0, p0, Landroidx/fragment/app/n;->f:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->g:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->r(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/s;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/n;->f:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->V1(Z)V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->P1(Z)V

    .line 10
    iget p1, p0, Landroidx/fragment/app/n;->d:I

    if-ne p1, p2, :cond_4

    .line 11
    iget-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->l()Landroidx/fragment/app/s;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    .line 13
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/s;

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->h:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/s;->r(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/s;

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->V1(Z)V

    .line 15
    :goto_1
    iput-object p3, p0, Landroidx/fragment/app/n;->f:Landroidx/fragment/app/Fragment;

    :cond_5
    return-void
.end method

.method public t(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract v(I)Landroidx/fragment/app/Fragment;
.end method

.method public w(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
