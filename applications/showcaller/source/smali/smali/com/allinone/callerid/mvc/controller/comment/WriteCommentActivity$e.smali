.class Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e;
.super Ljava/lang/Object;
.source "WriteCommentActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/g/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->x0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e;->b:J

    iput-object p5, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call_time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nis_answered:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "submitcomment"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v5, p1

    move-object v6, p2

    goto :goto_0

    :cond_1
    move-object v5, v0

    move-object v6, v5

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e;->b:J

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->f0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->g0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e;->c:Ljava/lang/String;

    new-instance v10, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e$a;

    invoke-direct {v10, p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e$a;-><init>(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$e;)V

    invoke-static/range {v2 .. v10}, Lcom/allinone/callerid/i/a/j/g;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/j/f;)V

    return-void
.end method
