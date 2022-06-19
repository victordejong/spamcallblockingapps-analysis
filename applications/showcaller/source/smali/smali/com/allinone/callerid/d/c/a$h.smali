.class Lcom/allinone/callerid/d/c/a$h;
.super Ljava/lang/Object;
.source "IncomingCallScreen.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/a0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/c/a;->M(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/allinone/callerid/d/c/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/c/a;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    iput-boolean p2, p0, Lcom/allinone/callerid/d/c/a$h;->a:Z

    iput-object p3, p0, Lcom/allinone/callerid/d/c/a$h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 11

    if-eqz p1, :cond_18

    const-string v0, ""

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 3
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_16

    .line 4
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "searchNumber"

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "\u67e5\u8be2\u5b8c\u6210"

    .line 5
    invoke-static {v3, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "type_label"

    .line 6
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "name"

    .line 7
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format_tel_number"

    .line 8
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    iget-object v6, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    invoke-static {v6}, Lcom/allinone/callerid/d/c/a;->w(Lcom/allinone/callerid/d/c/a;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    invoke-static {v6}, Lcom/allinone/callerid/d/c/a;->w(Lcom/allinone/callerid/d/c/a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 11
    iget-object v6, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    invoke-static {v6}, Lcom/allinone/callerid/d/c/a;->f(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 13
    iget-object v5, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    invoke-static {v5}, Lcom/allinone/callerid/d/c/a;->h(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const-string v5, "report_count"

    .line 14
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 16
    iget-object v7, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    invoke-static {v7}, Lcom/allinone/callerid/d/c/a;->i(Lcom/allinone/callerid/d/c/a;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f08005e

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object v7, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    invoke-static {v7}, Lcom/allinone/callerid/d/c/a;->k(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v7, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    invoke-static {v7}, Lcom/allinone/callerid/d/c/a;->l(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    invoke-static {v5}, Lcom/allinone/callerid/d/c/a;->d(Lcom/allinone/callerid/d/c/a;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f100069

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v5, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    invoke-static {v5}, Lcom/allinone/callerid/d/c/a;->l(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    const-string v5, "avatar"

    .line 20
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 21
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 22
    iget-object v7, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    invoke-static {v7}, Lcom/allinone/callerid/d/c/a;->d(Lcom/allinone/callerid/d/c/a;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0801b4

    iget-object v9, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    invoke-static {v9}, Lcom/allinone/callerid/d/c/a;->i(Lcom/allinone/callerid/d/c/a;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-static {v7, v5, v8, v9}, Lcom/allinone/callerid/util/t;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    :cond_5
    const-string v5, "belong_area"

    .line 23
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 24
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 25
    sget-boolean v7, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v7, :cond_6

    .line 26
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4f4d\u7f6e\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_6
    iget-object v7, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    invoke-static {v7}, Lcom/allinone/callerid/d/c/a;->j(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v5, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    invoke-static {v5}, Lcom/allinone/callerid/d/c/a;->j(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v5

    const-string v7, "search_number_float_success"

    invoke-virtual {v5, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v5

    invoke-static {v5}, Lcom/allinone/callerid/util/f0;->E(Landroid/content/Context;)V

    :cond_7
    if-eqz v4, :cond_8

    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 32
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v5

    const-string v7, "unknown_incoming_search_name_ok"

    invoke-virtual {v5, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v5

    const-string v7, "new_search_name_success"

    invoke-virtual {v5, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v5

    invoke-static {v5}, Lcom/allinone/callerid/util/f0;->F(Landroid/content/Context;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 36
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v5

    const-string v7, "unknown_incoming_search_spam_ok"

    invoke-virtual {v5, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v5

    const-string v7, "search_number_float_spam"

    invoke-virtual {v5, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v5

    invoke-static {v5}, Lcom/allinone/callerid/util/f0;->L(Landroid/content/Context;)V

    :cond_9
    const-string v5, "soft_comments"

    .line 39
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 40
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_a

    .line 41
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v5

    invoke-static {v5}, Lcom/allinone/callerid/util/f0;->B(Landroid/content/Context;)V

    :cond_a
    const-string v5, "e164_tel_number"

    .line 42
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 43
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 44
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v7

    const-string v8, "unknown_incoming_search_e164_ok"

    invoke-virtual {v7, v8}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    :cond_b
    const-string v7, "cc"

    .line 45
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "faild_error_log"

    .line 46
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 47
    iget-boolean v9, p0, Lcom/allinone/callerid/d/c/a$h;->a:Z

    if-nez v9, :cond_c

    .line 48
    iget-object v9, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    iget-object v10, p0, Lcom/allinone/callerid/d/c/a$h;->b:Ljava/lang/String;

    invoke-static {v9, v10, v7, v5, v8}, Lcom/allinone/callerid/d/c/a;->m(Lcom/allinone/callerid/d/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_c
    if-nez v8, :cond_d

    .line 49
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v5

    const-string v7, "new_search_failed"

    invoke-virtual {v5, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    if-ne v8, v2, :cond_10

    .line 50
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v5

    const-string v7, "new_search_success"

    invoke-virtual {v5, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v5

    const-string v7, "unknown_incoming_search_ok"

    invoke-virtual {v5, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 52
    iget-object v5, p0, Lcom/allinone/callerid/d/c/a$h;->b:Ljava/lang/String;

    const-string v7, "140"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/allinone/callerid/d/c/a$h;->b:Ljava/lang/String;

    const-string v7, "+91140"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/allinone/callerid/d/c/a$h;->b:Ljava/lang/String;

    const-string v7, "0091140"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 53
    :cond_e
    iget-object v5, p0, Lcom/allinone/callerid/d/c/a$h;->c:Lcom/allinone/callerid/d/c/a;

    invoke-static {v5}, Lcom/allinone/callerid/d/c/a;->d(Lcom/allinone/callerid/d/c/a;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/allinone/callerid/util/f0;->D(Landroid/content/Context;)V

    .line 54
    :cond_f
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v5

    invoke-static {v5}, Lcom/allinone/callerid/util/f0;->G(Landroid/content/Context;)V

    :cond_10
    :goto_0
    const-string v5, "area_error_log"

    .line 55
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    if-eqz p1, :cond_11

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_11
    if-eqz v4, :cond_14

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 57
    :cond_12
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->w1(Z)V

    .line 58
    invoke-static {}, Lcom/allinone/callerid/util/a1;->v0()I

    move-result v4

    .line 59
    sget-boolean v5, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v5, :cond_13

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "spam_or_name:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    add-int/2addr v4, v2

    .line 61
    invoke-static {v4}, Lcom/allinone/callerid/util/a1;->c2(I)V

    goto :goto_1

    .line 62
    :cond_14
    invoke-static {v6}, Lcom/allinone/callerid/util/a1;->w1(Z)V

    :goto_1
    if-eqz p1, :cond_15

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 64
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->v1(Z)V

    goto :goto_2

    .line 65
    :cond_15
    invoke-static {v6}, Lcom/allinone/callerid/util/a1;->v1(Z)V

    .line 66
    :goto_2
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$h;->b:Ljava/lang/String;

    invoke-static {v1, p1, v6}, Lcom/allinone/callerid/util/x0;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_16
    const/16 v0, -0x14

    if-ne p1, v0, :cond_17

    .line 67
    invoke-static {}, Lcom/allinone/callerid/util/s;->a()V

    .line 68
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "search_result_status_20"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 69
    :cond_17
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "search_result_status_failed"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "search_number_exception"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    :cond_18
    :goto_3
    return-void
.end method
