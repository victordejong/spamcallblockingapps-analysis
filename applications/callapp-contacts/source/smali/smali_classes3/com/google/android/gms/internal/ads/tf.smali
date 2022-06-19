.class final synthetic Lcom/google/android/gms/internal/ads/tf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/tg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tf;->a:Lcom/google/android/gms/internal/ads/tg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tf;->a:Lcom/google/android/gms/internal/ads/tg;

    check-cast p1, Lorg/json/JSONObject;

    .line 1039
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/tg;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/aq;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 1041
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/tg;->b:Landroid/content/SharedPreferences;

    .line 1042
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1043
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v0

    const-string v2, "js_last_update"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1044
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    return-object p1
.end method
