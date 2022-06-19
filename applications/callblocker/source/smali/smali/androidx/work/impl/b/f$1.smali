.class Landroidx/work/impl/b/f$1;
.super Landroidx/room/b;
.source "PreferenceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/b/f;-><init>(Landroidx/room/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b",
        "<",
        "Landroidx/work/impl/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/b/f;


# direct methods
.method constructor <init>(Landroidx/work/impl/b/f;Landroidx/room/i;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Landroidx/work/impl/b/f$1;->a:Landroidx/work/impl/b/f;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/i;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object v0
.end method

.method public a(Landroidx/i/a/f;Landroidx/work/impl/b/d;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 33
    iget-object v0, p2, Landroidx/work/impl/b/d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 34
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    .line 38
    :goto_0
    iget-object v0, p2, Landroidx/work/impl/b/d;->b:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 39
    invoke-interface {p1, v2}, Landroidx/i/a/f;->a(I)V

    .line 43
    :goto_1
    return-void

    .line 36
    :cond_0
    iget-object v0, p2, Landroidx/work/impl/b/d;->a:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p2, Landroidx/work/impl/b/d;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v2, v0, v1}, Landroidx/i/a/f;->a(IJ)V

    goto :goto_1
.end method

.method public bridge synthetic a(Landroidx/i/a/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p2, Landroidx/work/impl/b/d;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/b/f$1;->a(Landroidx/i/a/f;Landroidx/work/impl/b/d;)V

    return-void
.end method
