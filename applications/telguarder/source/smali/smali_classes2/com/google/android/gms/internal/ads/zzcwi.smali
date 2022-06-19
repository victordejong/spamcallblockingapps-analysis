.class public final Lcom/google/android/gms/internal/ads/zzcwi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzfwz:Lcom/google/android/gms/internal/ads/zzdrj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgwi:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgwh:Lcom/google/android/gms/internal/ads/zzcrr;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzfqk:Lcom/google/android/gms/internal/ads/zzcro;

    return-void
.end method

.method static zza(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 38
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
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgwh:Lcom/google/android/gms/internal/ads/zzcrr;

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcrr;->zzb(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)Z
    .locals 0

    .line 7
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

    .line 9
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzfqk:Lcom/google/android/gms/internal/ads/zzcro;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjj:Lorg/json/JSONObject;

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzcro;->zzf(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcrl;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdnt; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcum;

    const-string p2, "unable to instantiate mediation adapter class"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcum;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>()V

    .line 19
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcwj;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcwj;-><init>(Lcom/google/android/gms/internal/ads/zzcwi;Lcom/google/android/gms/internal/ads/zzcrl;Lcom/google/android/gms/internal/ads/zzbaa;)V

    .line 20
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzbsu;->zza(Lcom/google/android/gms/internal/ads/zzbsx;)V

    .line 22
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzdxt:Z

    if-eqz v2, :cond_3

    .line 23
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkw:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvl;->zzchu:Landroid/os/Bundle;

    .line 24
    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 26
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-class v4, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const/4 v2, 0x1

    const-string v4, "render_test_ad_label"

    .line 28
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzfwz:Lcom/google/android/gms/internal/ads/zzdrj;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqu:Lcom/google/android/gms/internal/ads/zzdrk;

    .line 30
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdqv;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqz;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcwh;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcwh;-><init>(Lcom/google/android/gms/internal/ads/zzcwi;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgwi:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 31
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdqz;->zza(Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/internal/ads/zzdzv;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqv:Lcom/google/android/gms/internal/ads/zzdrk;

    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdrb;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object v2

    .line 33
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzdrb;->zze(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqw:Lcom/google/android/gms/internal/ads/zzdrk;

    .line 34
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdrb;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcwk;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcwk;-><init>(Lcom/google/android/gms/internal/ads/zzcwi;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)V

    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdrb;->zzb(Lcom/google/android/gms/internal/ads/zzdqu;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrb;->zzaxj()Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgwh:Lcom/google/android/gms/internal/ads/zzcrr;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcrr;->zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)V

    return-void
.end method
