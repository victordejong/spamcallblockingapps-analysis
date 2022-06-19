.class public Le71;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu61;


# instance fields
.field public a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 12

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Le71;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    new-instance p1, Ly81;

    invoke-direct {p1}, Ly81;-><init>()V

    invoke-virtual {p1}, Lv71;->c()V

    invoke-virtual {p1}, Lv71;->f()Z

    new-instance v0, Ly81;

    invoke-direct {v0}, Ly81;-><init>()V

    iget-object v1, p0, Le71;->a:Lorg/json/JSONObject;

    const-string v2, "spam_list"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Lv71;->h(Z)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    :try_start_1
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Ly81;->E()V

    invoke-virtual {v0, v6}, Ly81;->F(Ljava/lang/String;)Ly81;

    iget-wide v7, v0, Ly81;->d:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_1

    goto :goto_2

    :cond_1
    iput-object v6, v0, Ly81;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lv71;->z()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    const-string v7, "Unable to parse server response"

    invoke-static {p0, v7, v6}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v6, "PROTO_FROM_SERVER"

    invoke-static {p0, v6}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lj91;->D(Ljava/lang/String;Z)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Lv71;->h(Z)V

    sget-object p1, Lr71$a;->b1:Lr71$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr71$a;->n(Ljava/lang/Long;)V

    return-void
.end method
