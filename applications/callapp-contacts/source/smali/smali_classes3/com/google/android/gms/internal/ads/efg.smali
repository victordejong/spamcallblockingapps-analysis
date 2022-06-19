.class final Lcom/google/android/gms/internal/ads/efg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/efd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/efd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/efg;->a:Lcom/google/android/gms/internal/ads/efd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 9

    .line 2
    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efg;->a:Lcom/google/android/gms/internal/ads/efd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/efd;->d:Lcom/google/android/gms/internal/ads/efb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/efg;->a:Lcom/google/android/gms/internal/ads/efd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/efd;->a:Lcom/google/android/gms/internal/ads/eev;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/efg;->a:Lcom/google/android/gms/internal/ads/efd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/efd;->b:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/efg;->a:Lcom/google/android/gms/internal/ads/efd;

    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/efd;->c:Z

    .line 2028
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/eev;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 2029
    :try_start_0
    iget v5, v1, Lcom/google/android/gms/internal/ads/eev;->d:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Lcom/google/android/gms/internal/ads/eev;->d:I

    .line 2030
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1177
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1178
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "text"

    .line 1179
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1180
    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/efb;->m:Z

    if-nez p1, :cond_0

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1182
    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1183
    invoke-virtual {v2}, Landroid/webkit/WebView;->getX()F

    move-result v5

    .line 1184
    invoke-virtual {v2}, Landroid/webkit/WebView;->getY()F

    move-result v6

    .line 1185
    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result p1

    int-to-float v7, p1

    .line 1186
    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result p1

    int-to-float v8, p1

    move-object v2, v1

    .line 1187
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/eev;->a(Ljava/lang/String;ZFFFF)V

    goto :goto_0

    .line 1189
    :cond_0
    invoke-virtual {v2}, Landroid/webkit/WebView;->getX()F

    move-result v5

    .line 1190
    invoke-virtual {v2}, Landroid/webkit/WebView;->getY()F

    move-result v6

    .line 1191
    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result p1

    int-to-float v7, p1

    .line 1192
    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result p1

    int-to-float v8, p1

    move-object v2, v1

    .line 1193
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/eev;->a(Ljava/lang/String;ZFFFF)V

    .line 1194
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/eev;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1195
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/efb;->d:Lcom/google/android/gms/internal/ads/eey;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/eey;->b(Lcom/google/android/gms/internal/ads/eev;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Failed to get webview content."

    .line 1201
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1202
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    const-string v1, "ContentFetchTask.processWebViewContent"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catch_0
    const-string p1, "Json string may be malformed."

    .line 1198
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    .line 2030
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
