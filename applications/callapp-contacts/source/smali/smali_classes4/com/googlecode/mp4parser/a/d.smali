.class public final Lcom/googlecode/mp4parser/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/googlecode/mp4parser/c/h;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/googlecode/mp4parser/c/h;->j:Lcom/googlecode/mp4parser/c/h;

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/d;->a:Lcom/googlecode/mp4parser/c/h;

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/a/g;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/googlecode/mp4parser/c/h;->j:Lcom/googlecode/mp4parser/c/h;

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/d;->a:Lcom/googlecode/mp4parser/c/h;

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 10

    .line 6039
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v0

    .line 6054
    iget-wide v0, v0, Lcom/googlecode/mp4parser/a/h;->b:J

    .line 7039
    iget-object v2, p0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    .line 89
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/a/g;

    .line 90
    invoke-interface {v3}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v3

    .line 7054
    iget-wide v3, v3, Lcom/googlecode/mp4parser/a/h;->b:J

    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_1

    move-wide v0, v3

    goto :goto_0

    .line 7107
    :cond_1
    rem-long/2addr v3, v0

    move-wide v8, v0

    move-wide v0, v3

    move-wide v3, v8

    goto :goto_1
.end method

.method public final a(Lcom/googlecode/mp4parser/a/g;)V
    .locals 8

    .line 49
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v0

    .line 1094
    iget-wide v0, v0, Lcom/googlecode/mp4parser/a/h;->i:J

    .line 2078
    iget-object v2, p0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/a/g;

    .line 2079
    invoke-interface {v3}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v4

    .line 2094
    iget-wide v4, v4, Lcom/googlecode/mp4parser/a/h;->i:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_4

    .line 51
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 3070
    iget-object v3, p0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 4098
    iput-wide v1, v0, Lcom/googlecode/mp4parser/a/h;->i:J

    goto :goto_2

    .line 3070
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/a/g;

    .line 3071
    invoke-interface {v4}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v5

    .line 3094
    iget-wide v5, v5, Lcom/googlecode/mp4parser/a/h;->i:J

    cmp-long v7, v1, v5

    if-gez v7, :cond_2

    .line 3071
    invoke-interface {v4}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v1

    .line 4094
    iget-wide v1, v1, Lcom/googlecode/mp4parser/a/h;->i:J

    goto :goto_1

    .line 53
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 60
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "Movie{ "

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/a/g;

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "track_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v1

    .line 5094
    iget-wide v4, v1, Lcom/googlecode/mp4parser/a/h;->i:J

    .line 61
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/googlecode/mp4parser/a/g;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
