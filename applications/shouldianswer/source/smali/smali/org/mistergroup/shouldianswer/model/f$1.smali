.class Lorg/mistergroup/shouldianswer/model/f$1;
.super Landroidx/room/c;
.source "BlockExceptionDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/model/f;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lorg/mistergroup/shouldianswer/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/model/f;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/f;Landroidx/room/j;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/f$1;->a:Lorg/mistergroup/shouldianswer/model/f;

    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `BlockException` (`id`,`number`,`numberNormalized`,`country`,`block`,`masked`) VALUES (nullif(?, 0),?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic a(Landroidx/i/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lorg/mistergroup/shouldianswer/model/d;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/model/f$1;->a(Landroidx/i/a/f;Lorg/mistergroup/shouldianswer/model/d;)V

    return-void
.end method

.method public a(Landroidx/i/a/f;Lorg/mistergroup/shouldianswer/model/d;)V
    .locals 4

    .line 38
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/d;->a()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/i/a/f;->a(IJ)V

    .line 39
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/d;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 40
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 44
    :goto_0
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/d;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 45
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 49
    :goto_1
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/d;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 50
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 55
    :goto_2
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/d;->e()Z

    move-result v0

    const/4 v1, 0x5

    int-to-long v2, v0

    .line 56
    invoke-interface {p1, v1, v2, v3}, Landroidx/i/a/f;->a(IJ)V

    .line 58
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/d;->f()Z

    move-result p2

    const/4 v0, 0x6

    int-to-long v1, p2

    .line 59
    invoke-interface {p1, v0, v1, v2}, Landroidx/i/a/f;->a(IJ)V

    return-void
.end method
