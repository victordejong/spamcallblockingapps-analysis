.class final Landroidx/media2/player/c$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/c/a/b;

.field final synthetic b:Ljava/util/concurrent/Callable;

.field final synthetic c:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;Landroidx/c/a/b;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 832
    iput-object p1, p0, Landroidx/media2/player/c$30;->c:Landroidx/media2/player/c;

    iput-object p2, p0, Landroidx/media2/player/c$30;->a:Landroidx/c/a/b;

    iput-object p3, p0, Landroidx/media2/player/c$30;->b:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 836
    :try_start_0
    iget-object v0, p0, Landroidx/media2/player/c$30;->a:Landroidx/c/a/b;

    iget-object v1, p0, Landroidx/media2/player/c$30;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/c/a/b;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 838
    iget-object v1, p0, Landroidx/media2/player/c$30;->a:Landroidx/c/a/b;

    invoke-virtual {v1, v0}, Landroidx/c/a/b;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
