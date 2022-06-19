.class public Ly1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Lp1/j;

.field public b:Ljava/lang/String;

.field public c:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Lp1/j;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly1/k;->a:Lp1/j;

    .line 3
    iput-object p2, p0, Ly1/k;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Ly1/k;->c:Landroidx/work/WorkerParameters$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/k;->a:Lp1/j;

    .line 2
    iget-object v0, v0, Lp1/j;->f:Lp1/c;

    .line 3
    iget-object v1, p0, Ly1/k;->b:Ljava/lang/String;

    iget-object v2, p0, Ly1/k;->c:Landroidx/work/WorkerParameters$a;

    invoke-virtual {v0, v1, v2}, Lp1/c;->g(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z

    return-void
.end method
