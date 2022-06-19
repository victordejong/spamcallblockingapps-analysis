.class final synthetic Lcom/google/android/gms/internal/ads/kh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ke;

.field private final b:Lcom/google/android/gms/internal/ads/die;

.field private final c:Lcom/google/android/gms/internal/ads/kz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/kz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/ke;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kh;->b:Lcom/google/android/gms/internal/ads/die;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/kh;->c:Lcom/google/android/gms/internal/ads/kz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/ke;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kh;->b:Lcom/google/android/gms/internal/ads/die;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh;->c:Lcom/google/android/gms/internal/ads/kz;

    .line 1046
    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ke;->b:Landroid/content/Context;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ke;->d:Lcom/google/android/gms/internal/ads/zzbar;

    .line 1047
    new-instance v5, Lcom/google/android/gms/internal/ads/jw;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v4, v1, v6}, Lcom/google/android/gms/internal/ads/jw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/ads/internal/zzb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    new-instance v3, Lcom/google/android/gms/internal/ads/ki;

    invoke-direct {v3, v0, v2, v5}, Lcom/google/android/gms/internal/ads/ki;-><init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/kz;Lcom/google/android/gms/internal/ads/ju;)V

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/ju;->a(Lcom/google/android/gms/internal/ads/jt;)V

    .line 1057
    new-instance v3, Lcom/google/android/gms/internal/ads/kn;

    invoke-direct {v3, v0, v2, v5}, Lcom/google/android/gms/internal/ads/kn;-><init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/kz;Lcom/google/android/gms/internal/ads/ju;)V

    const-string v4, "/jsLoaded"

    invoke-interface {v5, v4, v3}, Lcom/google/android/gms/internal/ads/ju;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 1058
    new-instance v3, Lcom/google/android/gms/ads/internal/util/zzbs;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/util/zzbs;-><init>()V

    .line 1059
    new-instance v4, Lcom/google/android/gms/internal/ads/km;

    invoke-direct {v4, v0, v1, v5, v3}, Lcom/google/android/gms/internal/ads/km;-><init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/ju;Lcom/google/android/gms/ads/internal/util/zzbs;)V

    .line 1060
    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/internal/util/zzbs;->set(Ljava/lang/Object;)V

    const-string v1, "/requestReload"

    .line 1061
    invoke-interface {v5, v1, v4}, Lcom/google/android/gms/internal/ads/ju;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 1062
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ke;->c:Ljava/lang/String;

    const-string v3, ".js"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1063
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ke;->c:Ljava/lang/String;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/ju;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1064
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ke;->c:Ljava/lang/String;

    const-string v3, "<html>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1065
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ke;->c:Ljava/lang/String;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/ju;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ke;->c:Ljava/lang/String;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/ju;->c(Ljava/lang/String;)V

    .line 1067
    :goto_0
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v3, Lcom/google/android/gms/internal/ads/kp;

    invoke-direct {v3, v0, v2, v5}, Lcom/google/android/gms/internal/ads/kp;-><init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/kz;Lcom/google/android/gms/internal/ads/ju;)V

    sget v0, Lcom/google/android/gms/internal/ads/kt;->a:I

    int-to-long v4, v0

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/cxg;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Error creating webview."

    .line 1051
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1052
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v1

    const-string v3, "SdkJavascriptFactory.loadJavascriptEngine"

    .line 1053
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zs;->d()V

    return-void
.end method
