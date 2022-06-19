.class public final Landroidx/work/impl/a/a/a;
.super Landroidx/work/impl/a/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/a/a/c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V
    .locals 0

    .line 31
    invoke-static {p1, p2}, Landroidx/work/impl/a/b/g;->a(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)Landroidx/work/impl/a/b/g;

    move-result-object p1

    .line 1076
    iget-object p1, p1, Landroidx/work/impl/a/b/g;->a:Landroidx/work/impl/a/b/a;

    .line 31
    invoke-direct {p0, p1}, Landroidx/work/impl/a/a/c;-><init>(Landroidx/work/impl/a/b/d;)V

    return-void
.end method


# virtual methods
.method final a(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 0

    .line 36
    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 1121
    iget-boolean p1, p1, Landroidx/work/b;->c:Z

    return p1
.end method

.method final synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    .line 2041
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
