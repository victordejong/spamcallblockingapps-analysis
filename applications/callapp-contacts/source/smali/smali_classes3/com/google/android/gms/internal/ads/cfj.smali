.class final synthetic Lcom/google/android/gms/internal/ads/cfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cfc;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cff;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cff;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cfj;->a:Lcom/google/android/gms/internal/ads/cff;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cfj;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfj;->a:Lcom/google/android/gms/internal/ads/cff;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cfj;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/Bundle;

    const-string v2, "native_version"

    const/4 v3, 0x3

    .line 1008
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "native_templates"

    .line 1009
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1010
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cff;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpo;->h:Ljava/util/ArrayList;

    const-string v2, "native_custom_templates"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1011
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->bW:Lcom/google/android/gms/internal/ads/af;

    .line 1012
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 1013
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "landscape"

    const-string v4, "portrait"

    const-string v5, "any"

    const-string v6, "unknown"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cff;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpo;->i:Lcom/google/android/gms/internal/ads/zzaei;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaei;->versionCode:I

    if-le v1, v3, :cond_4

    const-string v1, "enable_native_media_orientation"

    .line 1014
    invoke-virtual {p1, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1015
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cff;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpo;->i:Lcom/google/android/gms/internal/ads/zzaei;

    .line 1016
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaei;->zzbod:I

    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v9, 0x4

    if-eq v1, v9, :cond_0

    move-object v1, v6

    goto :goto_0

    :cond_0
    const-string v1, "square"

    goto :goto_0

    :cond_1
    move-object v1, v4

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    move-object v1, v5

    .line 1023
    :goto_0
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "native_media_orientation"

    .line 1024
    invoke-virtual {p1, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cff;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpo;->i:Lcom/google/android/gms/internal/ads/zzaei;

    .line 1026
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaei;->zzboc:I

    if-eqz v1, :cond_6

    if-eq v1, v8, :cond_5

    if-eq v1, v7, :cond_7

    move-object v2, v6

    goto :goto_1

    :cond_5
    move-object v2, v4

    goto :goto_1

    :cond_6
    move-object v2, v5

    .line 1032
    :cond_7
    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "native_image_orientation"

    .line 1033
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cff;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpo;->i:Lcom/google/android/gms/internal/ads/zzaei;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaei;->zzboe:Z

    const-string v2, "native_multiple_images"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1035
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cff;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpo;->i:Lcom/google/android/gms/internal/ads/zzaei;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaei;->zzboh:Z

    const-string v2, "use_custom_mute"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1037
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cff;->b:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_2

    .line 1038
    :cond_9
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1040
    :goto_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cff;->c:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzf()I

    move-result v2

    if-le v1, v2, :cond_a

    .line 1041
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cff;->c:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzl()V

    .line 1042
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cff;->c:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v2, v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzdi(I)V

    .line 1043
    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cff;->c:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzk()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1045
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cff;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1047
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    .line 1050
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "native_advanced_settings"

    .line 1051
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cff;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget v1, v1, Lcom/google/android/gms/internal/ads/cpo;->k:I

    if-le v1, v8, :cond_d

    .line 1053
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cff;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget v1, v1, Lcom/google/android/gms/internal/ads/cpo;->k:I

    const-string v2, "max_num_ads"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1054
    :cond_d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cff;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpo;->c:Lcom/google/android/gms/internal/ads/zzajy;

    if-eqz v1, :cond_12

    .line 1056
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajy;->zzdkh:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1058
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzajy;->versionCode:I

    const-string v4, "p"

    const-string v5, "l"

    if-lt v2, v7, :cond_e

    .line 1060
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajy;->zzbod:I

    if-eq v1, v7, :cond_f

    if-eq v1, v3, :cond_10

    goto :goto_4

    .line 1066
    :cond_e
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzajy;->zzdkg:I

    if-eq v2, v8, :cond_f

    if-eq v2, v7, :cond_10

    .line 1069
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajy;->zzdkg:I

    const/16 v2, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Instream ad video aspect ratio "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is wrong."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/za;->zzex(Ljava/lang/String;)V

    :cond_f
    :goto_4
    move-object v4, v5

    :cond_10
    const-string v1, "ia_var"

    .line 1071
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1072
    :cond_11
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajy;->zzdkh:Ljava/lang/String;

    const-string v2, "ad_tag"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const-string v1, "instr"

    .line 1073
    invoke-virtual {p1, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1074
    :cond_12
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cff;->a:Lcom/google/android/gms/internal/ads/cpo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpo;->a()Lcom/google/android/gms/internal/ads/fn;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v0, "has_delayed_banner_listener"

    .line 1075
    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_13
    return-void
.end method
