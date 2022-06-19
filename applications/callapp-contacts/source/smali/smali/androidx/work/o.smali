.class public final Landroidx/work/o;
.super Landroidx/work/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/o$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/work/o$a;)V
    .locals 2

    .line 70
    iget-object v0, p1, Landroidx/work/o$a;->b:Ljava/util/UUID;

    iget-object v1, p1, Landroidx/work/o$a;->c:Landroidx/work/impl/model/WorkSpec;

    iget-object p1, p1, Landroidx/work/o$a;->d:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Landroidx/work/v;-><init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V

    return-void
.end method
