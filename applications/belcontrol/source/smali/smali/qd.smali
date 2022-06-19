.class public abstract Lqd;
.super Lg40;
.source ""


# instance fields
.field public final b:Lnd;

.field public final c:I

.field public d:Ltd;

.field public e:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lnd;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lqd;-><init>(Lnd;I)V

    return-void
.end method

.method public constructor <init>(Lnd;I)V
    .locals 1

    invoke-direct {p0}, Lg40;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqd;->d:Ltd;

    iput-object v0, p0, Lqd;->e:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lqd;->b:Lnd;

    iput p2, p0, Lqd;->c:I

    return-void
.end method

.method public static w(IJ)Ljava/lang/String;
    .locals 2

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

    check-cast p3, Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Lqd;->d:Ltd;

    if-nez p1, :cond_0

    iget-object p1, p0, Lqd;->b:Lnd;

    invoke-virtual {p1}, Lnd;->j()Ltd;

    move-result-object p1

    iput-object p1, p0, Lqd;->d:Ltd;

    :cond_0
    iget-object p1, p0, Lqd;->d:Ltd;

    invoke-virtual {p1, p3}, Ltd;->l(Landroidx/fragment/app/Fragment;)Ltd;

    iget-object p1, p0, Lqd;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lqd;->e:Landroidx/fragment/app/Fragment;

    :cond_1
    return-void
.end method

.method public d(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p1, p0, Lqd;->d:Ltd;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ltd;->k()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lqd;->d:Ltd;

    invoke-virtual {p1}, Ltd;->i()I

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lqd;->d:Ltd;

    :cond_0
    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lqd;->d:Ltd;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->j()Ltd;

    move-result-object v0

    iput-object v0, p0, Lqd;->d:Ltd;

    :cond_0
    invoke-virtual {p0, p2}, Lqd;->v(I)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Lqd;->w(IJ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lqd;->b:Lnd;

    invoke-virtual {v3, v2}, Lnd;->Z(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lqd;->d:Ltd;

    invoke-virtual {p1, v2}, Ltd;->g(Landroidx/fragment/app/Fragment;)Ltd;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lqd;->u(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object p2, p0, Lqd;->d:Ltd;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Lqd;->w(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, v2, p1}, Ltd;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ltd;

    :goto_0
    iget-object p1, p0, Lqd;->e:Landroidx/fragment/app/Fragment;

    if-eq v2, p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget p2, p0, Lqd;->c:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object p1, p0, Lqd;->d:Ltd;

    sget-object p2, Lme$b;->d:Lme$b;

    invoke-virtual {p1, v2, p2}, Ltd;->u(Landroidx/fragment/app/Fragment;Lme$b;)Ltd;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_3
    :goto_1
    return-object v2
.end method

.method public k(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public n()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    check-cast p3, Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Lqd;->e:Landroidx/fragment/app/Fragment;

    if-eq p3, p1, :cond_5

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget p1, p0, Lqd;->c:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lqd;->d:Ltd;

    if-nez p1, :cond_0

    iget-object p1, p0, Lqd;->b:Lnd;

    invoke-virtual {p1}, Lnd;->j()Ltd;

    move-result-object p1

    iput-object p1, p0, Lqd;->d:Ltd;

    :cond_0
    iget-object p1, p0, Lqd;->d:Ltd;

    iget-object v0, p0, Lqd;->e:Landroidx/fragment/app/Fragment;

    sget-object v1, Lme$b;->d:Lme$b;

    invoke-virtual {p1, v0, v1}, Ltd;->u(Landroidx/fragment/app/Fragment;Lme$b;)Ltd;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lqd;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget p1, p0, Lqd;->c:I

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lqd;->d:Ltd;

    if-nez p1, :cond_3

    iget-object p1, p0, Lqd;->b:Lnd;

    invoke-virtual {p1}, Lnd;->j()Ltd;

    move-result-object p1

    iput-object p1, p0, Lqd;->d:Ltd;

    :cond_3
    iget-object p1, p0, Lqd;->d:Ltd;

    sget-object p2, Lme$b;->f:Lme$b;

    invoke-virtual {p1, p3, p2}, Ltd;->u(Landroidx/fragment/app/Fragment;Lme$b;)Ltd;

    goto :goto_1

    :cond_4
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :goto_1
    iput-object p3, p0, Lqd;->e:Landroidx/fragment/app/Fragment;

    :cond_5
    return-void
.end method

.method public s(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

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

.method public abstract u(I)Landroidx/fragment/app/Fragment;
.end method

.method public v(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
