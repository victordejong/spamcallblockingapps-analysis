.class final Lcom/google/android/gms/internal/ads/ajd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aix;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/wh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ajd;->a:Lcom/google/android/gms/internal/ads/wh;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "npa_reset"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const-string v0, "npa"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajd;->a:Lcom/google/android/gms/internal/ads/wh;

    .line 1009
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wh;->a:Lcom/google/android/gms/internal/ads/wf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wf;->a(I)V

    return-void
.end method
