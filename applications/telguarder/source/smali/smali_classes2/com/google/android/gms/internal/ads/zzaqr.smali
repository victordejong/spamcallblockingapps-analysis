.class public final Lcom/google/android/gms/internal/ads/zzaqr;
.super Lcom/google/android/gms/internal/ads/zzaqq;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaif;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzaqq;",
        "Lcom/google/android/gms/internal/ads/zzaif<",
        "Lcom/google/android/gms/internal/ads/zzbeb;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private density:F

.field private maxHeight:I

.field private maxWidth:I

.field private rotation:I

.field private final zzbre:Landroid/view/WindowManager;

.field private final zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzdqh:Lcom/google/android/gms/internal/ads/zzaaw;

.field private zzdqi:I

.field private zzdqj:I

.field private zzdqk:I

.field private zzdql:I

.field private zzwz:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbeb;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaaw;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqq;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqi:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqj:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->maxWidth:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->maxHeight:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqk:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdql:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqr;->context:Landroid/content/Context;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqh:Lcom/google/android/gms/internal/ads/zzaaw;

    const-string p1, "window"

    .line 11
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzbre:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 31
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbeb;

    .line 34
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzwz:Landroid/util/DisplayMetrics;

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzbre:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzwz:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzwz:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaqr;->density:F

    .line 38
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->rotation:I

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzwz:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqi:I

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzwz:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqj:I

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabe()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzf(Landroid/app/Activity;)[I

    move-result-object p1

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzwz:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->maxWidth:I

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzwz:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->maxHeight:I

    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqi:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->maxWidth:I

    .line 47
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqj:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->maxHeight:I

    .line 52
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacv()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbft;->zzaeo()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 53
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqi:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqk:I

    .line 54
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqj:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdql:I

    goto :goto_2

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->measure(II)V

    .line 57
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqi:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqj:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaqr;->maxWidth:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaqr;->maxHeight:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaqr;->density:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaqr;->rotation:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaqq;->zza(IIIIFI)V

    .line 60
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaqo;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqh:Lcom/google/android/gms/internal/ads/zzaaw;

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaaw;->zzrx()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaqo;->zzaf(Z)Lcom/google/android/gms/internal/ads/zzaqo;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqh:Lcom/google/android/gms/internal/ads/zzaaw;

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaaw;->zzry()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaqo;->zzae(Z)Lcom/google/android/gms/internal/ads/zzaqo;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqh:Lcom/google/android/gms/internal/ads/zzaaw;

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaaw;->zzsa()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaqo;->zzag(Z)Lcom/google/android/gms/internal/ads/zzaqo;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqh:Lcom/google/android/gms/internal/ads/zzaaw;

    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaaw;->zzrz()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaqo;->zzah(Z)Lcom/google/android/gms/internal/ads/zzaqo;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqo;->zzai(Z)Lcom/google/android/gms/internal/ads/zzaqo;

    move-result-object p1

    .line 67
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqm;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzaqm;-><init>(Lcom/google/android/gms/internal/ads/zzaqo;Lcom/google/android/gms/internal/ads/zzaqp;)V

    .line 69
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqm;->zzdr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "onDeviceFeaturesReceived"

    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    new-array v1, p1, [I

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->getLocationOnScreen([I)V

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqr;->context:Landroid/content/Context;

    aget v0, v1, v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzaza;->zzd(Landroid/content/Context;I)I

    move-result v0

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqr;->context:Landroid/content/Context;

    aget p2, v1, p2

    invoke-virtual {v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzaza;->zzd(Landroid/content/Context;I)I

    move-result p2

    .line 76
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzaqr;->zzj(II)V

    .line 78
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Dispatching Ready Event."

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzew(Ljava/lang/String;)V

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabj()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqq;->zzdt(Ljava/lang/String;)V

    return-void
.end method

.method public final zzj(II)V
    .locals 5

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    aget v1, v0, v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacv()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacv()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbft;->zzaeo()Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getWidth()I

    move-result v0

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbeb;->getHeight()I

    move-result v2

    .line 19
    sget-object v3, Lcom/google/android/gms/internal/ads/zzabp;->zzcnu:Lcom/google/android/gms/internal/ads/zzaba;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacv()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacv()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbft;->widthPixels:I

    :cond_2
    if-nez v2, :cond_3

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacv()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacv()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbft;->heightPixels:I

    .line 26
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaqr;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzaza;->zzd(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqk:I

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqr;->context:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzaza;->zzd(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdql:I

    :cond_4
    sub-int v0, p2, v1

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqk:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdql:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqq;->zzb(IIII)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfn;->zzi(II)V

    return-void
.end method
