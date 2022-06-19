.class public final Lcom/google/android/gms/internal/ads/gp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hi<",
        "Lcom/google/android/gms/internal/ads/adt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/adt;

    const-string v0, "action"

    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "tick"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "label"

    .line 6
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "start_label"

    .line 7
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "timestamp"

    .line 8
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "No label given for CSI tick."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "No timestamp given for CSI tick."

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v4

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v2, v4

    add-long/2addr v6, v2

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string v1, "native:view_load"

    .line 25
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->j()Lcom/google/android/gms/internal/ads/bf;

    move-result-object p1

    .line 1007
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/bf;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/bg;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    if-eqz p2, :cond_4

    if-nez v1, :cond_3

    goto :goto_0

    .line 1010
    :cond_3
    invoke-virtual {p2, v1, v6, v7, v2}, Lcom/google/android/gms/internal/ads/bi;->a(Lcom/google/android/gms/internal/ads/bg;J[Ljava/lang/String;)Z

    .line 1012
    :cond_4
    :goto_0
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/bf;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    .line 1015
    :cond_5
    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/ads/bi;->a(J)Lcom/google/android/gms/internal/ads/bg;

    move-result-object p1

    .line 1016
    :goto_1
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Malformed timestamp for CSI tick."

    .line 22
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_6
    const-string v1, "experiment"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "value"

    if-eqz v1, :cond_9

    .line 29
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "No value given for CSI experiment."

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 33
    :cond_7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->j()Lcom/google/android/gms/internal/ads/bf;

    move-result-object p1

    .line 1018
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    if-nez p1, :cond_8

    const-string p1, "No ticker for WebView, dropping experiment ID."

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "e"

    .line 37
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/bi;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    const-string v1, "extra"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "name"

    .line 41
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p1, "No value given for CSI extra."

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string p1, "No name given for CSI extra."

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 49
    :cond_b
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->j()Lcom/google/android/gms/internal/ads/bf;

    move-result-object p1

    .line 2018
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    if-nez p1, :cond_c

    const-string p1, "No ticker for WebView, dropping extra parameter."

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_c
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/bi;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method
