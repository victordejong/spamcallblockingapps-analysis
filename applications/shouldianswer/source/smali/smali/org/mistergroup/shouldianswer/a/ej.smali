.class public Lorg/mistergroup/shouldianswer/a/ej;
.super Lorg/mistergroup/shouldianswer/a/ei;
.source "SettingsReportedNumbersFragmentBindingImpl.java"


# static fields
.field private static final i:Landroidx/databinding/ViewDataBinding$b;

.field private static final j:Landroid/util/SparseIntArray;


# instance fields
.field private final k:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/a/ej;->j:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lorg/mistergroup/shouldianswer/a/ej;->j:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0048

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lorg/mistergroup/shouldianswer/a/ej;->j:Landroid/util/SparseIntArray;

    const v1, 0x7f0a017c

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lorg/mistergroup/shouldianswer/a/ej;->j:Landroid/util/SparseIntArray;

    const v1, 0x7f0a01d0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lorg/mistergroup/shouldianswer/a/ej;->j:Landroid/util/SparseIntArray;

    const v1, 0x7f0a01d7

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lorg/mistergroup/shouldianswer/a/ej;->j:Landroid/util/SparseIntArray;

    const v1, 0x7f0a01a1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lorg/mistergroup/shouldianswer/a/ej;->j:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0137

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 33
    sget-object v0, Lorg/mistergroup/shouldianswer/a/ej;->i:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lorg/mistergroup/shouldianswer/a/ej;->j:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lorg/mistergroup/shouldianswer/a/ej;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/mistergroup/shouldianswer/a/ej;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x1

    .line 36
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lorg/mistergroup/shouldianswer/a/ei;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/Toolbar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;)V

    const-wide/16 v0, -0x1

    .line 94
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/ej;->l:J

    const/4 p1, 0x0

    .line 44
    aget-object p1, p3, p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/a/ej;->k:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 45
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/a/ej;->k:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/a/ej;->a(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/a/ej;->h()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/a/ej;->l:J

    const-wide/16 v0, 0x0

    .line 87
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/ej;->l:J

    .line 88
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

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/a/ej;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 63
    monitor-exit p0

    return v0

    .line 65
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

    .line 53
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 54
    :try_start_0
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/ej;->l:J

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/a/ej;->e()V

    return-void

    :catchall_0
    move-exception v0

    .line 55
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
