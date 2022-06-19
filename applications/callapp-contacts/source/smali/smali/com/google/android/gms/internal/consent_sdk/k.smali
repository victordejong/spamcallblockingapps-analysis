.class public final Lcom/google/android/gms/internal/consent_sdk/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/cb;


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Lcom/google/android/gms/internal/consent_sdk/m;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/m;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/k;->a:Landroid/app/Application;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/k;->b:Lcom/google/android/gms/internal/consent_sdk/m;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/k;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/k;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 9

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    const-string v0, "write"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    .line 9
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/bf;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/k;->a:Landroid/app/Application;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/consent_sdk/bf;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 13
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 14
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x17

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Writing to storage: ["

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    iget-object v5, p1, Lcom/google/android/gms/internal/consent_sdk/bf;->a:Landroid/content/Context;

    .line 1006
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/consent_sdk/bd;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/bc;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 1009
    :cond_2
    iget-object v6, v5, Lcom/google/android/gms/internal/consent_sdk/bc;->a:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/consent_sdk/bf;->a(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1010
    instance-of v7, v4, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    .line 1011
    iget-object v5, v5, Lcom/google/android/gms/internal/consent_sdk/bc;->b:Ljava/lang/String;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1012
    :cond_3
    instance-of v7, v4, Ljava/lang/Long;

    if-eqz v7, :cond_4

    .line 1013
    iget-object v5, v5, Lcom/google/android/gms/internal/consent_sdk/bc;->b:Ljava/lang/String;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v6, v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1014
    :cond_4
    instance-of v7, v4, Ljava/lang/Double;

    if-eqz v7, :cond_5

    .line 1015
    iget-object v5, v5, Lcom/google/android/gms/internal/consent_sdk/bc;->b:Ljava/lang/String;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1016
    :cond_5
    instance-of v7, v4, Ljava/lang/Float;

    if-eqz v7, :cond_6

    .line 1017
    iget-object v5, v5, Lcom/google/android/gms/internal/consent_sdk/bc;->b:Ljava/lang/String;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1018
    :cond_6
    instance-of v7, v4, Ljava/lang/Boolean;

    if-eqz v7, :cond_7

    .line 1019
    iget-object v5, v5, Lcom/google/android/gms/internal/consent_sdk/bc;->b:Ljava/lang/String;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1020
    :cond_7
    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1021
    iget-object v5, v5, Lcom/google/android/gms/internal/consent_sdk/bc;->b:Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_8

    .line 18
    iget-object v4, p0, Lcom/google/android/gms/internal/consent_sdk/k;->b:Lcom/google/android/gms/internal/consent_sdk/m;

    .line 2017
    iget-object v4, v4, Lcom/google/android/gms/internal/consent_sdk/m;->b:Ljava/util/Set;

    .line 18
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const-string v4, "Failed writing key: "

    .line 19
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 22
    :cond_a
    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/k;->b:Lcom/google/android/gms/internal/consent_sdk/m;

    .line 2018
    iget-object v0, p2, Lcom/google/android/gms/internal/consent_sdk/m;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/consent_sdk/m;->b:Ljava/util/Set;

    const-string v2, "written_values"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/bf;->a()V

    return v1

    :cond_b
    const-string p1, "keys"

    .line 26
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 27
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    .line 31
    :cond_c
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_e

    .line 34
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v3, 0x2e

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Action[clear]: empty key at index: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 39
    :cond_d
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 41
    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/k;->a:Landroid/app/Application;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/bd;->a(Landroid/content/Context;Ljava/util/Set;)V

    goto :goto_6

    :cond_f
    :goto_5
    const-string p1, "Action[clear]: wrong args."

    .line 28
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    :cond_10
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    return v1
.end method
