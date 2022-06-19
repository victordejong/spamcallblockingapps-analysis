.class Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$e$a;
.super Ljava/lang/Object;
.source "SubmitCommentActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/a0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$e;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$e$a;->a:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "ok"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$e$a;->a:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$e;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$e;->c:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->J0(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
