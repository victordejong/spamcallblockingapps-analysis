.class Landroidx/work/impl/utils/f$a;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/work/impl/utils/f;

.field final b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/f;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroidx/work/impl/utils/f$a;->a:Landroidx/work/impl/utils/f;

    .line 85
    iput-object p2, p0, Landroidx/work/impl/utils/f$a;->b:Ljava/lang/Runnable;

    .line 86
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/f$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Landroidx/work/impl/utils/f$a;->a:Landroidx/work/impl/utils/f;

    invoke-virtual {v0}, Landroidx/work/impl/utils/f;->a()V

    .line 95
    return-void

    .line 93
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/utils/f$a;->a:Landroidx/work/impl/utils/f;

    invoke-virtual {v1}, Landroidx/work/impl/utils/f;->a()V

    .line 94
    throw v0
.end method
