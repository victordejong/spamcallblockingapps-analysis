.class final Lcom/callerid/block/f/c$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/f/c;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/f/c$h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_b

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_7

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/callerid/block/util/n0;->s0(Landroid/content/Context;Z)V

    const-string p1, "faild_error_log"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_0

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/z;->l(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object p1

    const-wide/16 v4, 0x0

    invoke-static {p1, v4, v5}, Lcom/callerid/block/util/n0;->r0(Landroid/content/Context;J)V

    const-string p1, "type_label"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "format_tel_number"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/callerid/block/f/c;->B()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/callerid/block/f/c;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Lcom/callerid/block/f/c;->C(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/callerid/block/f/c;->P()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/callerid/block/f/c;->P()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/callerid/block/f/c;->Q()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const-string v2, "avatar"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/callerid/block/f/c;->A()I

    move-result v5

    invoke-static {}, Lcom/callerid/block/f/c;->S()Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v4, v2, v5, v6}, Lcom/callerid/block/util/p;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    :cond_5
    const-string v2, "operator"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/callerid/block/f/c;->S()Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x7f080065

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->I()V

    invoke-static {}, Lcom/callerid/block/f/c;->K()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->K()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object p1, p0, Lcom/callerid/block/f/c$h;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/callerid/block/util/l0;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v4, 0x2

    if-ne p1, v4, :cond_9

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/callerid/block/util/n0;->s0(Landroid/content/Context;Z)V

    const-string p1, "time_stamp"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/n0;->r0(Landroid/content/Context;J)V

    :cond_8
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "search_buyu_error_2"

    :goto_1
    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const/16 v0, -0x1e

    if-ne p1, v0, :cond_a

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/callerid/block/util/n0;->s0(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "search_buyu_error_30"

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/callerid/block/util/n0;->s0(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_2
    return-void
.end method
