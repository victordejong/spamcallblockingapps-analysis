.class public final Lcom/google/android/gms/internal/ads/ej;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fa",
        "<",
        "Lcom/google/android/gms/internal/ads/act;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/act;

    .line 3
    const-string/jumbo v0, "action"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    const-string/jumbo v1, "tick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    const-string/jumbo v0, "label"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    const-string/jumbo v1, "start_label"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    const-string/jumbo v2, "timestamp"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    const-string/jumbo v0, "No label given for CSI tick."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 12
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    const-string/jumbo v0, "No timestamp given for CSI tick."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->b()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 18
    sub-long/2addr v2, v4

    add-long/2addr v2, v6

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v1, "native:view_load"

    .line 25
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->i()Lcom/google/android/gms/internal/ads/p;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/p;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const-string/jumbo v1, "Malformed timestamp for CSI tick."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 27
    :cond_4
    const-string/jumbo v1, "experiment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 29
    const-string/jumbo v0, "value"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 31
    const-string/jumbo v0, "No value given for CSI experiment."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->i()Lcom/google/android/gms/internal/ads/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v1

    .line 34
    if-nez v1, :cond_6

    .line 35
    const-string/jumbo v0, "No ticker for WebView, dropping experiment ID."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_6
    const-string/jumbo v2, "e"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_7
    const-string/jumbo v1, "extra"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string/jumbo v0, "name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    const-string/jumbo v1, "value"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 44
    const-string/jumbo v0, "No value given for CSI extra."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 46
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 47
    const-string/jumbo v0, "No name given for CSI extra."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 49
    :cond_9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->i()Lcom/google/android/gms/internal/ads/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v2

    .line 50
    if-nez v2, :cond_a

    .line 51
    const-string/jumbo v0, "No ticker for WebView, dropping extra parameter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    :cond_a
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
