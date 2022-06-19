.class public Lorg/mistergroup/shouldianswer/a/dn;
.super Lorg/mistergroup/shouldianswer/a/dm;
.source "SettingsBlockingActivityBindingImpl.java"


# static fields
.field private static final d:Landroidx/databinding/ViewDataBinding$b;

.field private static final e:Landroid/util/SparseIntArray;


# instance fields
.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 25
    sget-object v0, Lorg/mistergroup/shouldianswer/a/dn;->d:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lorg/mistergroup/shouldianswer/a/dn;->e:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2, v0, v1}, Lorg/mistergroup/shouldianswer/a/dn;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/mistergroup/shouldianswer/a/dn;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 28
    aget-object p3, p3, v0

    check-cast p3, Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/mistergroup/shouldianswer/a/dm;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;)V

    const-wide/16 v0, -0x1

    .line 80
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/dn;->f:J

    .line 31
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/a/dn;->c:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/a/dn;->a(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/a/dn;->h()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/a/dn;->f:J

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/dn;->f:J

    .line 74
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

    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/a/dn;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 49
    monitor-exit p0

    return v0

    .line 51
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

    .line 39
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 40
    :try_start_0
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/dn;->f:J

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/a/dn;->e()V

    return-void

    :catchall_0
    move-exception v0

    .line 41
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
