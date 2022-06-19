.class Landroidx/work/impl/b/c$1;
.super Landroidx/room/b;
.source "DependencyDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/b/c;-><init>(Landroidx/room/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b",
        "<",
        "Landroidx/work/impl/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/b/c;


# direct methods
.method constructor <init>(Landroidx/work/impl/b/c;Landroidx/room/i;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Landroidx/work/impl/b/c$1;->a:Landroidx/work/impl/b/c;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/i;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object v0
.end method

.method public a(Landroidx/i/a/f;Landroidx/work/impl/b/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 31
    iget-object v0, p2, Landroidx/work/impl/b/a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 32
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    .line 36
    :goto_0
    iget-object v0, p2, Landroidx/work/impl/b/a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 37
    invoke-interface {p1, v2}, Landroidx/i/a/f;->a(I)V

    .line 41
    :goto_1
    return-void

    .line 34
    :cond_0
    iget-object v0, p2, Landroidx/work/impl/b/a;->a:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p2, Landroidx/work/impl/b/a;->b:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic a(Landroidx/i/a/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p2, Landroidx/work/impl/b/a;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/b/c$1;->a(Landroidx/i/a/f;Landroidx/work/impl/b/a;)V

    return-void
.end method
