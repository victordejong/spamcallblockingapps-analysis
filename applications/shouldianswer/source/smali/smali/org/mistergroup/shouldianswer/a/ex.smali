.class public Lorg/mistergroup/shouldianswer/a/ex;
.super Lorg/mistergroup/shouldianswer/a/ew;
.source "WelcomeSlide3FragmentBindingImpl.java"


# static fields
.field private static final c:Landroidx/databinding/ViewDataBinding$b;

.field private static final d:Landroid/util/SparseIntArray;


# instance fields
.field private final e:Landroid/widget/FrameLayout;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 27
    sget-object v0, Lorg/mistergroup/shouldianswer/a/ex;->c:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lorg/mistergroup/shouldianswer/a/ex;->d:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2, v0, v1}, Lorg/mistergroup/shouldianswer/a/ex;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/mistergroup/shouldianswer/a/ex;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lorg/mistergroup/shouldianswer/a/ew;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 82
    iput-wide v1, p0, Lorg/mistergroup/shouldianswer/a/ex;->f:J

    .line 32
    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/a/ex;->e:Landroid/widget/FrameLayout;

    .line 33
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/a/ex;->e:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/a/ex;->a(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/a/ex;->h()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/a/ex;->f:J

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/ex;->f:J

    .line 76
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

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/a/ex;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 51
    monitor-exit p0

    return v0

    .line 53
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

    .line 41
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 42
    :try_start_0
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/ex;->f:J

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/a/ex;->e()V

    return-void

    :catchall_0
    move-exception v0

    .line 43
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
