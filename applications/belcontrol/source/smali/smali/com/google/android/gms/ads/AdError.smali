.class public Lcom/google/android/gms/ads/AdError;
.super Ljava/lang/Object;
.source ""


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/AdError;->code:I

    iput-object p2, p0, Lcom/google/android/gms/ads/AdError;->zzacp:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/AdError;->zzacq:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/ads/AdError;->zzacr:Lcom/google/android/gms/ads/AdError;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/AdError;->code:I

    iput-object p2, p0, Lcom/google/android/gms/ads/AdError;->zzacp:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/AdError;->zzacq:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/AdError;->zzacr:Lcom/google/android/gms/ads/AdError;

    return-void
.end method


# virtual methods
.method public getCause()Lcom/google/android/gms/ads/AdError;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzacr:Lcom/google/android/gms/ads/AdError;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/AdError;->code:I

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzacq:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzacp:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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

    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzacr:Lcom/google/android/gms/ads/AdError;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

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

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/google/android/gms/ads/AdError;->code:I

    const-string v2, "Code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->zzacp:Ljava/lang/String;

    const-string v2, "Message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->zzacq:Ljava/lang/String;

    const-string v2, "Domain"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->zzacr:Lcom/google/android/gms/ads/AdError;

    const-string v2, "Cause"

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdError;->zzdr()Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
