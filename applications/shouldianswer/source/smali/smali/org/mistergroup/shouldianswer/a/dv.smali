.class public Lorg/mistergroup/shouldianswer/a/dv;
.super Lorg/mistergroup/shouldianswer/a/du;
.source "SettingsNotificationsFragmentBindingImpl.java"


# static fields
.field private static final l:Landroidx/databinding/ViewDataBinding$b;

.field private static final m:Landroid/util/SparseIntArray;


# instance fields
.field private final n:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/a/dv;->m:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lorg/mistergroup/shouldianswer/a/dv;->m:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0048

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lorg/mistergroup/shouldianswer/a/dv;->m:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00fa

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lorg/mistergroup/shouldianswer/a/dv;->m:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00bf

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lorg/mistergroup/shouldianswer/a/dv;->m:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00e8

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lorg/mistergroup/shouldianswer/a/dv;->m:Landroid/util/SparseIntArray;

    const v1, 0x7f0a006d

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lorg/mistergroup/shouldianswer/a/dv;->m:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00fb

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lorg/mistergroup/shouldianswer/a/dv;->m:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00f4

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lorg/mistergroup/shouldianswer/a/dv;->m:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00fd

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lorg/mistergroup/shouldianswer/a/dv;->m:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00fe

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 36
    sget-object v0, Lorg/mistergroup/shouldianswer/a/dv;->l:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lorg/mistergroup/shouldianswer/a/dv;->m:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Lorg/mistergroup/shouldianswer/a/dv;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/mistergroup/shouldianswer/a/dv;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 14

    move-object v13, p0

    const/4 v0, 0x1

    .line 39
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageButton;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageButton;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/appcompat/widget/SwitchCompat;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroidx/appcompat/widget/SwitchCompat;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v12}, Lorg/mistergroup/shouldianswer/a/du;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/Toolbar;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;)V

    const-wide/16 v0, -0x1

    .line 100
    iput-wide v0, v13, Lorg/mistergroup/shouldianswer/a/dv;->o:J

    const/4 v0, 0x0

    .line 50
    aget-object v0, p3, v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, v13, Lorg/mistergroup/shouldianswer/a/dv;->n:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 51
    iget-object v0, v13, Lorg/mistergroup/shouldianswer/a/dv;->n:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 52
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/a/dv;->a(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/a/dv;->h()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/a/dv;->o:J

    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/dv;->o:J

    .line 94
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

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/a/dv;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 69
    monitor-exit p0

    return v0

    .line 71
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

    .line 59
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 60
    :try_start_0
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/dv;->o:J

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/a/dv;->e()V

    return-void

    :catchall_0
    move-exception v0

    .line 61
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
