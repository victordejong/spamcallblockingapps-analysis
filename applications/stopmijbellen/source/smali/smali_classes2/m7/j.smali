.class public abstract Lm7/j;
.super Lm7/g;
.source "SourceFile"

# interfaces
.implements Lm7/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/g<",
        "TT;>;",
        "Lm7/d<",
        "TF;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm7/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TF;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lm7/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    move-object p2, p0

    check-cast p2, Lw7/p$a;

    .line 3
    iget-object v1, p2, Lw7/p$a;->m:Lw7/p;

    invoke-static {v1, p2, p1, v0}, Lw7/p;->g(Lw7/p;Lw7/p$a;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lm7/j;->u(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    move-object p2, p0

    check-cast p2, Lw7/p$a;

    .line 6
    iget-object v1, p2, Lw7/p$a;->m:Lw7/p;

    invoke-static {v1, p2, p1, v0}, Lw7/p;->g(Lw7/p;Lw7/p$a;Ljava/lang/Exception;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public abstract u(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
