.class public final Lcom/google/android/gms/internal/ads/bvb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cae",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/chh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/chh;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string/jumbo v0, "the targeting must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvb;->a:Lcom/google/android/gms/internal/ads/chh;

    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 14

    .prologue
    const/4 v11, 0x2

    const-wide v12, 0x416312d000000000L    # 1.0E7

    const/4 v10, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvb;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    .line 7
    const-string/jumbo v0, "slotname"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bvb;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/bva;->a:[I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bvb;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/chh;->n:Lcom/google/android/gms/internal/ads/cgt;

    iget v4, v4, Lcom/google/android/gms/internal/ads/cgt;->a:I

    add-int/lit8 v4, v4, -0x1

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 12
    :goto_0
    const-string/jumbo v4, "cust_age"

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/dya;->b:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 13
    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/dya;->b:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    move v0, v1

    .line 14
    :goto_1
    invoke-static {p1, v4, v5, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    const-string/jumbo v0, "extras"

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dya;->c:Landroid/os/Bundle;

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    const-string/jumbo v4, "cust_gender"

    iget v0, v3, Lcom/google/android/gms/internal/ads/dya;->d:I

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, v3, Lcom/google/android/gms/internal/ads/dya;->d:I

    if-eq v0, v10, :cond_4

    move v0, v1

    .line 18
    :goto_2
    invoke-static {p1, v4, v5, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 19
    const-string/jumbo v0, "kw"

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dya;->e:Ljava/util/List;

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 20
    const-string/jumbo v4, "tag_for_child_directed_treatment"

    iget v0, v3, Lcom/google/android/gms/internal/ads/dya;->g:I

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, v3, Lcom/google/android/gms/internal/ads/dya;->g:I

    if-eq v0, v10, :cond_5

    move v0, v1

    .line 22
    :goto_3
    invoke-static {p1, v4, v5, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 23
    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/dya;->f:Z

    if-eqz v0, :cond_0

    .line 24
    const-string/jumbo v0, "test_request"

    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/dya;->f:Z

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    :cond_0
    const-string/jumbo v4, "d_imp_hdr"

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, v3, Lcom/google/android/gms/internal/ads/dya;->a:I

    if-lt v0, v11, :cond_6

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/dya;->h:Z

    if-eqz v0, :cond_6

    move v0, v1

    .line 27
    :goto_4
    invoke-static {p1, v4, v5, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 28
    const-string/jumbo v4, "ppid"

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/dya;->i:Ljava/lang/String;

    iget v0, v3, Lcom/google/android/gms/internal/ads/dya;->a:I

    if-lt v0, v11, :cond_7

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/dya;->i:Ljava/lang/String;

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 30
    :goto_5
    invoke-static {p1, v4, v5, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    .line 33
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 34
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 35
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    mul-double/2addr v6, v12

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 36
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    mul-double/2addr v8, v12

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 37
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string/jumbo v8, "radius"

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 39
    const-string/jumbo v4, "lat"

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    const-string/jumbo v4, "long"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 41
    const-string/jumbo v0, "time"

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v7, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 42
    const-string/jumbo v0, "uule"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 43
    :cond_1
    const-string/jumbo v0, "url"

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dya;->l:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v0, "neighboring_content_urls"

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dya;->v:Ljava/util/List;

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 45
    const-string/jumbo v0, "custom_targeting"

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dya;->n:Landroid/os/Bundle;

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 46
    const-string/jumbo v0, "category_exclusions"

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dya;->o:Ljava/util/List;

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 47
    const-string/jumbo v0, "request_agent"

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dya;->p:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "request_pkg"

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dya;->q:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v4, "is_designed_for_families"

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/dya;->r:Z

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v0, v3, Lcom/google/android/gms/internal/ads/dya;->a:I

    const/4 v6, 0x7

    if-lt v0, v6, :cond_8

    move v0, v1

    .line 51
    :goto_6
    invoke-static {p1, v4, v5, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 52
    iget v0, v3, Lcom/google/android/gms/internal/ads/dya;->a:I

    const/16 v4, 0x8

    if-lt v0, v4, :cond_2

    .line 53
    const-string/jumbo v0, "tag_for_under_age_of_consent"

    iget v4, v3, Lcom/google/android/gms/internal/ads/dya;->t:I

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v3, Lcom/google/android/gms/internal/ads/dya;->t:I

    if-eq v5, v10, :cond_9

    .line 55
    :goto_7
    invoke-static {p1, v0, v4, v1}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 56
    const-string/jumbo v0, "max_ad_content_rating"

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/dya;->u:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_2
    return-void

    .line 9
    :pswitch_0
    const-string/jumbo v0, "is_new_rewarded"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 11
    :pswitch_1
    const-string/jumbo v0, "is_rewarded_interstitial"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 13
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 17
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 21
    goto/16 :goto_3

    :cond_6
    move v0, v2

    .line 26
    goto/16 :goto_4

    :cond_7
    move v0, v2

    .line 29
    goto/16 :goto_5

    :cond_8
    move v0, v2

    .line 50
    goto :goto_6

    :cond_9
    move v1, v2

    .line 54
    goto :goto_7

    .line 8
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
