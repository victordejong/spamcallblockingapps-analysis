.class public final Landroidx/work/impl/a/a/d;
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

    .line 41
    invoke-static {p1, p2}, Landroidx/work/impl/a/b/g;->a(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)Landroidx/work/impl/a/b/g;

    move-result-object p1

    .line 1096
    iget-object p1, p1, Landroidx/work/impl/a/b/g;->c:Landroidx/work/impl/a/b/e;

    .line 41
    invoke-direct {p0, p1}, Landroidx/work/impl/a/a/c;-><init>(Landroidx/work/impl/a/b/d;)V

    return-void
.end method


# virtual methods
.method final a(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 1

    .line 46
    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 1105
    iget-object p1, p1, Landroidx/work/b;->b:Landroidx/work/l;

    .line 46
    sget-object v0, Landroidx/work/l;->CONNECTED:Landroidx/work/l;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final bridge synthetic b(Ljava/lang/Object;)Z
    .locals 4

    .line 39
    check-cast p1, Landroidx/work/impl/a/b;

    .line 2051
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    .line 3045
    iget-boolean v0, p1, Landroidx/work/impl/a/b;->a:Z

    if-eqz v0, :cond_1

    .line 3054
    iget-boolean p1, p1, Landroidx/work/impl/a/b;->b:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    .line 4045
    :cond_2
    iget-boolean p1, p1, Landroidx/work/impl/a/b;->a:Z

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v2
.end method
