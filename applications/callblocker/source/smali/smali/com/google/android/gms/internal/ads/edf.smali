.class final Lcom/google/android/gms/internal/ads/edf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bb;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ede;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ede;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/edf;->a:Lcom/google/android/gms/internal/ads/ede;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edf;->a:Lcom/google/android/gms/internal/ads/ede;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ede;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;D)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edf;->a:Lcom/google/android/gms/internal/ads/ede;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ede;)Landroid/content/SharedPreferences;

    move-result-object v0

    double-to-float v1, p2

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edf;->a:Lcom/google/android/gms/internal/ads/ede;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ede;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edf;->a:Lcom/google/android/gms/internal/ads/ede;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ede;)Landroid/content/SharedPreferences;

    move-result-object v0

    long-to-int v1, p2

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edf;->a:Lcom/google/android/gms/internal/ads/ede;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ede;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
