.class final Landroidx/viewpager2/adapter/a$2;
.super Landroidx/fragment/app/FragmentManager$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/adapter/a;->a(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/Fragment;

.field final synthetic b:Landroid/widget/FrameLayout;

.field final synthetic c:Landroidx/viewpager2/adapter/a;


# direct methods
.method constructor <init>(Landroidx/viewpager2/adapter/a;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 369
    iput-object p1, p0, Landroidx/viewpager2/adapter/a$2;->c:Landroidx/viewpager2/adapter/a;

    iput-object p2, p0, Landroidx/viewpager2/adapter/a$2;->a:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/viewpager2/adapter/a$2;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 3

    .line 376
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$2;->a:Landroidx/fragment/app/Fragment;

    if-ne p2, v0, :cond_2

    .line 4404
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 5080
    iget-object p2, p1, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p2

    const/4 v0, 0x0

    .line 5081
    :try_start_0
    iget-object v1, p1, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 5082
    iget-object v2, p1, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/j$a;

    iget-object v2, v2, Landroidx/fragment/app/j$a;->a:Landroidx/fragment/app/FragmentManager$c;

    if-ne v2, p0, :cond_0

    .line 5083
    iget-object p1, p1, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5087
    :cond_1
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    iget-object p1, p0, Landroidx/viewpager2/adapter/a$2;->b:Landroid/widget/FrameLayout;

    invoke-static {p3, p1}, Landroidx/viewpager2/adapter/a;->a(Landroid/view/View;Landroid/widget/FrameLayout;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 5087
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_2
    return-void
.end method
