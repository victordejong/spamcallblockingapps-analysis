.class public Lorg/mistergroup/shouldianswer/a/cv;
.super Lorg/mistergroup/shouldianswer/a/cu;
.source "SearchFragmentBindingImpl.java"


# static fields
.field private static final g:Landroidx/databinding/ViewDataBinding$b;

.field private static final h:Landroid/util/SparseIntArray;


# instance fields
.field private final i:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/a/cv;->h:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lorg/mistergroup/shouldianswer/a/cv;->h:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0048

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lorg/mistergroup/shouldianswer/a/cv;->h:Landroid/util/SparseIntArray;

    const v1, 0x7f0a012e

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lorg/mistergroup/shouldianswer/a/cv;->h:Landroid/util/SparseIntArray;

    const v1, 0x7f0a01ec

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lorg/mistergroup/shouldianswer/a/cv;->h:Landroid/util/SparseIntArray;

    const v1, 0x7f0a017f

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 31
    sget-object v0, Lorg/mistergroup/shouldianswer/a/cv;->g:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lorg/mistergroup/shouldianswer/a/cv;->h:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lorg/mistergroup/shouldianswer/a/cv;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/mistergroup/shouldianswer/a/cv;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x1

    .line 34
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lorg/mistergroup/shouldianswer/a/cu;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/Toolbar;Lorg/mistergroup/shouldianswer/utils/BetterEditText;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;)V

    const-wide/16 v0, -0x1

    .line 90
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/cv;->j:J

    const/4 p1, 0x0

    .line 40
    aget-object p1, p3, p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/a/cv;->i:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 41
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/a/cv;->i:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/a/cv;->a(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/a/cv;->h()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/a/cv;->j:J

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/cv;->j:J

    .line 84
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 4

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/a/cv;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 59
    monitor-exit p0

    return v0

    .line 61
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 2

    .line 49
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 50
    :try_start_0
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/cv;->j:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/a/cv;->e()V

    return-void

    :catchall_0
    move-exception v0

    .line 51
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
