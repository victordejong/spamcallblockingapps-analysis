.class public Ly1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/e;


# instance fields
.field public final a:La2/a;

.field public final b:Lw1/a;

.field public final c:Lx1/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WMFgUpdater"

    .line 1
    invoke-static {v0}, Lo1/h;->e(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Lw1/a;La2/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ly1/o;->b:Lw1/a;

    .line 3
    iput-object p3, p0, Ly1/o;->a:La2/a;

    .line 4
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->q()Lx1/q;

    move-result-object p1

    iput-object p1, p0, Ly1/o;->c:Lx1/q;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;Lo1/d;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Lo1/d;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lz1/c;

    invoke-direct {v6}, Lz1/c;-><init>()V

    .line 2
    iget-object v7, p0, Ly1/o;->a:La2/a;

    new-instance v8, Ly1/o$a;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ly1/o$a;-><init>(Ly1/o;Lz1/c;Ljava/util/UUID;Lo1/d;Landroid/content/Context;)V

    check-cast v7, La2/b;

    .line 3
    iget-object p1, v7, La2/b;->a:Ly1/j;

    invoke-virtual {p1, v8}, Ly1/j;->execute(Ljava/lang/Runnable;)V

    return-object v6
.end method
