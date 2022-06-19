.class public Lcom/facebook/a/b/a/a;
.super Ljava/lang/Object;
.source "EventBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/b/a/a$a;,
        Lcom/facebook/a/b/a/a$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/a/b/a/a$b;

.field private final c:Lcom/facebook/a/b/a/a$a;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/b/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/a/b/a/a$b;Lcom/facebook/a/b/a/a$a;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/a/b/a/a$b;",
            "Lcom/facebook/a/b/a/a$a;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/b/a/c;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/b/a/b;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/facebook/a/b/a/a;->a:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/facebook/a/b/a/a;->b:Lcom/facebook/a/b/a/a$b;

    .line 55
    iput-object p3, p0, Lcom/facebook/a/b/a/a;->c:Lcom/facebook/a/b/a/a$a;

    .line 56
    iput-object p4, p0, Lcom/facebook/a/b/a/a;->d:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/facebook/a/b/a/a;->e:Ljava/util/List;

    .line 58
    iput-object p6, p0, Lcom/facebook/a/b/a/a;->f:Ljava/util/List;

    .line 59
    iput-object p7, p0, Lcom/facebook/a/b/a/a;->g:Ljava/lang/String;

    .line 60
    iput-object p8, p0, Lcom/facebook/a/b/a/a;->h:Ljava/lang/String;

    .line 61
    iput-object p9, p0, Lcom/facebook/a/b/a/a;->i:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/facebook/a/b/a/a;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 85
    const-string/jumbo v0, "event_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string/jumbo v0, "method"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/b/a/a$b;->valueOf(Ljava/lang/String;)Lcom/facebook/a/b/a/a$b;

    move-result-object v2

    .line 87
    const-string/jumbo v0, "event_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/b/a/a$a;->valueOf(Ljava/lang/String;)Lcom/facebook/a/b/a/a$a;

    move-result-object v3

    .line 88
    const-string/jumbo v0, "app_version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 90
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v7

    .line 91
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 92
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 93
    new-instance v9, Lcom/facebook/a/b/a/c;

    invoke-direct {v9, v8}, Lcom/facebook/a/b/a/c;-><init>(Lorg/json/JSONObject;)V

    .line 94
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    const-string/jumbo v0, "path_type"

    const-string/jumbo v6, "absolute"

    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 98
    const-string/jumbo v0, "parameters"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 99
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 100
    if-eqz v0, :cond_1

    .line 101
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 102
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 103
    new-instance v10, Lcom/facebook/a/b/a/b;

    invoke-direct {v10, v9}, Lcom/facebook/a/b/a/b;-><init>(Lorg/json/JSONObject;)V

    .line 104
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 107
    :cond_1
    const-string/jumbo v0, "component_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 108
    const-string/jumbo v0, "activity_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 110
    new-instance v0, Lcom/facebook/a/b/a/a;

    invoke-direct/range {v0 .. v9}, Lcom/facebook/a/b/a/a;-><init>(Ljava/lang/String;Lcom/facebook/a/b/a/a$b;Lcom/facebook/a/b/a/a$a;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/b/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 69
    :goto_0
    if-ge v1, v0, :cond_1

    .line 71
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/a/b/a/a;->a(Lorg/json/JSONObject;)Lcom/facebook/a/b/a/a;

    move-result-object v3

    .line 72
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 80
    :cond_1
    :goto_1
    return-object v2

    .line 74
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/b/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/a/b/a/a;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/b/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/a/b/a/a;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/a/b/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/a/b/a/a;->i:Ljava/lang/String;

    return-object v0
.end method
