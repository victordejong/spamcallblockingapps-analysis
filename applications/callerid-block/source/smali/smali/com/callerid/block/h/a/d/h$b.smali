.class Lcom/callerid/block/h/a/d/h$b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callerid/block/h/a/d/i;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:J


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/callerid/block/h/a/d/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;",
            "Lcom/callerid/block/h/a/d/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/h/a/d/h$b;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/callerid/block/h/a/d/h$b;->a:Lcom/callerid/block/h/a/d/i;

    iput-object p1, p0, Lcom/callerid/block/h/a/d/h$b;->b:Ljava/util/List;

    iget-object p2, p0, Lcom/callerid/block/h/a/d/h$b;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string p1, ""

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/h/a/d/h$b;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->d()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/callerid/block/h/a/d/h$b;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/callerid/block/h/a/d/h$b;->b:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/callerid/block/h/a/d/h$b;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-wide/32 v4, 0xf731400

    const/16 v6, 0x14

    const/4 v7, 0x1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/callerid/block/h/a/d/h$b;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callerid/block/search/CallLogBean;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->N()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->O()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->L()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->x()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v10, v8, v4

    if-lez v10, :cond_0

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->d()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/callerid/block/h/a/d/h$b;->e:J

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->d()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-wide/32 v8, 0x5265c00

    div-long/2addr v4, v8

    const-wide/16 v8, 0x7

    cmp-long v10, v4, v8

    if-gez v10, :cond_0

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v6, :cond_0

    invoke-virtual {v3, v7}, Lcom/callerid/block/search/CallLogBean;->Z(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/callerid/block/util/w;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "searchList"

    if-eqz v2, :cond_2

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u901a\u8bdd\u8bb0\u5f55\u6570\u91cf:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/callerid/block/h/a/d/h$b;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/callerid/block/util/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "7\u5929\u5185\u53ef\u67e5\u8be2\u6570\u91cf:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/callerid/block/util/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v6, :cond_9

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "7\u5929\u5185\u53ef\u67e5\u8be2\u91cf\u5c0f\u4e8e20:"

    invoke-static {v3, v0}, Lcom/callerid/block/util/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/callerid/block/h/a/d/h$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_6

    iget-object v0, p0, Lcom/callerid/block/h/a/d/h$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/search/CallLogBean;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->N()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->O()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->L()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->x()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v6, v8, v4

    if-lez v6, :cond_4

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v7}, Lcom/callerid/block/search/CallLogBean;->Z(Z)V

    goto :goto_1

    :cond_5
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u603b\u6570\u5c0f\u4e8e20:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v3, v0}, Lcom/callerid/block/util/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/callerid/block/h/a/d/h$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/search/CallLogBean;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->N()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->O()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->L()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->x()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v10, v8, v4

    if-lez v10, :cond_7

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v6, :cond_8

    iget-object v8, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v7}, Lcom/callerid/block/search/CallLogBean;->Z(Z)V

    goto :goto_3

    :cond_8
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u603b\u6570\u5927\u4e8e20:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    const/16 v4, 0x64

    if-ge v2, v4, :cond_a

    iget-object v2, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "7\u5929\u5185\u53ef\u67e5\u8be2\u91cf\u5927\u4e8e20\u5c0f\u4e8e100:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_a
    iget-object v2, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-interface {v0, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "7\u5929\u5185\u53ef\u67e5\u8be2\u91cf\u5927\u4e8e100:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_e

    :goto_5
    iget-object v0, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    iget-object v0, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    :goto_6
    if-le v0, v1, :cond_d

    iget-object v2, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53bb\u91cd\u540e\u7684\u53ef\u67e5\u8be2\u91cf\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/callerid/block/util/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_7
    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/callerid/block/h/a/d/h$b;->a:Lcom/callerid/block/h/a/d/i;

    iget-object v0, p0, Lcom/callerid/block/h/a/d/h$b;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/callerid/block/h/a/d/h$b;->d:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/callerid/block/h/a/d/i;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/d/h$b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/d/h$b;->b(Ljava/lang/String;)V

    return-void
.end method
