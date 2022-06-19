.class public final Ld9/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld9/h$a;,
        Ld9/h$c;,
        Ld9/h$b;
    }
.end annotation


# static fields
.field public static e:Landroid/os/Handler;


# instance fields
.field public final a:Ld9/h$b;

.field public final b:Ld9/h$c;

.field public final c:Ld9/c;

.field public final d:Lcom/raizlabs/android/dbflow/config/c;


# direct methods
.method public constructor <init>(Ld9/h$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ld9/h$a;->b:Lcom/raizlabs/android/dbflow/config/c;

    iput-object v0, p0, Ld9/h;->d:Lcom/raizlabs/android/dbflow/config/c;

    .line 3
    iget-object v0, p1, Ld9/h$a;->c:Ld9/h$b;

    iput-object v0, p0, Ld9/h;->a:Ld9/h$b;

    .line 4
    iget-object v0, p1, Ld9/h$a;->d:Ld9/h$c;

    iput-object v0, p0, Ld9/h;->b:Ld9/h$c;

    .line 5
    iget-object p1, p1, Ld9/h$a;->a:Ld9/c;

    iput-object p1, p0, Ld9/h;->c:Ld9/c;

    return-void
.end method

.method public static b()Landroid/os/Handler;
    .locals 2

    .line 1
    sget-object v0, Ld9/h;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ld9/h;->e:Landroid/os/Handler;

    .line 3
    :cond_0
    sget-object v0, Ld9/h;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld9/h;->d:Lcom/raizlabs/android/dbflow/config/c;

    .line 2
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/config/c;->g:Ld9/a;

    .line 3
    iget-object v0, v0, Ld9/a;->a:Ld9/d;

    .line 4
    check-cast v0, Ld9/b;

    .line 5
    iget-object v1, v0, Ld9/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Ld9/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    iget-object v0, v0, Ld9/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
