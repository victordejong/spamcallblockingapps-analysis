.class public Lcom/google/android/gms/ads/AdError;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# static fields
.field public static final UNDEFINED_DOMAIN:Ljava/lang/String; = "undefined"


# instance fields
.field private final code:I

.field private final zzacp:Ljava/lang/String;

.field private final zzacq:Ljava/lang/String;

.field private final zzacr:Lcom/google/android/gms/ads/AdError;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/ads/AdError;->code:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/AdError;->zzacp:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/ads/AdError;->zzacq:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/AdError;->zzacr:Lcom/google/android/gms/ads/AdError;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/google/android/gms/ads/AdError;->code:I

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/ads/AdError;->zzacp:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/ads/AdError;->zzacq:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/ads/AdError;->zzacr:Lcom/google/android/gms/ads/AdError;

    return-void
.end method


# virtual methods
.method public getCause()Lcom/google/android/gms/ads/AdError;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzacr:Lcom/google/android/gms/ads/AdError;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/google/android/gms/ads/AdError;->code:I

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzacq:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzacp:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdError;->zzdr()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Error forming toString output."

    :goto_0
    return-object v0
.end method

.method public final zzdq()Lcom/google/android/gms/internal/ads/zzvg;
    .locals 13

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzacr:Lcom/google/android/gms/ads/AdError;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvg;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->zzacr:Lcom/google/android/gms/ads/AdError;

    iget v2, v1, Lcom/google/android/gms/ads/AdError;->code:I

    iget-object v3, v1, Lcom/google/android/gms/ads/AdError;->zzacp:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/ads/AdError;->zzacq:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvg;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Landroid/os/IBinder;)V

    :goto_0
    move-object v11, v0

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvg;

    iget v8, p0, Lcom/google/android/gms/ads/AdError;->code:I

    iget-object v9, p0, Lcom/google/android/gms/ads/AdError;->zzacp:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gms/ads/AdError;->zzacq:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzvg;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public zzdr()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 22
    iget v1, p0, Lcom/google/android/gms/ads/AdError;->code:I

    const-string v2, "Code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->zzacp:Ljava/lang/String;

    const-string v2, "Message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->zzacq:Ljava/lang/String;

    const-string v2, "Domain"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->zzacr:Lcom/google/android/gms/ads/AdError;

    const-string v2, "Cause"

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 26
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdError;->zzdr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-object v0
.end method
