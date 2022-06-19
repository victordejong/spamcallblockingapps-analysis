.class Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d$a;
.super Ljava/lang/Object;
.source "SubmitCommentActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/j/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d$a;->a:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    :try_start_0
    const-string v0, ""

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "unknow_submit_comment_success"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d$a;->a:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->d0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "unknow_submit_comment_success_isnormal"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d$a;->a:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$d;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->f0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "unknow_submit_comment_success_isspam"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "unknow_submit_comment_fail"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
