.class final synthetic Lcom/google/firebase/remoteconfig/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/util/d;


# instance fields
.field private final a:Lcom/google/firebase/remoteconfig/internal/p;


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/internal/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/i;->a:Lcom/google/firebase/remoteconfig/internal/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/i;->a:Lcom/google/firebase/remoteconfig/internal/p;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/google/firebase/remoteconfig/internal/f;

    .line 1125
    iget-object v1, p2, Lcom/google/firebase/remoteconfig/internal/f;->d:Lorg/json/JSONObject;

    .line 1065
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-gtz v2, :cond_0

    return-void

    .line 2109
    :cond_0
    iget-object p2, p2, Lcom/google/firebase/remoteconfig/internal/f;->a:Lorg/json/JSONObject;

    .line 1070
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-gtz v2, :cond_1

    return-void

    .line 1074
    :cond_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "choiceId"

    .line 1079
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1080
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1084
    iget-object v3, v0, Lcom/google/firebase/remoteconfig/internal/p;->b:Ljava/util/Map;

    monitor-enter v3

    .line 1085
    :try_start_0
    iget-object v4, v0, Lcom/google/firebase/remoteconfig/internal/p;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1086
    monitor-exit v3

    return-void

    .line 1088
    :cond_2
    iget-object v4, v0, Lcom/google/firebase/remoteconfig/internal/p;->b:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "arm_key"

    .line 1092
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "arm_value"

    .line 1093
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "personalization_id"

    const-string p2, "personalizationId"

    .line 1094
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "arm_index"

    const-string p2, "armIndex"

    const/4 v4, -0x1

    .line 1095
    invoke-virtual {v1, p2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "group"

    const-string p2, "group"

    .line 1096
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object p1, v0, Lcom/google/firebase/remoteconfig/internal/p;->a:Lcom/google/firebase/analytics/connector/a;

    const-string p2, "fp"

    const-string v1, "personalization_assignment"

    invoke-interface {p1, p2, v1, v3}, Lcom/google/firebase/analytics/connector/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1099
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "_fpid"

    .line 1100
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object p2, v0, Lcom/google/firebase/remoteconfig/internal/p;->a:Lcom/google/firebase/analytics/connector/a;

    const-string v0, "fp"

    const-string v1, "_fpc"

    invoke-interface {p2, v0, v1, p1}, Lcom/google/firebase/analytics/connector/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1089
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method
