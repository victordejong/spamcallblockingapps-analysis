.class public abstract Landroidx/work/impl/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/work/impl/utils/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/a/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Landroidx/work/impl/utils/a/c;->a()Landroidx/work/impl/utils/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/utils/i;->a:Landroidx/work/impl/utils/a/c;

    return-void
.end method

.method public static a(Landroidx/work/impl/j;Ljava/lang/String;)Landroidx/work/impl/utils/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/j;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/work/impl/utils/i<",
            "Ljava/util/List<",
            "Landroidx/work/t;",
            ">;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Landroidx/work/impl/utils/i$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/utils/i$1;-><init>(Landroidx/work/impl/j;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public run()V
    .locals 2

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/i;->a()Ljava/lang/Object;

    move-result-object v0

    .line 48
    iget-object v1, p0, Landroidx/work/impl/utils/i;->a:Landroidx/work/impl/utils/a/c;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 50
    iget-object v1, p0, Landroidx/work/impl/utils/i;->a:Landroidx/work/impl/utils/a/c;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
