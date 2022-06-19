.class public final Lcom/google/android/gms/internal/ads/byf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/byg;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crs;

.field private final b:Lcom/google/android/gms/internal/ads/chh;

.field private final c:Landroid/content/pm/PackageInfo;

.field private final d:Lcom/google/android/gms/internal/ads/uw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/crs;Lcom/google/android/gms/internal/ads/chh;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/uw;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/byf;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/chh;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/byf;->c:Landroid/content/pm/PackageInfo;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/byf;->d:Lcom/google/android/gms/internal/ads/uw;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/byg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byf;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/byi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/byi;-><init>(Lcom/google/android/gms/internal/ads/byf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x1

    .line 8
    const-string/jumbo v0, "native_version"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    const-string/jumbo v0, "native_templates"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 10
    const-string/jumbo v0, "native_custom_templates"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chh;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bw:Lcom/google/android/gms/internal/ads/ect;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->i:Lcom/google/android/gms/internal/ads/bl;

    iget v0, v0, Lcom/google/android/gms/internal/ads/bl;->a:I

    if-le v0, v2, :cond_0

    .line 14
    const-string/jumbo v0, "enable_native_media_orientation"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->i:Lcom/google/android/gms/internal/ads/bl;

    .line 16
    iget v0, v0, Lcom/google/android/gms/internal/ads/bl;->h:I

    packed-switch v0, :pswitch_data_0

    .line 21
    const-string/jumbo v0, "unknown"

    .line 23
    :goto_0
    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    const-string/jumbo v1, "native_media_orientation"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->i:Lcom/google/android/gms/internal/ads/bl;

    .line 26
    iget v0, v0, Lcom/google/android/gms/internal/ads/bl;->c:I

    packed-switch v0, :pswitch_data_1

    .line 30
    const-string/jumbo v0, "unknown"

    .line 32
    :goto_1
    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    const-string/jumbo v1, "native_image_orientation"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_1
    const-string/jumbo v0, "native_multiple_images"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chh;->i:Lcom/google/android/gms/internal/ads/bl;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/bl;->d:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    const-string/jumbo v0, "use_custom_mute"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chh;->i:Lcom/google/android/gms/internal/ads/bl;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/bl;->g:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byf;->c:Landroid/content/pm/PackageInfo;

    .line 38
    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 40
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/byf;->d:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/uw;->g()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/byf;->d:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/uw;->m()V

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/byf;->d:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/uw;->a(I)V

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byf;->d:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->l()Lorg/json/JSONObject;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_8

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_8

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 51
    const-string/jumbo v1, "native_advanced_settings"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/chh;

    iget v0, v0, Lcom/google/android/gms/internal/ads/chh;->k:I

    if-le v0, v4, :cond_4

    .line 53
    const-string/jumbo v0, "max_num_ads"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/chh;

    iget v1, v1, Lcom/google/android/gms/internal/ads/chh;->k:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->c:Lcom/google/android/gms/internal/ads/gn;

    .line 55
    if-eqz v0, :cond_5

    .line 56
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/gn;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 57
    const-string/jumbo v1, "ia_var"

    .line 58
    iget v2, v0, Lcom/google/android/gms/internal/ads/gn;->a:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_9

    .line 60
    iget v0, v0, Lcom/google/android/gms/internal/ads/gn;->d:I

    packed-switch v0, :pswitch_data_2

    .line 63
    const-string/jumbo v0, "l"

    .line 71
    :goto_4
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_5
    const-string/jumbo v0, "instr"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/chh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chh;->a()Lcom/google/android/gms/internal/ads/dp;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 75
    const-string/jumbo v0, "has_delayed_banner_listener"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    :cond_6
    return-void

    .line 17
    :pswitch_0
    const-string/jumbo v0, "any"

    goto/16 :goto_0

    .line 18
    :pswitch_1
    const-string/jumbo v0, "landscape"

    goto/16 :goto_0

    .line 19
    :pswitch_2
    const-string/jumbo v0, "portrait"

    goto/16 :goto_0

    .line 20
    :pswitch_3
    const-string/jumbo v0, "square"

    goto/16 :goto_0

    .line 27
    :pswitch_4
    const-string/jumbo v0, "portrait"

    goto/16 :goto_1

    .line 28
    :pswitch_5
    const-string/jumbo v0, "landscape"

    goto/16 :goto_1

    .line 29
    :pswitch_6
    const-string/jumbo v0, "any"

    goto/16 :goto_1

    .line 38
    :cond_7
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto/16 :goto_2

    .line 48
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 61
    :pswitch_7
    const-string/jumbo v0, "l"

    goto :goto_4

    .line 62
    :pswitch_8
    const-string/jumbo v0, "p"

    goto :goto_4

    .line 66
    :cond_9
    iget v2, v0, Lcom/google/android/gms/internal/ads/gn;->b:I

    packed-switch v2, :pswitch_data_3

    .line 69
    iget v0, v0, Lcom/google/android/gms/internal/ads/gn;->b:I

    const/16 v2, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Instream ad video aspect ratio "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is wrong."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "l"

    goto :goto_4

    .line 67
    :pswitch_9
    const-string/jumbo v0, "l"

    goto :goto_4

    .line 68
    :pswitch_a
    const-string/jumbo v0, "p"

    goto :goto_4

    .line 72
    :cond_a
    const-string/jumbo v1, "ad_tag"

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/gn;->c:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 26
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 60
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 66
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/byg;
    .locals 2

    .prologue
    .line 77
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/chh;->g:Ljava/util/ArrayList;

    .line 79
    if-nez v1, :cond_0

    .line 80
    sget-object v0, Lcom/google/android/gms/internal/ads/byh;->a:Lcom/google/android/gms/internal/ads/byg;

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Lcom/google/android/gms/internal/ads/byk;->a:Lcom/google/android/gms/internal/ads/byg;

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/byj;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/byj;-><init>(Lcom/google/android/gms/internal/ads/byf;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
