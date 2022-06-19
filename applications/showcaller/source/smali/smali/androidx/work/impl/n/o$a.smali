.class Landroidx/work/impl/n/o$a;
.super Landroidx/room/b;
.source "WorkProgressDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/n/o;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b<",
        "Landroidx/work/impl/n/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Landroidx/work/impl/n/o;


# direct methods
.method constructor <init>(Landroidx/work/impl/n/o;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/n/o$a;->d:Landroidx/work/impl/n/o;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lb/r/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroidx/work/impl/n/m;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/n/o$a;->i(Lb/r/a/f;Landroidx/work/impl/n/m;)V

    return-void
.end method

.method public i(Lb/r/a/f;Landroidx/work/impl/n/m;)V
    .locals 2

    .line 1
    iget-object v0, p2, Landroidx/work/impl/n/m;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lb/r/a/d;->T(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, v1, v0}, Lb/r/a/d;->o(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p2, p2, Landroidx/work/impl/n/m;->b:Landroidx/work/d;

    invoke-static {p2}, Landroidx/work/d;->k(Landroidx/work/d;)[B

    move-result-object p2

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 5
    invoke-interface {p1, v0}, Lb/r/a/d;->T(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p1, v0, p2}, Lb/r/a/d;->J(I[B)V

    :goto_1
    return-void
.end method
