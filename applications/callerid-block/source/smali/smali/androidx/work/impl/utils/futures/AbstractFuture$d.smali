.class final Landroidx/work/impl/utils/futures/AbstractFuture$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field static final d:Landroidx/work/impl/utils/futures/AbstractFuture$d;


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:Ljava/util/concurrent/Executor;

.field c:Landroidx/work/impl/utils/futures/AbstractFuture$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/impl/utils/futures/AbstractFuture$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/work/impl/utils/futures/AbstractFuture$d;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Landroidx/work/impl/utils/futures/AbstractFuture$d;->d:Landroidx/work/impl/utils/futures/AbstractFuture$d;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/futures/AbstractFuture$d;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Landroidx/work/impl/utils/futures/AbstractFuture$d;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
