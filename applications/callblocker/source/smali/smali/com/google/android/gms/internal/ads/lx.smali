.class public final Lcom/google/android/gms/internal/ads/lx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# direct methods
.method public static a(Lcom/google/ads/a$a;)I
    .locals 2

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/lz;->a:[I

    invoke-virtual {p0}, Lcom/google/ads/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    const/4 v0, 0x0

    .line 5
    :goto_0
    return v0

    .line 3
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 5
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dya;Z)Lcom/google/ads/mediation/a;
    .locals 6

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dya;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dya;->e:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 7
    :goto_0
    new-instance v0, Lcom/google/ads/mediation/a;

    new-instance v1, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dya;->b:J

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/dya;->d:I

    .line 8
    packed-switch v2, :pswitch_data_0

    .line 11
    sget-object v2, Lcom/google/ads/a$b;->a:Lcom/google/ads/a$b;

    .line 12
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/mediation/a;-><init>(Ljava/util/Date;Lcom/google/ads/a$b;Ljava/util/Set;ZLandroid/location/Location;)V

    .line 13
    return-object v0

    .line 6
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 9
    :pswitch_0
    sget-object v2, Lcom/google/ads/a$b;->c:Lcom/google/ads/a$b;

    goto :goto_1

    .line 10
    :pswitch_1
    sget-object v2, Lcom/google/ads/a$b;->b:Lcom/google/ads/a$b;

    goto :goto_1

    .line 8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
