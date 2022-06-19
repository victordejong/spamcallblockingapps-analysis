.class final synthetic Lcom/google/android/gms/internal/ads/cio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cgy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cil;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cio;->a:Lcom/google/android/gms/internal/ads/cil;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->a:Lcom/google/android/gms/internal/ads/cil;

    check-cast p1, Lorg/json/JSONObject;

    :try_start_0
    const-string v1, "gms_sdk_env"

    .line 1005
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cil;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Failed putting version constants."

    .line 1008
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-void
.end method
