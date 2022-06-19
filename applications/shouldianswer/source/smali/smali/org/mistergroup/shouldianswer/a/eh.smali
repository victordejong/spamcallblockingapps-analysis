.class public Lorg/mistergroup/shouldianswer/a/eh;
.super Lorg/mistergroup/shouldianswer/a/eg;
.source "SettingsReportedNumbersAddDialogBindingImpl.java"


# static fields
.field private static final d:Landroidx/databinding/ViewDataBinding$b;

.field private static final e:Landroid/util/SparseIntArray;


# instance fields
.field private final f:Landroid/widget/LinearLayout;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/a/eh;->e:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lorg/mistergroup/shouldianswer/a/eh;->e:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0124

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 28
    sget-object v0, Lorg/mistergroup/shouldianswer/a/eh;->d:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lorg/mistergroup/shouldianswer/a/eh;->e:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Lorg/mistergroup/shouldianswer/a/eh;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/mistergroup/shouldianswer/a/eh;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    .line 31
    aget-object v0, p3, v0

    check-cast v0, Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/mistergroup/shouldianswer/a/eg;-><init>(Ljava/lang/Object;Landroid/view/View;ILorg/mistergroup/shouldianswer/utils/BetterEditText;)V

    const-wide/16 v2, -0x1

    .line 84
    iput-wide v2, p0, Lorg/mistergroup/shouldianswer/a/eh;->g:J

    .line 34
    aget-object p1, p3, v1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/a/eh;->f:Landroid/widget/LinearLayout;

    .line 35
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/a/eh;->f:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/a/eh;->a(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/a/eh;->h()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/a/eh;->g:J

    const-wide/16 v0, 0x0

    .line 77
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/eh;->g:J

    .line 78
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

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/a/eh;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 53
    monitor-exit p0

    return v0

    .line 55
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

    .line 43
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 44
    :try_start_0
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/eh;->g:J

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/a/eh;->e()V

    return-void

    :catchall_0
    move-exception v0

    .line 45
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
