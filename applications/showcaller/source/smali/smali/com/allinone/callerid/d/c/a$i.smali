.class Lcom/allinone/callerid/d/c/a$i;
.super Ljava/lang/Object;
.source "IncomingCallScreen.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/a0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/c/a;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/allinone/callerid/d/c/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/c/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/c/a$i;->b:Lcom/allinone/callerid/d/c/a;

    iput-object p2, p0, Lcom/allinone/callerid/d/c/a$i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_9

    const-string v0, ""

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 3
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    .line 4
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->G0(Z)V

    const-string p1, "faild_error_log"

    .line 5
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_0

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$i;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/c/a;->d(Lcom/allinone/callerid/d/c/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/f0;->A(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v4, "search_buyu_count_ok"

    invoke-virtual {p1, v4}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v4, 0x0

    .line 8
    invoke-static {v4, v5}, Lcom/allinone/callerid/util/a1;->F0(J)V

    const-string p1, "type_label"

    .line 9
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "name"

    .line 10
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format_tel_number"

    .line 11
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12
    iget-object v6, p0, Lcom/allinone/callerid/d/c/a$i;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v6}, Lcom/allinone/callerid/d/c/a;->w(Lcom/allinone/callerid/d/c/a;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/allinone/callerid/d/c/a$i;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v6}, Lcom/allinone/callerid/d/c/a;->w(Lcom/allinone/callerid/d/c/a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    if-eqz v5, :cond_2

    .line 13
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 14
    iget-object v6, p0, Lcom/allinone/callerid/d/c/a$i;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v6}, Lcom/allinone/callerid/d/c/a;->f(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_2
    iget-object v5, p0, Lcom/allinone/callerid/d/c/a$i;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v5}, Lcom/allinone/callerid/d/c/a;->u(Lcom/allinone/callerid/d/c/a;)I

    move-result v5

    if-ne v5, v3, :cond_3

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 17
    iget-object v3, p0, Lcom/allinone/callerid/d/c/a$i;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v3}, Lcom/allinone/callerid/d/c/a;->h(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$i;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/c/a;->i(Lcom/allinone/callerid/d/c/a;)Landroid/widget/ImageView;

    move-result-object p1

    const v3, 0x7f08005e

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$i;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/c/a;->k(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    const-string p1, "avatar"

    .line 21
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$i;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->d(Lcom/allinone/callerid/d/c/a;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0801b4

    iget-object v3, p0, Lcom/allinone/callerid/d/c/a$i;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v3}, Lcom/allinone/callerid/d/c/a;->i(Lcom/allinone/callerid/d/c/a;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v0, p1, v2, v3}, Lcom/allinone/callerid/util/t;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    .line 24
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$i;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/allinone/callerid/util/x0;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v4, 0x2

    if-ne p1, v4, :cond_7

    .line 25
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v2, "search_buyu_status_2"

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 26
    invoke-static {v3}, Lcom/allinone/callerid/util/a1;->G0(Z)V

    const-string p1, "time_stamp"

    .line 27
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 29
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->F0(J)V

    goto :goto_0

    :cond_7
    const/16 v0, -0x1e

    if-ne p1, v0, :cond_8

    .line 30
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->G0(Z)V

    .line 31
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "search_buyu_error_30"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_8
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->G0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_0
    return-void
.end method
