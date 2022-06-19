.class Lorg/mistergroup/shouldianswer/model/v$1;
.super Landroidx/room/c;
.source "NumberCaptionDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/model/v;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lorg/mistergroup/shouldianswer/model/NumberCaption;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/model/v;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/v;Landroidx/room/j;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/v$1;->a:Lorg/mistergroup/shouldianswer/model/v;

    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `NumberCaption` (`id`,`number`,`numberNormalized`,`caption`,`country`,`uploaded`) VALUES (nullif(?, 0),?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic a(Landroidx/i/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberCaption;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/model/v$1;->a(Landroidx/i/a/f;Lorg/mistergroup/shouldianswer/model/NumberCaption;)V

    return-void
.end method

.method public a(Landroidx/i/a/f;Lorg/mistergroup/shouldianswer/model/NumberCaption;)V
    .locals 3

    .line 42
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->a()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/i/a/f;->a(IJ)V

    .line 43
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 44
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 48
    :goto_0
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 49
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 53
    :goto_1
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 54
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 58
    :goto_2
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 59
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_3

    .line 61
    :cond_3
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 64
    :goto_3
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->f()Z

    move-result p2

    const/4 v0, 0x6

    int-to-long v1, p2

    .line 65
    invoke-interface {p1, v0, v1, v2}, Landroidx/i/a/f;->a(IJ)V

    return-void
.end method
