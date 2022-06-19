.class Lorg/mistergroup/shouldianswer/model/z$1;
.super Landroidx/room/c;
.source "NumberReportDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/model/z;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lorg/mistergroup/shouldianswer/model/NumberReport;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/model/z;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/z;Landroidx/room/j;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/z$1;->a:Lorg/mistergroup/shouldianswer/model/z;

    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `NumberReport` (`id`,`uuid`,`number`,`numberNormalized`,`rating`,`category`,`title`,`comment`,`country`,`time`,`uploaded`,`unconfirmed`,`deleted`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic a(Landroidx/i/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberReport;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/model/z$1;->a(Landroidx/i/a/f;Lorg/mistergroup/shouldianswer/model/NumberReport;)V

    return-void
.end method

.method public a(Landroidx/i/a/f;Lorg/mistergroup/shouldianswer/model/NumberReport;)V
    .locals 4

    .line 43
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/i/a/f;->a(IJ)V

    .line 44
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 45
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 49
    :goto_0
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 50
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 54
    :goto_1
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 55
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 60
    :goto_2
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/z$1;->a:Lorg/mistergroup/shouldianswer/model/z;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/model/z;->a(Lorg/mistergroup/shouldianswer/model/z;)Lorg/mistergroup/shouldianswer/model/b;

    move-result-object v0

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/b;->a(Lorg/mistergroup/shouldianswer/model/ag;)I

    move-result v0

    const/4 v1, 0x5

    int-to-long v2, v0

    .line 61
    invoke-interface {p1, v1, v2, v3}, Landroidx/i/a/f;->a(IJ)V

    .line 63
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/z$1;->a:Lorg/mistergroup/shouldianswer/model/z;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/model/z;->a(Lorg/mistergroup/shouldianswer/model/z;)Lorg/mistergroup/shouldianswer/model/b;

    move-result-object v0

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/b;->a(Lorg/mistergroup/shouldianswer/model/m;)I

    move-result v0

    const/4 v1, 0x6

    int-to-long v2, v0

    .line 64
    invoke-interface {p1, v1, v2, v3}, Landroidx/i/a/f;->a(IJ)V

    .line 65
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_3

    .line 66
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_3

    .line 68
    :cond_3
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 70
    :goto_3
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 71
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_4

    .line 73
    :cond_4
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 75
    :goto_4
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->i()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_5

    .line 76
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_5

    .line 78
    :cond_5
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 81
    :goto_5
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/z$1;->a:Lorg/mistergroup/shouldianswer/model/z;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/model/z;->a(Lorg/mistergroup/shouldianswer/model/z;)Lorg/mistergroup/shouldianswer/model/b;

    move-result-object v0

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->j()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/b;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_6

    .line 83
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/i/a/f;->a(IJ)V

    .line 88
    :goto_6
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->k()Z

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 89
    invoke-interface {p1, v1, v2, v3}, Landroidx/i/a/f;->a(IJ)V

    .line 91
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->l()Z

    move-result v0

    const/16 v1, 0xc

    int-to-long v2, v0

    .line 92
    invoke-interface {p1, v1, v2, v3}, Landroidx/i/a/f;->a(IJ)V

    .line 94
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->m()Z

    move-result p2

    const/16 v0, 0xd

    int-to-long v1, p2

    .line 95
    invoke-interface {p1, v0, v1, v2}, Landroidx/i/a/f;->a(IJ)V

    return-void
.end method
