.class Landroidx/work/impl/l/o$a;
.super Landroidx/room/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/l/o;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b<",
        "Landroidx/work/impl/l/m;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/work/impl/l/o;Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkTag`(`tag`,`work_spec_id`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Ld/r/a/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroidx/work/impl/l/m;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/l/o$a;->i(Ld/r/a/f;Landroidx/work/impl/l/m;)V

    return-void
.end method

.method public i(Ld/r/a/f;Landroidx/work/impl/l/m;)V
    .locals 2

    iget-object v0, p2, Landroidx/work/impl/l/m;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Ld/r/a/d;->w(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, v0}, Ld/r/a/d;->o(ILjava/lang/String;)V

    :goto_0
    iget-object p2, p2, Landroidx/work/impl/l/m;->b:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p2, :cond_1

    invoke-interface {p1, v0}, Ld/r/a/d;->w(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p2}, Ld/r/a/d;->o(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
