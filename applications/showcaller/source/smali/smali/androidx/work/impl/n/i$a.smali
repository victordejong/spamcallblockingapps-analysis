.class Landroidx/work/impl/n/i$a;
.super Landroidx/room/b;
.source "SystemIdInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/n/i;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b<",
        "Landroidx/work/impl/n/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Landroidx/work/impl/n/i;


# direct methods
.method constructor <init>(Landroidx/work/impl/n/i;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/n/i$a;->d:Landroidx/work/impl/n/i;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lb/r/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroidx/work/impl/n/g;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/n/i$a;->i(Lb/r/a/f;Landroidx/work/impl/n/g;)V

    return-void
.end method

.method public i(Lb/r/a/f;Landroidx/work/impl/n/g;)V
    .locals 3

    .line 1
    iget-object v0, p2, Landroidx/work/impl/n/g;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lb/r/a/d;->T(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, v1, v0}, Lb/r/a/d;->o(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 4
    iget p2, p2, Landroidx/work/impl/n/g;->b:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lb/r/a/d;->F(IJ)V

    return-void
.end method
