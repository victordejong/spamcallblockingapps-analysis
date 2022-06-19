.class Lcom/callerid/block/h/a/d/h$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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
.field private a:Lcom/callerid/block/h/a/d/e;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(IILjava/util/List;Lcom/callerid/block/h/a/d/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;",
            "Lcom/callerid/block/h/a/d/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/h/a/d/h$a;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/callerid/block/h/a/d/h$a;->a:Lcom/callerid/block/h/a/d/e;

    iput-object p3, p0, Lcom/callerid/block/h/a/d/h$a;->b:Ljava/util/List;

    iput p1, p0, Lcom/callerid/block/h/a/d/h$a;->d:I

    iput p2, p0, Lcom/callerid/block/h/a/d/h$a;->e:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string p1, ""

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/h/a/d/h$a;->b:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/callerid/block/h/a/d/h$a;->d:I

    iget v1, p0, Lcom/callerid/block/h/a/d/h$a;->e:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/callerid/block/h/a/d/h$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "searchList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/callerid/block/h/a/d/h$a;->d:I

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/callerid/block/h/a/d/h$a;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callerid/block/search/CallLogBean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->N()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->O()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->L()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->x()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf731400

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/callerid/block/h/a/d/h$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Lcom/callerid/block/search/CallLogBean;->Z(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/callerid/block/h/a/d/h$a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/callerid/block/h/a/d/h$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/callerid/block/h/a/d/h$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_2
    if-le v1, v0, :cond_4

    iget-object v3, p0, Lcom/callerid/block/h/a/d/h$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/callerid/block/h/a/d/h$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/callerid/block/h/a/d/h$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/callerid/block/h/a/d/h$a;->a:Lcom/callerid/block/h/a/d/e;

    iget-object v0, p0, Lcom/callerid/block/h/a/d/h$a;->c:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/callerid/block/h/a/d/e;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/d/h$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/d/h$a;->b(Ljava/lang/String;)V

    return-void
.end method
