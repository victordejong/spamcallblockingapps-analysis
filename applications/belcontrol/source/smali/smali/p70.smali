.class public Lp70;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Lo50;

.field public b:Ljava/lang/String;

.field public c:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Lo50;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp70;->a:Lo50;

    iput-object p2, p0, Lp70;->b:Ljava/lang/String;

    iput-object p3, p0, Lp70;->c:Landroidx/work/WorkerParameters$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lp70;->a:Lo50;

    invoke-virtual {v0}, Lo50;->l()Lj50;

    move-result-object v0

    iget-object v1, p0, Lp70;->b:Ljava/lang/String;

    iget-object v2, p0, Lp70;->c:Landroidx/work/WorkerParameters$a;

    invoke-virtual {v0, v1, v2}, Lj50;->g(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z

    return-void
.end method
