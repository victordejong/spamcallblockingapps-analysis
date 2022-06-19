.class Lorg/mistergroup/shouldianswer/model/q$1;
.super Landroidx/room/c;
.source "CheckedCallDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/model/q;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lorg/mistergroup/shouldianswer/model/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/model/q;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/q;Landroidx/room/j;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/q$1;->a:Lorg/mistergroup/shouldianswer/model/q;

    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `CheckedCall` (`id`,`number`,`numberNormalized`,`country`,`rating`,`callDuration`,`callType`,`blockReason`,`time`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic a(Landroidx/i/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lorg/mistergroup/shouldianswer/model/o;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/model/q$1;->a(Landroidx/i/a/f;Lorg/mistergroup/shouldianswer/model/o;)V

    return-void
.end method

.method public a(Landroidx/i/a/f;Lorg/mistergroup/shouldianswer/model/o;)V
    .locals 4

    .line 41
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/o;->a()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/i/a/f;->a(IJ)V

    .line 42
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/o;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 43
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 47
    :goto_0
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/o;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 48
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 52
    :goto_1
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/o;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 53
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/o;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 58
    :goto_2
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/q$1;->a:Lorg/mistergroup/shouldianswer/model/q;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/model/q;->a(Lorg/mistergroup/shouldianswer/model/q;)Lorg/mistergroup/shouldianswer/model/b;

    move-result-object v0

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/o;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/b;->a(Lorg/mistergroup/shouldianswer/model/ag;)I

    move-result v0

    const/4 v1, 0x5

    int-to-long v2, v0

    .line 59
    invoke-interface {p1, v1, v2, v3}, Landroidx/i/a/f;->a(IJ)V

    const/4 v0, 0x6

    .line 60
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/o;->f()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/i/a/f;->a(IJ)V

    .line 62
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/q$1;->a:Lorg/mistergroup/shouldianswer/model/q;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/model/q;->a(Lorg/mistergroup/shouldianswer/model/q;)Lorg/mistergroup/shouldianswer/model/b;

    move-result-object v0

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/o;->g()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/b;->a(Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v0

    const/4 v1, 0x7

    int-to-long v2, v0

    .line 63
    invoke-interface {p1, v1, v2, v3}, Landroidx/i/a/f;->a(IJ)V

    .line 65
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/q$1;->a:Lorg/mistergroup/shouldianswer/model/q;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/model/q;->a(Lorg/mistergroup/shouldianswer/model/q;)Lorg/mistergroup/shouldianswer/model/b;

    move-result-object v0

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/o;->h()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/b;->a(Lorg/mistergroup/shouldianswer/model/h;)I

    move-result v0

    const/16 v1, 0x8

    int-to-long v2, v0

    .line 66
    invoke-interface {p1, v1, v2, v3}, Landroidx/i/a/f;->a(IJ)V

    .line 67
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/o;->i()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_3

    .line 68
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_3

    .line 70
    :cond_3
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/o;->i()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/i/a/f;->a(IJ)V

    :goto_3
    return-void
.end method
