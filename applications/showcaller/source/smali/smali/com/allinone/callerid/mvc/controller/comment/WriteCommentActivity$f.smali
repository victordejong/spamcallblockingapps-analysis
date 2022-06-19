.class Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f;
.super Ljava/lang/Object;
.source "WriteCommentActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/j/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->u0(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f;->c:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "ok"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "comment"

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.allinone.callerid.UPDATE_COMMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f;->c:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f;->c:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->g0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f$a;-><init>(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$f;)V

    invoke-static {p1, v0, v1, v2}, Lcom/allinone/callerid/i/a/b0/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/a0/c;)V

    :cond_1
    return-void
.end method
