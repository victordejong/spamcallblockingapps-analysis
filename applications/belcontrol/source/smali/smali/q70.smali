.class public Lq70;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public a:Lo50;

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "StopWorkRunnable"

    invoke-static {v0}, Lx40;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lq70;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo50;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq70;->a:Lo50;

    iput-object p2, p0, Lq70;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lq70;->a:Lo50;

    invoke-virtual {v0}, Lo50;->n()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->y()Ld70;

    move-result-object v1

    invoke-virtual {v0}, Lz00;->c()V

    :try_start_0
    iget-object v2, p0, Lq70;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ld70;->e(Ljava/lang/String;)Ld50;

    move-result-object v2

    sget-object v3, Ld50;->b:Ld50;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    sget-object v2, Ld50;->a:Ld50;

    new-array v3, v4, [Ljava/lang/String;

    iget-object v6, p0, Lq70;->b:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-interface {v1, v2, v3}, Ld70;->a(Ld50;[Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lq70;->a:Lo50;

    invoke-virtual {v1}, Lo50;->l()Lj50;

    move-result-object v1

    iget-object v2, p0, Lq70;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lj50;->i(Ljava/lang/String;)Z

    move-result v1

    invoke-static {}, Lx40;->c()Lx40;

    move-result-object v2

    sget-object v3, Lq70;->c:Ljava/lang/String;

    const-string v6, "StopWorkRunnable for %s; Processor.stopWork = %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lq70;->b:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v1, v4}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lz00;->g()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lz00;->g()V

    throw v1
.end method
