.class Lcom/allinone/callerid/g/a$d;
.super Ljava/lang/Object;
.source "CommentsFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/j/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/a;->z2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/allinone/callerid/g/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    iput-object p2, p0, Lcom/allinone/callerid/g/a$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 9

    const-string v0, ""

    const/16 v1, 0x8

    if-eqz p1, :cond_8

    .line 1
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 3
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_7

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    const-string v4, "comments_count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {p1, v4}, Lcom/allinone/callerid/g/a;->u2(Lcom/allinone/callerid/g/a;I)I

    const-string p1, "soft_comments"

    .line 5
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 8
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 9
    new-instance v6, Lcom/allinone/callerid/bean/CommentContent;

    invoke-direct {v6}, Lcom/allinone/callerid/bean/CommentContent;-><init>()V

    .line 10
    iget-object v7, p0, Lcom/allinone/callerid/g/a$d;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/bean/CommentContent;->setT_p(Ljava/lang/String;)V

    const-string v7, "id"

    .line 11
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/bean/CommentContent;->setCid(Ljava/lang/String;)V

    const-string v7, "tel_number"

    .line 12
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/bean/CommentContent;->setTel_number(Ljava/lang/String;)V

    const-string v7, "author"

    .line 13
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/bean/CommentContent;->setAuthor(Ljava/lang/String;)V

    const-string v7, "create_time"

    .line 14
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/bean/CommentContent;->setCreate_time(Ljava/lang/String;)V

    const-string v7, "content"

    .line 15
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/bean/CommentContent;->setContent(Ljava/lang/String;)V

    const-string v7, "audit"

    .line 16
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/bean/CommentContent;->setAudit(Ljava/lang/String;)V

    const-string v7, "inform"

    .line 17
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/bean/CommentContent;->setInform(Ljava/lang/String;)V

    .line 18
    iget-object v7, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v7}, Lcom/allinone/callerid/g/a;->a2(Lcom/allinone/callerid/g/a;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "type_label"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/allinone/callerid/bean/CommentContent;->setType_label(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v6}, Lcom/allinone/callerid/bean/CommentContent;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Lcom/allinone/callerid/bean/CommentContent;->getType_label()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    iget-object v5, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v5}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 22
    :goto_2
    iget-object v4, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v4}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 23
    iget-object v4, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v4}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_3
    if-le v4, v0, :cond_3

    .line 24
    iget-object v5, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v5}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/bean/CommentContent;

    invoke-virtual {v5}, Lcom/allinone/callerid/bean/CommentContent;->getCreate_time()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v6}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/bean/CommentContent;

    invoke-virtual {v6}, Lcom/allinone/callerid/bean/CommentContent;->getCreate_time()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 25
    iget-object v5, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v5}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v0

    const/16 v3, 0xa

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->i2(Lcom/allinone/callerid/g/a;)Lcom/allinone/callerid/b/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->g2(Lcom/allinone/callerid/g/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->x2(Lcom/allinone/callerid/g/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->j2(Lcom/allinone/callerid/g/a;)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->k2(Lcom/allinone/callerid/g/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, v3, :cond_5

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->e2(Lcom/allinone/callerid/g/a;)I

    .line 34
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge p1, v3, :cond_9

    .line 36
    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->i2(Lcom/allinone/callerid/g/a;)Lcom/allinone/callerid/b/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    goto/16 :goto_4

    .line 37
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->g2(Lcom/allinone/callerid/g/a;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->x2(Lcom/allinone/callerid/g/a;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_9

    .line 40
    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->m2(Lcom/allinone/callerid/g/a;)V

    goto/16 :goto_4

    .line 41
    :cond_7
    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->g2(Lcom/allinone/callerid/g/a;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->x2(Lcom/allinone/callerid/g/a;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_9

    .line 44
    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->m2(Lcom/allinone/callerid/g/a;)V

    goto :goto_4

    .line 45
    :cond_8
    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->g2(Lcom/allinone/callerid/g/a;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->x2(Lcom/allinone/callerid/g/a;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_9

    .line 48
    iget-object p1, p0, Lcom/allinone/callerid/g/a$d;->b:Lcom/allinone/callerid/g/a;

    invoke-static {p1}, Lcom/allinone/callerid/g/a;->m2(Lcom/allinone/callerid/g/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_9

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51fa\u9519\u5566=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "comment"

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method
