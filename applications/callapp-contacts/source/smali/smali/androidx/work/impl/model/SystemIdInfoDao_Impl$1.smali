.class Landroidx/work/impl/model/SystemIdInfoDao_Impl$1;
.super Landroidx/room/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/SystemIdInfoDao_Impl;-><init>(Landroidx/room/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/a<",
        "Landroidx/work/impl/model/SystemIdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/SystemIdInfoDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/SystemIdInfoDao_Impl;Landroidx/room/h;)V
    .locals 0

    .line 27
    iput-object p1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl$1;->this$0:Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/a;-><init>(Landroidx/room/h;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/e;Landroidx/work/impl/model/SystemIdInfo;)V
    .locals 3

    .line 35
    iget-object v0, p2, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 36
    invoke-interface {p1, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p2, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 40
    iget p2, p2, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/e;->a(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/e;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Landroidx/work/impl/model/SystemIdInfo;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/SystemIdInfoDao_Impl$1;->bind(Landroidx/sqlite/db/e;Landroidx/work/impl/model/SystemIdInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)"

    return-object v0
.end method
