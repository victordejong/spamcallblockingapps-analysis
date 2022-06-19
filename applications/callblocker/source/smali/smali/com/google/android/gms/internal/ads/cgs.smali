.class public final Lcom/google/android/gms/internal/ads/cgs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:J


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 4
    const-string/jumbo v5, ""

    .line 5
    const-string/jumbo v4, ""

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    move v2, v3

    move v6, v3

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 11
    const-string/jumbo v8, "nofill_urls"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wy;->a(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v3

    move-object v7, v3

    goto :goto_0

    .line 13
    :cond_0
    const-string/jumbo v8, "refresh_interval"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 14
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    move v6, v3

    goto :goto_0

    .line 15
    :cond_1
    const-string/jumbo v8, "gws_query_id"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 16
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_0

    .line 17
    :cond_2
    const-string/jumbo v8, "analytics_query_ad_event_id"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 18
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_0

    .line 19
    :cond_3
    const-string/jumbo v8, "response_code"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 20
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_0

    .line 21
    :cond_4
    const-string/jumbo v8, "latency"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v0

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 26
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/cgs;->a:Ljava/util/List;

    .line 27
    iput v6, p0, Lcom/google/android/gms/internal/ads/cgs;->c:I

    .line 28
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/cgs;->b:Ljava/lang/String;

    .line 29
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/cgs;->d:Ljava/lang/String;

    .line 30
    iput v2, p0, Lcom/google/android/gms/internal/ads/cgs;->e:I

    .line 31
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cgs;->f:J

    .line 32
    return-void
.end method
