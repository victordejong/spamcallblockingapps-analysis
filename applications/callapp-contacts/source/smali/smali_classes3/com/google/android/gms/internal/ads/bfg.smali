.class final synthetic Lcom/google/android/gms/internal/ads/bfg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bfe;

.field private final b:Lcom/google/android/gms/internal/ads/dbt;

.field private final c:Lcom/google/android/gms/internal/ads/dbt;

.field private final d:Lcom/google/android/gms/internal/ads/dbt;

.field private final e:Lcom/google/android/gms/internal/ads/dbt;

.field private final f:Lcom/google/android/gms/internal/ads/dbt;

.field private final g:Lorg/json/JSONObject;

.field private final h:Lcom/google/android/gms/internal/ads/dbt;

.field private final i:Lcom/google/android/gms/internal/ads/dbt;

.field private final j:Lcom/google/android/gms/internal/ads/dbt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bfe;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfg;->a:Lcom/google/android/gms/internal/ads/bfe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bfg;->b:Lcom/google/android/gms/internal/ads/dbt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bfg;->c:Lcom/google/android/gms/internal/ads/dbt;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bfg;->d:Lcom/google/android/gms/internal/ads/dbt;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bfg;->e:Lcom/google/android/gms/internal/ads/dbt;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bfg;->f:Lcom/google/android/gms/internal/ads/dbt;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bfg;->g:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bfg;->h:Lcom/google/android/gms/internal/ads/dbt;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/bfg;->i:Lcom/google/android/gms/internal/ads/dbt;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/bfg;->j:Lcom/google/android/gms/internal/ads/dbt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfg;->b:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bfg;->c:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bfg;->d:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bfg;->e:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bfg;->f:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bfg;->g:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bfg;->h:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/bfg;->i:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/bfg;->j:Lcom/google/android/gms/internal/ads/dbt;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bcr;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bcr;->a(Ljava/util/List;)V

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bcr;->a(Lcom/google/android/gms/internal/ads/dr;)V

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bcr;->b(Lcom/google/android/gms/internal/ads/dr;)V

    .line 6
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bcr;->a(Lcom/google/android/gms/internal/ads/dj;)V

    const-string v1, "mute"

    .line 1013
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1015
    invoke-static {}, Lcom/google/android/gms/internal/ads/cyz;->g()Lcom/google/android/gms/internal/ads/cyz;

    move-result-object v2

    goto :goto_2

    :cond_0
    const-string v3, "reasons"

    .line 1016
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1017
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_1

    .line 1019
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 1020
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 1022
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/bfi;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ene;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1024
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1026
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/cyz;->a(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/cyz;

    move-result-object v2

    goto :goto_2

    .line 1018
    :cond_4
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/cyz;->g()Lcom/google/android/gms/internal/ads/cyz;

    move-result-object v2

    .line 7
    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/bcr;->b(Ljava/util/List;)V

    .line 1027
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    const-string v3, "default_reason"

    .line 1030
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 1033
    :cond_6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bfi;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ene;

    move-result-object v2

    .line 10
    :goto_3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/bcr;->a(Lcom/google/android/gms/internal/ads/ene;)V

    .line 11
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/adt;

    if-eqz v1, :cond_7

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bcr;->a(Lcom/google/android/gms/internal/ads/adt;)V

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/bcr;->a(Landroid/view/View;)V

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->b()Lcom/google/android/gms/internal/ads/aem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bcr;->a(Lcom/google/android/gms/internal/ads/emk;)V

    .line 16
    :cond_7
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/adt;

    if-eqz v1, :cond_8

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bcr;->b(Lcom/google/android/gms/internal/ads/adt;)V

    .line 19
    :cond_8
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/bft;

    .line 20
    iget v3, v2, Lcom/google/android/gms/internal/ads/bft;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    goto :goto_4

    .line 23
    :cond_9
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/bft;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bft;->d:Lcom/google/android/gms/internal/ads/de;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/bcr;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/de;)V

    goto :goto_4

    .line 21
    :cond_a
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/bft;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bft;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/bcr;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    return-object v0
.end method
