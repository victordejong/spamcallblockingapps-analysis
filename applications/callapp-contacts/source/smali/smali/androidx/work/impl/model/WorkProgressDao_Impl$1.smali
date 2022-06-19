.class Landroidx/work/impl/model/WorkProgressDao_Impl$1;
.super Landroidx/room/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkProgressDao_Impl;-><init>(Landroidx/room/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/a<",
        "Landroidx/work/impl/model/WorkProgress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/WorkProgressDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/room/h;)V
    .locals 0

    .line 31
    iput-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl$1;->this$0:Landroidx/work/impl/model/WorkProgressDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/a;-><init>(Landroidx/room/h;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/e;Landroidx/work/impl/model/WorkProgress;)V
    .locals 2

    .line 39
    iget-object v0, p2, Landroidx/work/impl/model/WorkProgress;->mWorkSpecId:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 40
    invoke-interface {p1, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p2, Landroidx/work/impl/model/WorkProgress;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    .line 45
    :goto_0
    iget-object p2, p2, Landroidx/work/impl/model/WorkProgress;->mProgress:Landroidx/work/d;

    invoke-static {p2}, Landroidx/work/d;->a(Landroidx/work/d;)[B

    move-result-object p2

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 47
    invoke-interface {p1, v0}, Landroidx/sqlite/db/e;->a(I)V

    return-void

    .line 49
    :cond_1
    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/e;->a(I[B)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/e;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Landroidx/work/impl/model/WorkProgress;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/WorkProgressDao_Impl$1;->bind(Landroidx/sqlite/db/e;Landroidx/work/impl/model/WorkProgress;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object v0
.end method
