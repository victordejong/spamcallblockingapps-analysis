.class public Lorg/mistergroup/shouldianswer/a/bl;
.super Lorg/mistergroup/shouldianswer/a/bk;
.source "PromoFragmentBindingImpl.java"


# static fields
.field private static final p:Landroidx/databinding/ViewDataBinding$b;

.field private static final q:Landroid/util/SparseIntArray;


# instance fields
.field private final r:Landroid/widget/LinearLayout;

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0048

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a009d

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00cd

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00cf

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00ce

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00d2

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00d1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00cb

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a011f

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0092

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a01a5

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a008d

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00cc

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 40
    sget-object v0, Lorg/mistergroup/shouldianswer/a/bl;->p:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lorg/mistergroup/shouldianswer/a/bl;->q:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-static {p1, p2, v2, v0, v1}, Lorg/mistergroup/shouldianswer/a/bl;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/mistergroup/shouldianswer/a/bl;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x1

    .line 43
    aget-object v4, p3, v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    const/16 v5, 0xc

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/Button;

    const/16 v6, 0xa

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/Button;

    const/4 v7, 0x2

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/ImageButton;

    const/16 v8, 0x8

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/ImageButton;

    const/16 v9, 0xd

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/Button;

    const/4 v10, 0x3

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/Button;

    const/4 v11, 0x5

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/Button;

    const/4 v12, 0x4

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/Button;

    const/4 v13, 0x7

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/Button;

    const/4 v14, 0x6

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/Button;

    const/16 v15, 0x9

    aget-object v15, p3, v15

    check-cast v15, Landroid/view/View;

    const/16 v16, 0xb

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/LinearLayout;

    const/16 v17, 0x0

    move/from16 v3, v17

    invoke-direct/range {v0 .. v16}, Lorg/mistergroup/shouldianswer/a/bk;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/Toolbar;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/widget/LinearLayout;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 108
    iput-wide v0, v2, Lorg/mistergroup/shouldianswer/a/bl;->s:J

    const/4 v0, 0x0

    .line 58
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/a/bl;->r:Landroid/widget/LinearLayout;

    .line 59
    iget-object v0, v2, Lorg/mistergroup/shouldianswer/a/bl;->r:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 60
    invoke-virtual {v2, v0}, Lorg/mistergroup/shouldianswer/a/bl;->a(Landroid/view/View;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/a/bl;->h()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/a/bl;->s:J

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/bl;->s:J

    .line 102
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

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/a/bl;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 77
    monitor-exit p0

    return v0

    .line 79
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

    .line 67
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 68
    :try_start_0
    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/a/bl;->s:J

    .line 69
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/a/bl;->e()V

    return-void

    :catchall_0
    move-exception v0

    .line 69
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
