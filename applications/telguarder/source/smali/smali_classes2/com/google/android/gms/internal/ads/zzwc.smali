.class public Lcom/google/android/gms/internal/ads/zzwc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private final zzcix:Lcom/google/android/gms/internal/ads/zzvj;

.field private final zzciy:Lcom/google/android/gms/internal/ads/zzvk;

.field private final zzciz:Lcom/google/android/gms/internal/ads/zzzz;

.field private final zzcja:Lcom/google/android/gms/internal/ads/zzagv;

.field private final zzcjb:Lcom/google/android/gms/internal/ads/zzauy;

.field private final zzcjc:Lcom/google/android/gms/internal/ads/zzawc;

.field private final zzcjd:Lcom/google/android/gms/internal/ads/zzarp;

.field private final zzcje:Lcom/google/android/gms/internal/ads/zzagu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvj;Lcom/google/android/gms/internal/ads/zzvk;Lcom/google/android/gms/internal/ads/zzzz;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/internal/ads/zzauy;Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/zzarp;Lcom/google/android/gms/internal/ads/zzagu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcix:Lcom/google/android/gms/internal/ads/zzvj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzciy:Lcom/google/android/gms/internal/ads/zzvk;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzciz:Lcom/google/android/gms/internal/ads/zzzz;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcja:Lcom/google/android/gms/internal/ads/zzagv;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcjb:Lcom/google/android/gms/internal/ads/zzauy;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcjc:Lcom/google/android/gms/internal/ads/zzawc;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcjd:Lcom/google/android/gms/internal/ads/zzarp;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcje:Lcom/google/android/gms/internal/ads/zzagu;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzvj;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcix:Lcom/google/android/gms/internal/ads/zzvj;

    return-object p0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 11
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    .line 12
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    .line 13
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqt()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaza;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzvk;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzciy:Lcom/google/android/gms/internal/ads/zzvk;

    return-object p0
.end method

.method static synthetic zzb(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzwc;->zza(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzzz;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzciz:Lcom/google/android/gms/internal/ads/zzzz;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzagv;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcja:Lcom/google/android/gms/internal/ads/zzagv;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzagu;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcje:Lcom/google/android/gms/internal/ads/zzagu;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzauy;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcjb:Lcom/google/android/gms/internal/ads/zzauy;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzarp;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzcjd:Lcom/google/android/gms/internal/ads/zzarp;

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzaev;
    .locals 1

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwn;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzwn;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 31
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 32
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaev;

    return-object p1
.end method

.method public final zza(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/zzaey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzaey;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwq;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwq;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 37
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaey;

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzaxy;
    .locals 1

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwg;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)V

    const/4 p2, 0x0

    .line 53
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 54
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaxy;

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzxl;
    .locals 7

    .line 18
    new-instance v6, Lcom/google/android/gms/internal/ads/zzwk;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)V

    const/4 p2, 0x0

    .line 19
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxl;

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzarf;
    .locals 1

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwi;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwi;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)V

    const/4 p2, 0x0

    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 58
    check-cast p1, Lcom/google/android/gms/internal/ads/zzarf;

    return-object p1
.end method

.method public final zzb(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzaro;
    .locals 5

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzwd;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/app/Activity;)V

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v1, "useClientJar flag not found in activity intent extras."

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 50
    :goto_0
    invoke-virtual {v0, p1, v4}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaro;

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzxi;
    .locals 1

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwl;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)V

    const/4 p2, 0x0

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 28
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxi;

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzxl;
    .locals 7

    .line 22
    new-instance v6, Lcom/google/android/gms/internal/ads/zzwm;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzwm;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)V

    const/4 p2, 0x0

    .line 23
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 24
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxl;

    return-object p1
.end method

.method public final zzc(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzavm;
    .locals 1

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwe;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwe;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)V

    const/4 p2, 0x0

    .line 40
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 41
    check-cast p1, Lcom/google/android/gms/internal/ads/zzavm;

    return-object p1
.end method
