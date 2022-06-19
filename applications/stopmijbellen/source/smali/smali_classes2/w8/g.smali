.class public Lw8/g;
.super Lw8/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lw8/e<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field public c:Lv8/a;

.field public d:Lw8/j;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw8/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv8/a;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv8/a;",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lw8/e;-><init>(Ljava/lang/Class;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lw8/g;->e:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lw8/g;->c:Lv8/a;

    return-void
.end method


# virtual methods
.method public a()Lb9/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/g;->c:Lv8/a;

    instance-of v0, v0, Lw8/f;

    if-eqz v0, :cond_0

    sget-object v0, Lb9/a$a;->d:Lb9/a$a;

    goto :goto_0

    :cond_0
    sget-object v0, Lb9/a$a;->e:Lb9/a$a;

    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lv8/b;

    invoke-direct {v0}, Lv8/b;-><init>()V

    iget-object v1, p0, Lw8/g;->c:Lv8/a;

    .line 2
    invoke-interface {v1}, Lv8/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lv8/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lw8/g;->c:Lv8/a;

    instance-of v1, v1, Lw8/q;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, v0, Lv8/b;->a:Ljava/lang/StringBuilder;

    const-string v2, "FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    iget-object v1, p0, Lw8/g;->d:Lw8/j;

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lw8/j$b;

    .line 8
    iget-object v2, p0, Lw8/d;->a:Ljava/lang/Class;

    .line 9
    invoke-static {v2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->i(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lw8/j$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lw8/j$b;->a()Lw8/j;

    move-result-object v1

    iput-object v1, p0, Lw8/g;->d:Lw8/j;

    .line 10
    :cond_1
    iget-object v1, p0, Lw8/g;->d:Lw8/j;

    .line 11
    iget-object v2, v0, Lv8/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lw8/g;->c:Lv8/a;

    instance-of v1, v1, Lw8/o;

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Lw8/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    invoke-virtual {v0}, Lv8/b;->c()Lv8/b;

    .line 15
    :cond_2
    iget-object v1, p0, Lw8/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw8/h;

    .line 16
    invoke-virtual {v0}, Lw8/h;->b()Ljava/lang/String;

    const/4 v0, 0x0

    throw v0

    .line 17
    :cond_4
    invoke-virtual {v0}, Lv8/b;->c()Lv8/b;

    .line 18
    :goto_0
    invoke-virtual {v0}, Lv8/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lv8/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/g;->c:Lv8/a;

    return-object v0
.end method
