.class Lcom/unknownphone/callblocker/custom/CustomApplication$a;
.super Landroid/os/AsyncTask;
.source "CustomApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/custom/CustomApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/custom/CustomApplication$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/unknownphone/callblocker/g/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/unknownphone/callblocker/custom/CustomApplication$a$a;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/unknownphone/callblocker/custom/CustomApplication$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unknownphone/callblocker/custom/CustomApplication$a$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/unknownphone/callblocker/custom/CustomApplication$a;->a:Lcom/unknownphone/callblocker/custom/CustomApplication$a$a;

    .line 118
    iput-object p1, p0, Lcom/unknownphone/callblocker/custom/CustomApplication$a;->b:Ljava/util/Map;

    .line 119
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/g/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-static {}, Lcom/unknownphone/callblocker/d/d;->a()Lcom/unknownphone/callblocker/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/custom/CustomApplication$a;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/d/d;->a(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v4

    .line 123
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 130
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 132
    :try_start_1
    new-instance v2, Lcom/unknownphone/callblocker/g/a;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/unknownphone/callblocker/g/a;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 137
    :cond_1
    return-object v2

    .line 133
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/g/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/unknownphone/callblocker/custom/CustomApplication$a;->a:Lcom/unknownphone/callblocker/custom/CustomApplication$a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/custom/CustomApplication$a;->a:Lcom/unknownphone/callblocker/custom/CustomApplication$a$a;

    invoke-interface {v0, p1}, Lcom/unknownphone/callblocker/custom/CustomApplication$a$a;->a(Ljava/util/List;)V

    .line 143
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/custom/CustomApplication$a;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/custom/CustomApplication$a;->a(Ljava/util/List;)V

    return-void
.end method
