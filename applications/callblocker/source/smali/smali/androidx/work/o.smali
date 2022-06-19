.class public final Landroidx/work/o;
.super Landroidx/work/u;
.source "PeriodicWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/o$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/work/o$a;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p1, Landroidx/work/o$a;->b:Ljava/util/UUID;

    iget-object v1, p1, Landroidx/work/o$a;->c:Landroidx/work/impl/b/p;

    iget-object v2, p1, Landroidx/work/o$a;->d:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Landroidx/work/u;-><init>(Ljava/util/UUID;Landroidx/work/impl/b/p;Ljava/util/Set;)V

    .line 71
    return-void
.end method
