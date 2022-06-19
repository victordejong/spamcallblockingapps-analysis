.class public final Lcom/google/android/gms/internal/ads/zzdnb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field public final responseCode:I

.field public final zzbvs:Ljava/lang/String;

.field public final zzdms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzdwy:Ljava/lang/String;

.field public final zzeeb:Z

.field public final zzgqe:J

.field public final zzhkg:I

.field public final zzhkh:Lcom/google/android/gms/internal/ads/zzdmy;


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const-string v1, ""

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    move-wide v6, v3

    move-object v8, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 12
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "nofill_urls"

    .line 13
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v10, "refresh_interval"

    .line 15
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    goto :goto_0

    :cond_1
    const-string v10, "gws_query_id"

    .line 17
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 18
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v10, "analytics_query_ad_event_id"

    .line 19
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 20
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v10, "is_idless"

    .line 21
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 22
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v5

    goto :goto_0

    :cond_4
    const-string v10, "response_code"

    .line 23
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 24
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    goto :goto_0

    :cond_5
    const-string v10, "latency"

    .line 25
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 26
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v6

    goto :goto_0

    .line 27
    :cond_6
    sget-object v10, Lcom/google/android/gms/internal/ads/zzabp;->zzczz:Lcom/google/android/gms/internal/ads/zzaba;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v10

    .line 29
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "public_error"

    .line 30
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 31
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v9

    sget-object v10, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v9, v10, :cond_7

    .line 32
    new-instance v8, Lcom/google/android/gms/internal/ads/zzdmy;

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/ads/zzdmy;-><init>(Landroid/util/JsonReader;)V

    goto/16 :goto_0

    .line 33
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 35
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 36
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzdms:Ljava/util/List;

    .line 37
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzhkg:I

    .line 38
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzdwy:Ljava/lang/String;

    .line 40
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzdnb;->responseCode:I

    .line 41
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzgqe:J

    .line 42
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzhkh:Lcom/google/android/gms/internal/ads/zzdmy;

    .line 43
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzeeb:Z

    return-void
.end method
