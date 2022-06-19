.class final Lcom/google/android/gms/internal/ads/jq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/yq;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/yo;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/iq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jo;Lcom/google/android/gms/internal/ads/yo;Lcom/google/android/gms/internal/ads/iq;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jq;->a:Lcom/google/android/gms/internal/ads/yo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jq;->b:Lcom/google/android/gms/internal/ads/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jq;->a:Lcom/google/android/gms/internal/ads/yo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzake;

    const-string/jumbo v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzake;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jq;->b:Lcom/google/android/gms/internal/ads/iq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iq;->a()V

    .line 4
    return-void
.end method
