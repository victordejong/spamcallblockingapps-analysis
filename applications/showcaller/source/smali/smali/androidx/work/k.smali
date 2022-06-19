.class public final Landroidx/work/k;
.super Landroidx/work/r;
.source "OneTimeWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/k$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/work/k$a;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/work/r$a;->b:Ljava/util/UUID;

    iget-object v1, p1, Landroidx/work/r$a;->c:Landroidx/work/impl/n/p;

    iget-object p1, p1, Landroidx/work/r$a;->d:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Landroidx/work/r;-><init>(Ljava/util/UUID;Landroidx/work/impl/n/p;Ljava/util/Set;)V

    return-void
.end method

.method public static d(Ljava/lang/Class;)Landroidx/work/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)",
            "Landroidx/work/k;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/k$a;

    invoke-direct {v0, p0}, Landroidx/work/k$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroidx/work/r$a;->b()Landroidx/work/r;

    move-result-object p0

    check-cast p0, Landroidx/work/k;

    return-object p0
.end method
