.class public Lw7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lw7/p$a;

.field public final synthetic b:Ljava/lang/Exception;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lw7/p;


# direct methods
.method public constructor <init>(Lw7/p;Lw7/p$a;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw7/i;->d:Lw7/p;

    iput-object p2, p0, Lw7/i;->a:Lw7/p$a;

    iput-object p3, p0, Lw7/i;->b:Ljava/lang/Exception;

    iput-object p4, p0, Lw7/i;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lw7/i;->d:Lw7/p;

    iget-object v0, v0, Lw7/p;->b:Lw7/g;

    invoke-interface {v0}, Lw7/g;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lw7/i;->a:Lw7/p$a;

    iget-object v1, v1, Lw7/p$a;->j:Ln7/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context has died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ln7/h;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lw7/i;->a:Lw7/p$a;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lm7/g;->e(Z)Z

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lw7/i;->b:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lw7/i;->a:Lw7/p$a;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v0, v2, v2}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lw7/i;->a:Lw7/p$a;

    iget-object v1, p0, Lw7/i;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lm7/g;->q(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
