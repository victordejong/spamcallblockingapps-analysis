.class public final Lcom/google/android/gms/internal/ads/zzcwi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        "ListenerT::Lcom/google/android/gms/internal/ads/zzbsu;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcrj<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final zzfqk:Lcom/google/android/gms/internal/ads/zzcro;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcro<",
            "TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfwz:Lcom/google/android/gms/internal/ads/zzdrj;

.field private final zzgwh:Lcom/google/android/gms/internal/ads/zzcrr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcrr<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgwi:Lcom/google/android/gms/internal/ads/zzdzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdrj;Lcom/google/android/gms/internal/ads/zzdzv;Lcom/google/android/gms/internal/ads/zzcro;Lcom/google/android/gms/internal/ads/zzcrr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdrj;",
            "Lcom/google/android/gms/internal/ads/zzdzv;",
            "Lcom/google/android/gms/internal/ads/zzcro<",
            "TAdapterT;T",
            "ListenerT;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzcrr<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzfwz:Lcom/google/android/gms/internal/ads/zzdrj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgwi:Lcom/google/android/gms/internal/ads/zzdzv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgwh:Lcom/google/android/gms/internal/ads/zzcrr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzfqk:Lcom/google/android/gms/internal/ads/zzcro;

    return-void
.end method

.method public static zza(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Error from: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", code: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgwh:Lcom/google/android/gms/internal/ads/zzcrr;

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcrr;->zzb(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)Z
    .locals 0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjh:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdnl;",
            "Lcom/google/android/gms/internal/ads/zzdmw;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "TAdT;>;"
        }
    .end annotation

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzfqk:Lcom/google/android/gms/internal/ads/zzcro;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjj:Lorg/json/JSONObject;

    invoke-interface {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzcro;->zzf(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcrl;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdnt; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcum;

    const-string p2, "unable to instantiate mediation adapter class"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcum;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcwj;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcwj;-><init>(Lcom/google/android/gms/internal/ads/zzcwi;Lcom/google/android/gms/internal/ads/zzcrl;Lcom/google/android/gms/internal/ads/zzbaa;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzbsu;->zza(Lcom/google/android/gms/internal/ads/zzbsx;)V

    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzdxt:Z

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkw:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvl;->zzchu:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    const-string v3, "render_test_ad_label"

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzfwz:Lcom/google/android/gms/internal/ads/zzdrj;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqu:Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdqv;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqz;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcwh;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcwh;-><init>(Lcom/google/android/gms/internal/ads/zzcwi;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgwi:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdqz;->zza(Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/internal/ads/zzdzv;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqv:Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdrb;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdrb;->zze(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqw:Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdrb;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcwk;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcwk;-><init>(Lcom/google/android/gms/internal/ads/zzcwi;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdrb;->zzb(Lcom/google/android/gms/internal/ads/zzdqu;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrb;->zzaxj()Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgwh:Lcom/google/android/gms/internal/ads/zzcrr;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcrr;->zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)V

    return-void
.end method
