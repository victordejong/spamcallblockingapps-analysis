.class final synthetic Lcom/google/android/gms/internal/ads/bfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bfi;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bfi;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfj;->a:Lcom/google/android/gms/internal/ads/bfi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bfj;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfj;->a:Lcom/google/android/gms/internal/ads/bfi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bfj;->b:Lorg/json/JSONObject;

    move-object v4, p1

    check-cast v4, Ljava/util/List;

    const/4 p1, 0x0

    if-eqz v4, :cond_2

    .line 1143
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "text"

    .line 1145
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "bg_color"

    .line 1146
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/bfi;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "text_color"

    .line 1147
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/bfi;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const/4 v2, -0x1

    const-string v7, "text_size"

    .line 1148
    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v7, "allow_pub_rendering"

    .line 1150
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    const/16 v7, 0x3e8

    const-string v8, "animation_ms"

    .line 1152
    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0xfa0

    const-string v9, "presentation_ms"

    .line 1154
    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1155
    new-instance v11, Lcom/google/android/gms/internal/ads/dd;

    if-lez v2, :cond_1

    .line 1156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_1
    add-int v8, v1, v7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bfi;->g:Lcom/google/android/gms/internal/ads/zzaei;

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzaei;->zzbof:I

    move-object v2, v11

    move-object v7, p1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/dd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V

    return-object v11

    :cond_2
    :goto_0
    return-object p1
.end method
