.class final Landroidx/fragment/app/FragmentManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 451
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$4;->a:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;Landroidx/core/os/a;)V
    .locals 3

    .line 455
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$4;->a:Landroidx/fragment/app/FragmentManager;

    .line 1833
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1834
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroidx/fragment/app/Fragment;Landroidx/core/os/a;)V
    .locals 2

    .line 460
    invoke-virtual {p2}, Landroidx/core/os/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$4;->a:Landroidx/fragment/app/FragmentManager;

    .line 1847
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-eqz v1, :cond_0

    .line 1848
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1849
    iget-object p2, v0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    iget p2, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-ge p2, v1, :cond_0

    .line 1853
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->d(Landroidx/fragment/app/Fragment;)V

    .line 1854
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->e(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method
