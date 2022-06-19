.class final synthetic Lcom/google/android/gms/internal/ads/bha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bgy;

.field private final b:Ljava/lang/String;

.field private final c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bgy;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bha;->a:Lcom/google/android/gms/internal/ads/bgy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bha;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bha;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bha;->a:Lcom/google/android/gms/internal/ads/bgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bha;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bha;->c:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/adt;

    .line 1050
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bgy;->e:Lcom/google/android/gms/internal/ads/hu;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/hu;->a(Lcom/google/android/gms/internal/ads/kf;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
