.class Landroidx/work/impl/b/i$1;
.super Landroidx/room/b;
.source "SystemIdInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/b/i;-><init>(Landroidx/room/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b",
        "<",
        "Landroidx/work/impl/b/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/b/i;


# direct methods
.method constructor <init>(Landroidx/work/impl/b/i;Landroidx/room/i;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Landroidx/work/impl/b/i$1;->a:Landroidx/work/impl/b/i;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/i;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)"

    return-object v0
.end method

.method public a(Landroidx/i/a/f;Landroidx/work/impl/b/g;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 33
    iget-object v0, p2, Landroidx/work/impl/b/g;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 34
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    .line 38
    :goto_0
    const/4 v0, 0x2

    iget v1, p2, Landroidx/work/impl/b/g;->b:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroidx/i/a/f;->a(IJ)V

    .line 39
    return-void

    .line 36
    :cond_0
    iget-object v0, p2, Landroidx/work/impl/b/g;->a:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Landroidx/i/a/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p2, Landroidx/work/impl/b/g;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/b/i$1;->a(Landroidx/i/a/f;Landroidx/work/impl/b/g;)V

    return-void
.end method
