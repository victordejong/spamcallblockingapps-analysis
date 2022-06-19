.class public final Lcom/google/android/gms/internal/ads/tj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/sy;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lg<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ads/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lg<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzli()Lcom/google/android/gms/internal/ads/li;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbar;->zzaau()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/li;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lcom/google/android/gms/internal/ads/ln;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/lm;->a:Lcom/google/android/gms/internal/ads/lj;

    const-string v2, "google.afma.request.getAdDictionary"

    .line 5
    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/ln;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/lh;)Lcom/google/android/gms/internal/ads/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tj;->a:Lcom/google/android/gms/internal/ads/lg;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzli()Lcom/google/android/gms/internal/ads/li;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbar;->zzaau()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/li;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lcom/google/android/gms/internal/ads/ln;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/lm;->a:Lcom/google/android/gms/internal/ads/lj;

    const-string v1, "google.afma.sdkConstants.getSdkConstants"

    .line 9
    invoke-virtual {p1, v1, v0, v0}, Lcom/google/android/gms/internal/ads/ln;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/lh;)Lcom/google/android/gms/internal/ads/lg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tj;->b:Lcom/google/android/gms/internal/ads/lg;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/lg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/lg<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tj;->b:Lcom/google/android/gms/internal/ads/lg;

    return-object v0
.end method
