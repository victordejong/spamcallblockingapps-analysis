.class public final Lcom/googlecode/mp4parser/a/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/googlecode/mp4parser/e;)Lcom/googlecode/mp4parser/a/d;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/b/a/d;

    invoke-direct {v0, p0}, Lcom/b/a/d;-><init>(Lcom/googlecode/mp4parser/e;)V

    .line 50
    new-instance v1, Lcom/googlecode/mp4parser/a/d;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/a/d;-><init>()V

    .line 51
    invoke-virtual {v0}, Lcom/b/a/d;->a()Lcom/b/a/a/r;

    move-result-object v2

    const-class v3, Lcom/b/a/a/ag;

    invoke-virtual {v2, v3}, Lcom/b/a/a/r;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 52
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/b/a/d;->a()Lcom/b/a/a/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/a/a/r;->a()Lcom/b/a/a/s;

    move-result-object p0

    sget-object v0, Lcom/b/a/a/s;->g:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 1091
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object p0, p0, Lcom/b/a/a/s;->e:Lcom/googlecode/mp4parser/c/h;

    .line 1100
    iput-object p0, v1, Lcom/googlecode/mp4parser/a/d;->a:Lcom/googlecode/mp4parser/c/h;

    return-object v1

    .line 52
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/ag;

    const-string v4, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schm[0]"

    .line 53
    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/b/a/a/b;

    move-result-object v4

    check-cast v4, Lcom/b/a/a/z;

    const/4 v5, 0x0

    const-string v6, "]"

    const-string v7, "["

    if-eqz v4, :cond_2

    .line 54
    invoke-virtual {v4}, Lcom/b/a/a/z;->a()Ljava/lang/String;

    move-result-object v8

    const-string v9, "cenc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v4}, Lcom/b/a/a/z;->a()Ljava/lang/String;

    move-result-object v4

    const-string v8, "cbc1"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 55
    :cond_1
    new-instance v4, Lcom/googlecode/mp4parser/a/b;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/b/a/a/ag;->a()Lcom/b/a/a/ah;

    move-result-object v7

    invoke-virtual {v7}, Lcom/b/a/a/ah;->a()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Lcom/b/a/d;

    invoke-direct {v4, v6, v3, v5}, Lcom/googlecode/mp4parser/a/b;-><init>(Ljava/lang/String;Lcom/b/a/a/ag;[Lcom/b/a/d;)V

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/a/d;->a(Lcom/googlecode/mp4parser/a/g;)V

    goto :goto_0

    .line 57
    :cond_2
    new-instance v4, Lcom/googlecode/mp4parser/a/e;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/b/a/a/ag;->a()Lcom/b/a/a/ah;

    move-result-object v7

    invoke-virtual {v7}, Lcom/b/a/a/ah;->a()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Lcom/b/a/d;

    invoke-direct {v4, v6, v3, v5}, Lcom/googlecode/mp4parser/a/e;-><init>(Ljava/lang/String;Lcom/b/a/a/ag;[Lcom/b/a/d;)V

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/a/d;->a(Lcom/googlecode/mp4parser/a/g;)V

    goto/16 :goto_0
.end method
