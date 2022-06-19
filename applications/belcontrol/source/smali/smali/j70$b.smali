.class public final Lj70$b;
.super Lj70;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj70;->b(Ljava/lang/String;Lo50;Z)Lj70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lo50;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lo50;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lj70$b;->b:Lo50;

    iput-object p2, p0, Lj70$b;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lj70$b;->d:Z

    invoke-direct {p0}, Lj70;-><init>()V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 4

    iget-object v0, p0, Lj70$b;->b:Lo50;

    invoke-virtual {v0}, Lo50;->n()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lz00;->c()V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->y()Ld70;

    move-result-object v1

    iget-object v2, p0, Lj70$b;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ld70;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lj70$b;->b:Lo50;

    invoke-virtual {p0, v3, v2}, Lj70;->a(Lo50;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lz00;->g()V

    iget-boolean v0, p0, Lj70$b;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj70$b;->b:Lo50;

    invoke-virtual {p0, v0}, Lj70;->f(Lo50;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lz00;->g()V

    throw v1
.end method
