.class public final synthetic Lx2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx2/c;

.field public final synthetic b:Lu2/i;

.field public final synthetic c:Lr2/h;

.field public final synthetic d:Lu2/f;


# direct methods
.method public synthetic constructor <init>(Lx2/c;Lu2/i;Lr2/h;Lu2/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/b;->a:Lx2/c;

    iput-object p2, p0, Lx2/b;->b:Lu2/i;

    iput-object p3, p0, Lx2/b;->c:Lr2/h;

    iput-object p4, p0, Lx2/b;->d:Lu2/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lx2/b;->a:Lx2/c;

    iget-object v1, p0, Lx2/b;->b:Lu2/i;

    iget-object v2, p0, Lx2/b;->c:Lr2/h;

    iget-object v3, p0, Lx2/b;->d:Lu2/f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    :try_start_0
    iget-object v4, v0, Lx2/c;->c:Lv2/e;

    .line 2
    invoke-virtual {v1}, Lu2/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lv2/e;->a(Ljava/lang/String;)Lv2/k;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "Transport backend \'%s\' is not registered"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v1}, Lu2/i;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 4
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v1, Lx2/c;->f:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lr2/h;->d(Ljava/lang/Exception;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v4, v3}, Lv2/k;->b(Lu2/f;)Lu2/f;

    move-result-object v3

    .line 8
    iget-object v4, v0, Lx2/c;->e:La3/a;

    new-instance v5, Lx2/a;

    invoke-direct {v5, v0, v1, v3}, Lx2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, La3/a;->d(La3/a$a;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 9
    invoke-interface {v2, v0}, Lr2/h;->d(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Lx2/c;->f:Ljava/util/logging/Logger;

    const-string v3, "Error scheduling event "

    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 11
    invoke-interface {v2, v0}, Lr2/h;->d(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
