.class public final Landroidx/work/impl/a/a/g;
.super Landroidx/work/impl/a/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/a/a/c<",
        "Landroidx/work/impl/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V
    .locals 0

    .line 37
    invoke-static {p1, p2}, Landroidx/work/impl/a/b/g;->a(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)Landroidx/work/impl/a/b/g;

    move-result-object p1

    .line 1096
    iget-object p1, p1, Landroidx/work/impl/a/b/g;->c:Landroidx/work/impl/a/b/e;

    .line 37
    invoke-direct {p0, p1}, Landroidx/work/impl/a/a/c;-><init>(Landroidx/work/impl/a/b/d;)V

    return-void
.end method


# virtual methods
.method final a(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 1

    .line 42
    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 1105
    iget-object p1, p1, Landroidx/work/b;->b:Landroidx/work/l;

    .line 42
    sget-object v0, Landroidx/work/l;->UNMETERED:Landroidx/work/l;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final bridge synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .line 33
    check-cast p1, Landroidx/work/impl/a/b;

    .line 3045
    iget-boolean v0, p1, Landroidx/work/impl/a/b;->a:Z

    if-eqz v0, :cond_1

    .line 3063
    iget-boolean p1, p1, Landroidx/work/impl/a/b;->c:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
