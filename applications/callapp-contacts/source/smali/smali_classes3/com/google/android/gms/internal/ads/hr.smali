.class public final Lcom/google/android/gms/internal/ads/hr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hi<",
        "Lcom/google/android/gms/internal/ads/adt;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/zza;

.field private final b:Lcom/google/android/gms/internal/ads/pp;

.field private final c:Lcom/google/android/gms/internal/ads/pz;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "resize"

    const-string v1, "playVideo"

    const-string v2, "storePicture"

    const-string v3, "createCalendarEvent"

    const-string v4, "setOrientationProperties"

    const-string v5, "closeResizedAd"

    const-string v6, "unload"

    .line 28
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x1

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x2

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x3

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x4

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x5

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x6

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 6005
    invoke-static {v1}, Lcom/google/android/gms/common/util/g;->a(I)Ljava/util/Map;

    move-result-object v3

    :goto_0
    if-ge v5, v1, :cond_0

    .line 6007
    aget-object v4, v0, v5

    aget-object v6, v2, v5

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6008
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 36
    sput-object v0, Lcom/google/android/gms/internal/ads/hr;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/pp;Lcom/google/android/gms/internal/ads/pz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hr;->a:Lcom/google/android/gms/ads/internal/zza;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hr;->b:Lcom/google/android/gms/internal/ads/pp;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hr;->c:Lcom/google/android/gms/internal/ads/pz;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 6
    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/adt;

    const-string v3, "a"

    .line 7
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    sget-object v4, Lcom/google/android/gms/internal/ads/hr;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x5

    if-eq v3, v6, :cond_0

    if-eq v3, v5, :cond_0

    .line 9
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/hr;->a:Lcom/google/android/gms/ads/internal/zza;

    if-eqz v7, :cond_0

    .line 10
    invoke-virtual {v7}, Lcom/google/android/gms/ads/internal/zza;->zzkc()Z

    move-result v7

    if-nez v7, :cond_0

    .line 11
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hr;->a:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/zza;->zzbk(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v7, -0x1

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eq v3, v10, :cond_1b

    if-eq v3, v9, :cond_f

    if-eq v3, v8, :cond_8

    const/4 v4, 0x6

    if-eq v3, v6, :cond_3

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_1

    const-string v0, "Unknown MRAID command called."

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    return-void

    .line 24
    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hr;->c:Lcom/google/android/gms/internal/ads/pz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pz;->c()V

    return-void

    .line 22
    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/hr;->b:Lcom/google/android/gms/internal/ads/pp;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/pp;->a(Z)V

    return-void

    .line 20
    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/ads/ps;

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/internal/ads/ps;-><init>(Lcom/google/android/gms/internal/ads/adt;Ljava/util/Map;)V

    .line 5009
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/ps;->a:Lcom/google/android/gms/internal/ads/adt;

    if-nez v0, :cond_4

    const-string v0, "AdWebView is null"

    .line 5010
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, "portrait"

    .line 5012
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/ps;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "landscape"

    .line 5014
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/ps;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v5, 0x6

    goto :goto_0

    .line 5016
    :cond_6
    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/ps;->b:Z

    if-eqz v0, :cond_7

    const/4 v5, -0x1

    goto :goto_0

    .line 5018
    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzv()I

    move-result v5

    .line 5019
    :goto_0
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/ps;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/adt;->setRequestedOrientation(I)V

    return-void

    .line 16
    :cond_8
    new-instance v3, Lcom/google/android/gms/internal/ads/pk;

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/internal/ads/pk;-><init>(Lcom/google/android/gms/internal/ads/adt;Ljava/util/Map;)V

    .line 3018
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/pk;->a:Landroid/content/Context;

    if-nez v0, :cond_9

    const-string v0, "Activity context is not available."

    .line 3019
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    return-void

    .line 3021
    :cond_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/pk;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzar(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    .line 3022
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->b()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "This feature is not available on the device."

    .line 3023
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    return-void

    .line 3025
    :cond_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/pk;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzaq(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3026
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yd;->c()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 3027
    sget v4, Lcom/google/android/gms/ads/impl/R$string;->s5:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_b
    const-string v4, "Create calendar event"

    :goto_1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_c

    .line 3028
    sget v4, Lcom/google/android/gms/ads/impl/R$string;->s6:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_c
    const-string v4, "Allow Ad to create a calendar event?"

    :goto_2
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_d

    .line 3030
    sget v4, Lcom/google/android/gms/ads/impl/R$string;->s3:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_d
    const-string v4, "Accept"

    :goto_3
    new-instance v5, Lcom/google/android/gms/internal/ads/pn;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/pn;-><init>(Lcom/google/android/gms/internal/ads/pk;)V

    .line 3031
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_e

    .line 3033
    sget v4, Lcom/google/android/gms/ads/impl/R$string;->s4:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_e
    const-string v2, "Decline"

    :goto_4
    new-instance v4, Lcom/google/android/gms/internal/ads/pm;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/pm;-><init>(Lcom/google/android/gms/internal/ads/pk;)V

    .line 3034
    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3035
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 18
    :cond_f
    new-instance v3, Lcom/google/android/gms/internal/ads/pr;

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/internal/ads/pr;-><init>(Lcom/google/android/gms/internal/ads/adt;Ljava/util/Map;)V

    .line 4005
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/pr;->b:Landroid/content/Context;

    if-nez v0, :cond_10

    const-string v0, "Activity context is not available"

    .line 4006
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    return-void

    .line 4008
    :cond_10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/pr;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzar(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    .line 4009
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "Feature is not supported by the device."

    .line 4010
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    return-void

    .line 4012
    :cond_11
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/pr;->a:Ljava/util/Map;

    const-string v2, "iurl"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4013
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v0, "Image url cannot be empty."

    .line 4014
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    return-void

    .line 4016
    :cond_12
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "Invalid image url: "

    .line 4017
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    return-void

    .line 4020
    :cond_14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4021
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 4023
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzej(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v0, "Image type not recognized: "

    .line 4024
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_15
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_6
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    return-void

    .line 4026
    :cond_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/yd;->c()Landroid/content/res/Resources;

    move-result-object v4

    .line 4027
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/pr;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzj;->zzaq(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    if-eqz v4, :cond_17

    .line 4028
    sget v6, Lcom/google/android/gms/ads/impl/R$string;->s1:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_17
    const-string v6, "Save image"

    :goto_7
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v4, :cond_18

    .line 4030
    sget v6, Lcom/google/android/gms/ads/impl/R$string;->s2:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_18
    const-string v6, "Allow Ad to store image in Picture gallery?"

    .line 4031
    :goto_8
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v4, :cond_19

    .line 4033
    sget v6, Lcom/google/android/gms/ads/impl/R$string;->s3:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_19
    const-string v6, "Accept"

    :goto_9
    new-instance v7, Lcom/google/android/gms/internal/ads/pu;

    invoke-direct {v7, v3, v0, v2}, Lcom/google/android/gms/internal/ads/pu;-><init>(Lcom/google/android/gms/internal/ads/pr;Ljava/lang/String;Ljava/lang/String;)V

    .line 4034
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v4, :cond_1a

    .line 4036
    sget v0, Lcom/google/android/gms/ads/impl/R$string;->s4:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_1a
    const-string v0, "Decline"

    :goto_a
    new-instance v2, Lcom/google/android/gms/internal/ads/pt;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/pt;-><init>(Lcom/google/android/gms/internal/ads/pr;)V

    .line 4037
    invoke-virtual {v5, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4038
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 4039
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 14
    :cond_1b
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/hr;->b:Lcom/google/android/gms/internal/ads/pp;

    .line 1015
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/pp;->i:Ljava/lang/Object;

    monitor-enter v3

    .line 1016
    :try_start_0
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    if-nez v5, :cond_1c

    const-string v0, "Not an activity context. Cannot resize."

    .line 1017
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    .line 1018
    monitor-exit v3

    return-void

    .line 1019
    :cond_1c
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v5

    if-nez v5, :cond_1d

    const-string v0, "Webview is not yet available, size is not set."

    .line 1020
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    .line 1021
    monitor-exit v3

    return-void

    .line 1022
    :cond_1d
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/afh;->d()Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    .line 1023
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    .line 1024
    monitor-exit v3

    return-void

    .line 1025
    :cond_1e
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->G()Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v0, "Cannot resize an expanded banner."

    .line 1026
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    .line 1027
    monitor-exit v3

    return-void

    :cond_1f
    const-string v5, "width"

    .line 1029
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 1030
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    const-string v5, "width"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzj;->zzei(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/google/android/gms/internal/ads/pp;->h:I

    :cond_20
    const-string v5, "height"

    .line 1031
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 1032
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    const-string v5, "height"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzj;->zzei(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/google/android/gms/internal/ads/pp;->e:I

    :cond_21
    const-string v5, "offsetX"

    .line 1033
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 1034
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    const-string v5, "offsetX"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzj;->zzei(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/google/android/gms/internal/ads/pp;->f:I

    :cond_22
    const-string v5, "offsetY"

    .line 1035
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 1036
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    const-string v5, "offsetY"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzj;->zzei(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/google/android/gms/internal/ads/pp;->g:I

    :cond_23
    const-string v5, "allowOffscreen"

    .line 1037
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "allowOffscreen"

    .line 1038
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v2, Lcom/google/android/gms/internal/ads/pp;->b:Z

    :cond_24
    const-string v5, "customClosePosition"

    .line 1039
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1040
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 1041
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/pp;->a:Ljava/lang/String;

    .line 1043
    :cond_25
    iget v0, v2, Lcom/google/android/gms/internal/ads/pp;->h:I

    const/4 v5, 0x0

    if-ltz v0, :cond_26

    iget v0, v2, Lcom/google/android/gms/internal/ads/pp;->e:I

    if-ltz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_b

    :cond_26
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_27

    const-string v0, "Invalid width and height options. Cannot resize."

    .line 1045
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    .line 1046
    monitor-exit v3

    return-void

    .line 1047
    :cond_27
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 1048
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_28

    goto/16 :goto_1e

    .line 1053
    :cond_28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    invoke-static {v11}, Lcom/google/android/gms/ads/internal/util/zzj;->zzg(Landroid/app/Activity;)[I

    move-result-object v11

    .line 1054
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    invoke-static {v12}, Lcom/google/android/gms/ads/internal/util/zzj;->zzh(Landroid/app/Activity;)[I

    move-result-object v12

    .line 1055
    aget v13, v11, v5

    .line 1056
    aget v11, v11, v10

    .line 1057
    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->h:I

    const/4 v15, 0x2

    const/16 v4, 0x32

    if-lt v14, v4, :cond_35

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->h:I

    if-le v14, v13, :cond_29

    goto/16 :goto_12

    .line 1060
    :cond_29
    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->e:I

    if-lt v14, v4, :cond_34

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->e:I

    if-le v14, v11, :cond_2a

    goto/16 :goto_11

    .line 1063
    :cond_2a
    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->e:I

    if-ne v14, v11, :cond_2b

    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->h:I

    if-ne v11, v13, :cond_2b

    const-string v11, "Cannot resize to a full-screen ad."

    .line 1064
    invoke-static {v11}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1066
    :cond_2b
    iget-boolean v11, v2, Lcom/google/android/gms/internal/ads/pp;->b:Z

    if-eqz v11, :cond_33

    .line 1068
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/pp;->a:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto :goto_c

    :sswitch_0
    const-string v14, "top-center"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    const/4 v11, 0x1

    goto :goto_d

    :sswitch_1
    const-string v14, "bottom-center"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    const/4 v11, 0x4

    goto :goto_d

    :sswitch_2
    const-string v14, "bottom-right"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    const/4 v11, 0x5

    goto :goto_d

    :sswitch_3
    const-string v14, "bottom-left"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    const/4 v11, 0x3

    goto :goto_d

    :sswitch_4
    const-string v14, "top-left"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    const/4 v11, 0x0

    goto :goto_d

    :sswitch_5
    const-string v14, "center"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    const/4 v11, 0x2

    goto :goto_d

    :cond_2c
    :goto_c
    const/4 v11, -0x1

    :goto_d
    if-eqz v11, :cond_32

    if-eq v11, v10, :cond_31

    if-eq v11, v15, :cond_30

    if-eq v11, v9, :cond_2f

    if-eq v11, v8, :cond_2e

    if-eq v11, v6, :cond_2d

    .line 1087
    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->c:I

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->f:I

    add-int/2addr v11, v14

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->h:I

    add-int/2addr v11, v14

    sub-int/2addr v11, v4

    .line 1088
    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->d:I

    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->g:I

    add-int/2addr v14, v6

    goto :goto_10

    .line 1084
    :cond_2d
    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->c:I

    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->f:I

    add-int/2addr v6, v11

    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->h:I

    add-int/2addr v6, v11

    add-int/lit8 v11, v6, -0x32

    .line 1085
    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->d:I

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->g:I

    add-int/2addr v6, v14

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->e:I

    goto :goto_e

    .line 1081
    :cond_2e
    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->c:I

    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->f:I

    add-int/2addr v6, v11

    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->h:I

    div-int/2addr v11, v15

    add-int/2addr v6, v11

    add-int/lit8 v11, v6, -0x19

    .line 1082
    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->d:I

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->g:I

    add-int/2addr v6, v14

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->e:I

    goto :goto_e

    .line 1078
    :cond_2f
    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->c:I

    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->f:I

    add-int/2addr v11, v6

    .line 1079
    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->d:I

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->g:I

    add-int/2addr v6, v14

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->e:I

    :goto_e
    add-int/2addr v6, v14

    add-int/lit8 v14, v6, -0x32

    goto :goto_10

    .line 1075
    :cond_30
    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->c:I

    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->f:I

    add-int/2addr v6, v11

    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->h:I

    div-int/2addr v11, v15

    add-int/2addr v6, v11

    add-int/lit8 v11, v6, -0x19

    .line 1076
    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->d:I

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->g:I

    add-int/2addr v6, v14

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->e:I

    div-int/2addr v14, v15

    add-int/2addr v6, v14

    add-int/lit8 v14, v6, -0x19

    goto :goto_10

    .line 1072
    :cond_31
    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->c:I

    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->f:I

    add-int/2addr v6, v11

    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->h:I

    div-int/2addr v11, v15

    add-int/2addr v6, v11

    add-int/lit8 v11, v6, -0x19

    .line 1073
    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->d:I

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->g:I

    goto :goto_f

    .line 1069
    :cond_32
    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->c:I

    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->f:I

    add-int/2addr v11, v6

    .line 1070
    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->d:I

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->g:I

    :goto_f
    add-int/2addr v14, v6

    :goto_10
    if-ltz v11, :cond_36

    add-int/2addr v11, v4

    if-gt v11, v13, :cond_36

    .line 1089
    aget v6, v12, v5

    if-lt v14, v6, :cond_36

    add-int/2addr v14, v4

    aget v6, v12, v10

    if-le v14, v6, :cond_33

    goto :goto_13

    :cond_33
    const/4 v6, 0x1

    goto :goto_14

    :cond_34
    :goto_11
    const-string v6, "Height is too small or too large."

    .line 1061
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    goto :goto_13

    :cond_35
    :goto_12
    const-string v6, "Width is too small or too large."

    .line 1058
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    :cond_36
    :goto_13
    const/4 v6, 0x0

    :goto_14
    if-nez v6, :cond_37

    const/4 v6, 0x0

    goto :goto_17

    .line 1094
    :cond_37
    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/pp;->b:Z

    if-eqz v6, :cond_38

    new-array v6, v15, [I

    .line 1095
    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->c:I

    iget v12, v2, Lcom/google/android/gms/internal/ads/pp;->f:I

    add-int/2addr v11, v12

    aput v11, v6, v5

    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->d:I

    iget v12, v2, Lcom/google/android/gms/internal/ads/pp;->g:I

    add-int/2addr v11, v12

    aput v11, v6, v10

    goto :goto_17

    .line 1096
    :cond_38
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzj;->zzg(Landroid/app/Activity;)[I

    move-result-object v6

    .line 1097
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    invoke-static {v11}, Lcom/google/android/gms/ads/internal/util/zzj;->zzh(Landroid/app/Activity;)[I

    move-result-object v11

    .line 1098
    aget v6, v6, v5

    .line 1099
    iget v12, v2, Lcom/google/android/gms/internal/ads/pp;->c:I

    iget v13, v2, Lcom/google/android/gms/internal/ads/pp;->f:I

    add-int/2addr v12, v13

    .line 1100
    iget v13, v2, Lcom/google/android/gms/internal/ads/pp;->d:I

    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->g:I

    add-int/2addr v13, v14

    if-gez v12, :cond_39

    const/4 v12, 0x0

    goto :goto_15

    .line 1103
    :cond_39
    iget v14, v2, Lcom/google/android/gms/internal/ads/pp;->h:I

    add-int/2addr v14, v12

    if-le v14, v6, :cond_3a

    .line 1104
    iget v12, v2, Lcom/google/android/gms/internal/ads/pp;->h:I

    sub-int v12, v6, v12

    .line 1105
    :cond_3a
    :goto_15
    aget v6, v11, v5

    if-ge v13, v6, :cond_3b

    .line 1106
    aget v13, v11, v5

    goto :goto_16

    .line 1107
    :cond_3b
    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->e:I

    add-int/2addr v6, v13

    aget v14, v11, v10

    if-le v6, v14, :cond_3c

    .line 1108
    aget v6, v11, v10

    iget v11, v2, Lcom/google/android/gms/internal/ads/pp;->e:I

    sub-int v13, v6, v11

    :cond_3c
    :goto_16
    new-array v6, v15, [I

    aput v12, v6, v5

    aput v13, v6, v10

    :goto_17
    if-nez v6, :cond_3d

    const-string v0, "Resize location out of screen or close button is not visible."

    .line 1112
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    .line 1113
    monitor-exit v3

    return-void

    .line 1114
    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    iget v12, v2, Lcom/google/android/gms/internal/ads/pp;->h:I

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/content/Context;I)I

    move-result v11

    .line 1115
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    iget v13, v2, Lcom/google/android/gms/internal/ads/pp;->e:I

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/content/Context;I)I

    move-result v12

    .line 1116
    iget-object v13, v2, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-eqz v13, :cond_4a

    .line 1117
    instance-of v14, v13, Landroid/view/ViewGroup;

    if-eqz v14, :cond_4a

    .line 1118
    move-object v14, v13

    check-cast v14, Landroid/view/ViewGroup;

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1119
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->p:Landroid/widget/PopupWindow;

    if-nez v8, :cond_3e

    .line 1120
    check-cast v13, Landroid/view/ViewGroup;

    iput-object v13, v2, Lcom/google/android/gms/internal/ads/pp;->r:Landroid/view/ViewGroup;

    .line 1121
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/zzj;->zzm(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1122
    new-instance v13, Landroid/widget/ImageView;

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v13, v2, Lcom/google/android/gms/internal/ads/pp;->m:Landroid/widget/ImageView;

    .line 1123
    iget-object v13, v2, Lcom/google/android/gms/internal/ads/pp;->m:Landroid/widget/ImageView;

    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1124
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v8

    iput-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->l:Lcom/google/android/gms/internal/ads/afh;

    .line 1125
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->r:Landroid/view/ViewGroup;

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/pp;->m:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_18

    .line 1127
    :cond_3e
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1130
    :goto_18
    new-instance v8, Landroid/widget/RelativeLayout;

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    invoke-direct {v8, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->q:Landroid/widget/RelativeLayout;

    .line 1131
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1132
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->q:Landroid/widget/RelativeLayout;

    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v13, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1133
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->q:Landroid/widget/RelativeLayout;

    invoke-static {v8, v11, v12, v5}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;

    move-result-object v8

    iput-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->p:Landroid/widget/PopupWindow;

    .line 1134
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1135
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v10}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1136
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->p:Landroid/widget/PopupWindow;

    iget-boolean v13, v2, Lcom/google/android/gms/internal/ads/pp;->b:Z

    if-nez v13, :cond_3f

    const/4 v13, 0x1

    goto :goto_19

    :cond_3f
    const/4 v13, 0x0

    :goto_19
    invoke-virtual {v8, v13}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1137
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->q:Landroid/widget/RelativeLayout;

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    .line 1138
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v13

    .line 1139
    invoke-virtual {v8, v13, v7, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 1140
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    invoke-direct {v8, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->n:Landroid/widget/LinearLayout;

    .line 1141
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1142
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    invoke-static {v13, v4}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/content/Context;I)I

    move-result v13

    .line 1143
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v8, v13, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1144
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/pp;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_1

    goto :goto_1a

    :sswitch_6
    const-string v13, "top-center"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    const/4 v7, 0x1

    goto :goto_1a

    :sswitch_7
    const-string v13, "bottom-center"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    const/4 v7, 0x4

    goto :goto_1a

    :sswitch_8
    const-string v13, "bottom-right"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    const/4 v7, 0x5

    goto :goto_1a

    :sswitch_9
    const-string v13, "bottom-left"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    const/4 v7, 0x3

    goto :goto_1a

    :sswitch_a
    const-string v13, "top-left"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    const/4 v7, 0x0

    goto :goto_1a

    :sswitch_b
    const-string v13, "center"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    const/4 v7, 0x2

    :cond_40
    :goto_1a
    const/16 v4, 0x9

    const/16 v13, 0xa

    if-eqz v7, :cond_46

    const/16 v14, 0xe

    if-eq v7, v10, :cond_45

    if-eq v7, v15, :cond_44

    const/16 v15, 0xc

    if-eq v7, v9, :cond_43

    const/4 v9, 0x4

    if-eq v7, v9, :cond_42

    const/16 v4, 0xb

    const/4 v9, 0x5

    if-eq v7, v9, :cond_41

    .line 1162
    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1163
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1b

    .line 1159
    :cond_41
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1160
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1b

    .line 1156
    :cond_42
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1157
    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1b

    .line 1153
    :cond_43
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1154
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1b

    :cond_44
    const/16 v4, 0xd

    .line 1151
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1b

    .line 1148
    :cond_45
    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1149
    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1b

    .line 1145
    :cond_46
    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1146
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1164
    :goto_1b
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/pp;->n:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/google/android/gms/internal/ads/po;

    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/ads/po;-><init>(Lcom/google/android/gms/internal/ads/pp;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1165
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/pp;->n:Landroid/widget/LinearLayout;

    const-string v7, "Close button"

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1166
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/pp;->q:Landroid/widget/RelativeLayout;

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/pp;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    :try_start_1
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/pp;->p:Landroid/widget/PopupWindow;

    .line 1168
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1169
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    aget v8, v6, v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/content/Context;I)I

    move-result v7

    .line 1170
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    aget v9, v6, v10

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/content/Context;I)I

    move-result v8

    .line 1171
    invoke-virtual {v4, v0, v5, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1182
    :try_start_2
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/pp;->o:Lcom/google/android/gms/internal/ads/pz;

    if-eqz v0, :cond_47

    .line 1183
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/pp;->o:Lcom/google/android/gms/internal/ads/pz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pz;->a()V

    .line 1184
    :cond_47
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/afh;->a(II)Lcom/google/android/gms/internal/ads/afh;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/internal/ads/afh;)V

    .line 1185
    aget v0, v6, v5

    aget v4, v6, v10

    .line 1186
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzj;->zzh(Landroid/app/Activity;)[I

    move-result-object v6

    aget v5, v6, v5

    sub-int/2addr v4, v5

    .line 1187
    iget v5, v2, Lcom/google/android/gms/internal/ads/pp;->h:I

    iget v6, v2, Lcom/google/android/gms/internal/ads/pp;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2020
    :try_start_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "x"

    .line 2021
    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "y"

    invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "width"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "height"

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 2022
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/qa;->s:Lcom/google/android/gms/internal/ads/adt;

    const-string v5, "onSizeChanged"

    invoke-interface {v4, v5, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1c

    :catch_0
    move-exception v0

    :try_start_4
    const-string v4, "Error occurred while dispatching size change."

    .line 2025
    invoke-static {v4, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1c
    const-string v0, "resized"

    .line 1188
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qa;->c(Ljava/lang/String;)V

    .line 1189
    monitor-exit v3

    return-void

    :catch_1
    move-exception v0

    const-string v4, "Cannot show popup window: "

    .line 1174
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_48

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_48
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    .line 1175
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/pp;->q:Landroid/widget/RelativeLayout;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1176
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/pp;->r:Landroid/view/ViewGroup;

    if-eqz v0, :cond_49

    .line 1177
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/pp;->r:Landroid/view/ViewGroup;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/pp;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1178
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/pp;->r:Landroid/view/ViewGroup;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1179
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/pp;->l:Lcom/google/android/gms/internal/ads/afh;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/internal/ads/afh;)V

    .line 1180
    :cond_49
    monitor-exit v3

    return-void

    :cond_4a
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    .line 1128
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    .line 1129
    monitor-exit v3

    return-void

    :cond_4b
    :goto_1e
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    .line 1049
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    .line 1050
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    .line 1189
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_b
        -0x3c587281 -> :sswitch_a
        -0x27103597 -> :sswitch_9
        0x455fe3fa -> :sswitch_8
        0x4ccee637 -> :sswitch_7
        0x68a23bcd -> :sswitch_6
    .end sparse-switch
.end method
