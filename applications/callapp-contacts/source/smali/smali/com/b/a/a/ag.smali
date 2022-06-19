.class public Lcom/b/a/a/ag;
.super Lcom/googlecode/mp4parser/b;
.source "SourceFile"


# instance fields
.field private a:Lcom/b/a/a/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "trak"

    .line 36
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/a/ah;
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/b/a/a/ag;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b;

    .line 41
    instance-of v2, v1, Lcom/b/a/a/ah;

    if-eqz v2, :cond_0

    .line 42
    check-cast v1, Lcom/b/a/a/ah;

    return-object v1
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/a/b;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-super {p0, p1}, Lcom/googlecode/mp4parser/b;->a(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/b/a/a/ag;->a:Lcom/b/a/a/x;

    return-void
.end method

.method public final c()Lcom/b/a/a/x;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/b/a/a/ag;->a:Lcom/b/a/a/x;

    if-eqz v0, :cond_0

    return-object v0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/b/a/a/ag;->d()Lcom/b/a/a/o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Lcom/b/a/a/o;->a()Lcom/b/a/a/q;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/b/a/a/q;->a()Lcom/b/a/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/ag;->a:Lcom/b/a/a/x;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lcom/b/a/a/o;
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/b/a/a/ag;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b;

    .line 72
    instance-of v2, v1, Lcom/b/a/a/o;

    if-eqz v2, :cond_0

    .line 73
    check-cast v1, Lcom/b/a/a/o;

    return-object v1
.end method
