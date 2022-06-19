.class Lcom/unknownphone/callblocker/h/a$4;
.super Ljava/lang/Object;
.source "ProtectionFragment.java"

# interfaces
.implements Lcom/unknownphone/callblocker/d/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/h/a;->as()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/h/a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/h/a;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/unknownphone/callblocker/h/a$4;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 407
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p3, :cond_3

    .line 408
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 409
    const/4 v1, 0x0

    .line 411
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v1, v2

    .line 414
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 416
    :try_start_1
    new-instance v4, Lcom/unknownphone/callblocker/g/a;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/unknownphone/callblocker/g/a;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 414
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$4;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/h/a;->e(Lcom/unknownphone/callblocker/h/a;)Lcom/unknownphone/callblocker/d/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/unknownphone/callblocker/d/b;->b(Ljava/util/List;)V

    .line 420
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$4;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/h/a;->b(Lcom/unknownphone/callblocker/h/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "spam_numbers_last_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 421
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$4;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/h/a;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$4;->a:Lcom/unknownphone/callblocker/h/a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/h/a$4;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/h/a;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/h/a;->a(Lcom/unknownphone/callblocker/h/a;Landroid/content/Context;)V

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$4;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/h/a;->f(Lcom/unknownphone/callblocker/h/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$4;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/h/a;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$4;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/h/a;->p()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10017e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 429
    :cond_2
    :goto_3
    return-void

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$4;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/h/a;->f(Lcom/unknownphone/callblocker/h/a;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10002d

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    .line 427
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$4;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/h/a;->f(Lcom/unknownphone/callblocker/h/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 417
    :catch_1
    move-exception v4

    goto :goto_2
.end method
