.class Landroidx/work/impl/model/PreferenceDao_Impl$1;
.super Landroidx/room/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/PreferenceDao_Impl;-><init>(Landroidx/room/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/a<",
        "Landroidx/work/impl/model/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/PreferenceDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/PreferenceDao_Impl;Landroidx/room/h;)V
    .locals 0

    .line 25
    iput-object p1, p0, Landroidx/work/impl/model/PreferenceDao_Impl$1;->this$0:Landroidx/work/impl/model/PreferenceDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/a;-><init>(Landroidx/room/h;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/e;Landroidx/work/impl/model/Preference;)V
    .locals 4

    .line 33
    iget-object v0, p2, Landroidx/work/impl/model/Preference;->mKey:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 34
    invoke-interface {p1, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p2, Landroidx/work/impl/model/Preference;->mKey:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    .line 38
    :goto_0
    iget-object v0, p2, Landroidx/work/impl/model/Preference;->mValue:Ljava/lang/Long;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 39
    invoke-interface {p1, v1}, Landroidx/sqlite/db/e;->a(I)V

    return-void

    .line 41
    :cond_1
    iget-object p2, p2, Landroidx/work/impl/model/Preference;->mValue:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/e;->a(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/e;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Landroidx/work/impl/model/Preference;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/PreferenceDao_Impl$1;->bind(Landroidx/sqlite/db/e;Landroidx/work/impl/model/Preference;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object v0
.end method
