.class Lcom/allinone/callerid/h/c$f;
.super Ljava/lang/Object;
.source "OverlayView.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/a0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/h/c;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/allinone/callerid/h/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/h/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    iput-object p2, p0, Lcom/allinone/callerid/h/c$f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_a

    const-string v0, ""

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 3
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_7

    .line 4
    invoke-static {v3}, Lcom/allinone/callerid/util/a1;->G0(Z)V

    const-string p1, "faild_error_log"

    .line 5
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/f0;->A(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v2, "search_buyu_count_ok"

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v4, 0x0

    .line 8
    invoke-static {v4, v5}, Lcom/allinone/callerid/util/a1;->F0(J)V

    const-string p1, "type_label"

    .line 9
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "name"

    .line 10
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "format_tel_number"

    .line 11
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12
    iget-object v5, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v5}, Lcom/allinone/callerid/h/c;->H(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v5}, Lcom/allinone/callerid/h/c;->H(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 14
    iget-object v5, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v5}, Lcom/allinone/callerid/h/c;->I(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v5, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v5}, Lcom/allinone/callerid/h/c;->G(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_2
    iget-object v4, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v4}, Lcom/allinone/callerid/h/c;->A(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v4}, Lcom/allinone/callerid/h/c;->A(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 18
    iget-object v4, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v4, v2}, Lcom/allinone/callerid/h/c;->B(Lcom/allinone/callerid/h/c;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    iget-object v4, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v4}, Lcom/allinone/callerid/h/c;->G(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    const-string v2, "avatar"

    .line 20
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 22
    iget-object v4, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v4}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0801b4

    iget-object v6, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v6}, Lcom/allinone/callerid/h/c;->K(Lcom/allinone/callerid/h/c;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v4, v2, v5, v6}, Lcom/allinone/callerid/util/t;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    :cond_5
    const-string v2, "operator"

    .line 23
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "type"

    .line 24
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->K(Lcom/allinone/callerid/h/c;)Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x7f08005e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->R(Lcom/allinone/callerid/h/c;)V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->T(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->T(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/allinone/callerid/h/c$f;->b:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/h/c$f;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/allinone/callerid/util/x0;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 v4, 0x2

    if-ne p1, v4, :cond_8

    .line 31
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v3, "search_buyu_status_2"

    invoke-virtual {p1, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 32
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->G0(Z)V

    const-string p1, "time_stamp"

    .line 33
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 35
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->F0(J)V

    goto :goto_1

    :cond_8
    const/16 v0, -0x1e

    if-ne p1, v0, :cond_9

    .line 36
    invoke-static {v3}, Lcom/allinone/callerid/util/a1;->G0(Z)V

    .line 37
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "search_buyu_error_30"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 38
    :cond_9
    invoke-static {v3}, Lcom/allinone/callerid/util/a1;->G0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_1
    return-void
.end method
