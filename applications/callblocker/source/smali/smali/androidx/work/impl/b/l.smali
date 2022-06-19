.class public final Landroidx/work/impl/b/l;
.super Ljava/lang/Object;
.source "WorkNameDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/b/k;


# instance fields
.field private final a:Landroidx/room/i;

.field private final b:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b",
            "<",
            "Landroidx/work/impl/b/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/i;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Landroidx/work/impl/b/l;->a:Landroidx/room/i;

    .line 23
    new-instance v0, Landroidx/work/impl/b/l$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/l$1;-><init>(Landroidx/work/impl/b/l;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/l;->b:Landroidx/room/b;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Landroidx/work/impl/b/j;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Landroidx/work/impl/b/l;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 48
    iget-object v0, p0, Landroidx/work/impl/b/l;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 50
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/b/l;->b:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->a(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Landroidx/work/impl/b/l;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v0, p0, Landroidx/work/impl/b/l;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->h()V

    .line 55
    return-void

    .line 53
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/b/l;->a:Landroidx/room/i;

    invoke-virtual {v1}, Landroidx/room/i;->h()V

    .line 54
    throw v0
.end method
