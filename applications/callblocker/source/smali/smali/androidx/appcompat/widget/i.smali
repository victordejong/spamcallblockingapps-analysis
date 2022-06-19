.class public final Landroidx/appcompat/widget/i;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# static fields
.field private static final a:Landroid/graphics/PorterDuff$Mode;

.field private static b:Landroidx/appcompat/widget/i;


# instance fields
.field private c:Landroidx/appcompat/widget/af;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/i;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .prologue
    .line 438
    const-class v0, Landroidx/appcompat/widget/i;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Landroidx/appcompat/widget/af;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a()V
    .locals 3

    .prologue
    .line 54
    const-class v1, Landroidx/appcompat/widget/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/i;->b:Landroidx/appcompat/widget/i;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroidx/appcompat/widget/i;

    invoke-direct {v0}, Landroidx/appcompat/widget/i;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/i;->b:Landroidx/appcompat/widget/i;

    .line 56
    sget-object v0, Landroidx/appcompat/widget/i;->b:Landroidx/appcompat/widget/i;

    invoke-static {}, Landroidx/appcompat/widget/af;->a()Landroidx/appcompat/widget/af;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/i;->c:Landroidx/appcompat/widget/af;

    .line 57
    sget-object v0, Landroidx/appcompat/widget/i;->b:Landroidx/appcompat/widget/i;

    iget-object v0, v0, Landroidx/appcompat/widget/i;->c:Landroidx/appcompat/widget/af;

    new-instance v2, Landroidx/appcompat/widget/i$1;

    invoke-direct {v2}, Landroidx/appcompat/widget/i$1;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/af;->a(Landroidx/appcompat/widget/af$e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :cond_0
    monitor-exit v1

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/an;[I)V
    .locals 0

    .prologue
    .line 433
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/af;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/an;[I)V

    .line 434
    return-void
.end method

.method public static declared-synchronized b()Landroidx/appcompat/widget/i;
    .locals 2

    .prologue
    .line 397
    const-class v1, Landroidx/appcompat/widget/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/i;->b:Landroidx/appcompat/widget/i;

    if-nez v0, :cond_0

    .line 398
    invoke-static {}, Landroidx/appcompat/widget/i;->a()V

    .line 400
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/i;->b:Landroidx/appcompat/widget/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroidx/appcompat/widget/i;->a:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/i;->c:Landroidx/appcompat/widget/af;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/i;->c:Landroidx/appcompat/widget/af;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/i;->c:Landroidx/appcompat/widget/af;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/i;->c:Landroidx/appcompat/widget/af;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/af;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
