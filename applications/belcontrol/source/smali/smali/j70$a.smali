.class public final Lj70$a;
.super Lj70;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj70;->c(Ljava/lang/String;Lo50;)Lj70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lo50;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo50;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lj70$a;->b:Lo50;

    iput-object p2, p0, Lj70$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Lj70;-><init>()V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 4

    iget-object v0, p0, Lj70$a;->b:Lo50;

    invoke-virtual {v0}, Lo50;->n()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lz00;->c()V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->y()Ld70;

    move-result-object v1

    iget-object v2, p0, Lj70$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ld70;->g(Ljava/lang/String;)Ljava/util/List;

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

    iget-object v3, p0, Lj70$a;->b:Lo50;

    invoke-virtual {p0, v3, v2}, Lj70;->a(Lo50;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lz00;->g()V

    iget-object v0, p0, Lj70$a;->b:Lo50;

    invoke-virtual {p0, v0}, Lj70;->f(Lo50;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lz00;->g()V

    throw v1
.end method
