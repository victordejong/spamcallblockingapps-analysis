.class public final Lcom/google/android/gms/internal/ads/zzddo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Lcom/google/android/gms/internal/ads/zzddp;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdue:Landroid/content/pm/PackageInfo;

.field private final zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

.field private final zzghl:Lcom/google/android/gms/internal/ads/zzdzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzv;Lcom/google/android/gms/internal/ads/zzdnp;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/internal/util/zzf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzdue:Landroid/content/pm/PackageInfo;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "native_version"

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "native_templates"

    .line 9
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkz:Ljava/util/ArrayList;

    const-string v0, "native_custom_templates"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzctd:Lcom/google/android/gms/internal/ads/zzaba;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "landscape"

    const-string v2, "portrait"

    const-string v3, "any"

    const-string v4, "unknown"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzdoe:Lcom/google/android/gms/internal/ads/zzaeh;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaeh;->versionCode:I

    if-le p1, v1, :cond_4

    const-string p1, "enable_native_media_orientation"

    .line 14
    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzdoe:Lcom/google/android/gms/internal/ads/zzaeh;

    .line 16
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaeh;->zzbnt:I

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v7, 0x4

    if-eq p1, v7, :cond_0

    move-object p1, v4

    goto :goto_0

    :cond_0
    const-string p1, "square"

    goto :goto_0

    :cond_1
    move-object p1, v2

    goto :goto_0

    :cond_2
    move-object p1, v0

    goto :goto_0

    :cond_3
    move-object p1, v3

    .line 23
    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "native_media_orientation"

    .line 24
    invoke-virtual {p2, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzdoe:Lcom/google/android/gms/internal/ads/zzaeh;

    .line 26
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaeh;->zzbns:I

    if-eqz p1, :cond_6

    if-eq p1, v6, :cond_5

    if-eq p1, v5, :cond_7

    move-object v0, v4

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_1

    :cond_6
    move-object v0, v3

    .line 32
    :cond_7
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "native_image_orientation"

    .line 33
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzdoe:Lcom/google/android/gms/internal/ads/zzaeh;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzaeh;->zzbnu:Z

    const-string v0, "native_multiple_images"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzdoe:Lcom/google/android/gms/internal/ads/zzaeh;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzaeh;->zzbnx:Z

    const-string v0, "use_custom_mute"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzdue:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_2

    .line 38
    :cond_9
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 40
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzym()I

    move-result v0

    if-le p1, v0, :cond_a

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzys()V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzdd(I)V

    .line 43
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzyr()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 47
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_b
    const/4 p1, 0x0

    .line 50
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "native_advanced_settings"

    .line 51
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzgzc:I

    if-le p1, v6, :cond_d

    .line 53
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzgzc:I

    const-string v0, "max_num_ads"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzdvt:Lcom/google/android/gms/internal/ads/zzajt;

    if-eqz p1, :cond_12

    .line 56
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzajt;->zzdja:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 58
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzajt;->versionCode:I

    const-string v2, "p"

    const-string v3, "l"

    if-lt v0, v5, :cond_e

    .line 60
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzajt;->zzbnt:I

    if-eq p1, v5, :cond_f

    if-eq p1, v1, :cond_10

    goto :goto_4

    .line 66
    :cond_e
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzajt;->zzdiz:I

    if-eq v0, v6, :cond_f

    if-eq v0, v5, :cond_10

    .line 69
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzajt;->zzdiz:I

    const/16 v0, 0x34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Instream ad video aspect ratio "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is wrong."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    :cond_f
    :goto_4
    move-object v2, v3

    :cond_10
    const-string p1, "ia_var"

    .line 71
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 72
    :cond_11
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzajt;->zzdja:Ljava/lang/String;

    const-string v0, "ad_tag"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const-string p1, "instr"

    .line 73
    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    :cond_12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzavc()Lcom/google/android/gms/internal/ads/zzagl;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string p1, "has_delayed_banner_listener"

    .line 75
    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_13
    return-void
.end method

.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzddp;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzddr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzddr;-><init>(Lcom/google/android/gms/internal/ads/zzddo;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzati()Lcom/google/android/gms/internal/ads/zzddp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhky:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/google/android/gms/internal/ads/zzddq;->zzhcg:Lcom/google/android/gms/internal/ads/zzddp;

    return-object v0

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    sget-object v0, Lcom/google/android/gms/internal/ads/zzddt;->zzhcg:Lcom/google/android/gms/internal/ads/zzddp;

    return-object v0

    .line 83
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdds;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdds;-><init>(Lcom/google/android/gms/internal/ads/zzddo;Ljava/util/ArrayList;)V

    return-object v1
.end method
