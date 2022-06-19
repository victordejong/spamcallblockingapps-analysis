.class public final Lcom/google/android/gms/internal/ads/zzdbt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final zzcjn:Ljava/lang/String;

.field private final zzdug:Ljava/lang/String;

.field private final zzeaw:Lcom/google/android/gms/ads/internal/util/zzf;

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

.field private final zzhbd:Lcom/google/android/gms/internal/ads/zzbpf;

.field private final zzhbe:Lcom/google/android/gms/internal/ads/zzdop;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbt;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpf;Lcom/google/android/gms/internal/ads/zzdop;Lcom/google/android/gms/internal/ads/zzdnp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzdug:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzcjn:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzhbd:Lcom/google/android/gms/internal/ads/zzbpf;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzhbe:Lcom/google/android/gms/internal/ads/zzdop;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayo;->zzxs()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzeaw:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method


# virtual methods
.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcwq:Lcom/google/android/gms/internal/ads/zzaba;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzhbd:Lcom/google/android/gms/internal/ads/zzbpf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkw:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbpf;->zzf(Lcom/google/android/gms/internal/ads/zzvl;)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzhbe:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdop;->zzavn()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 15
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdbs;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdbs;-><init>(Lcom/google/android/gms/internal/ads/zzdbt;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcwq:Lcom/google/android/gms/internal/ads/zzaba;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "quality_signals"

    .line 19
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcwp:Lcom/google/android/gms/internal/ads/zzaba;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdbt;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzhbd:Lcom/google/android/gms/internal/ads/zzbpf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkw:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbpf;->zzf(Lcom/google/android/gms/internal/ads/zzvl;)V

    const-string v0, "quality_signals"

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzhbe:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdop;->zzavn()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 26
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzhbd:Lcom/google/android/gms/internal/ads/zzbpf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkw:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbpf;->zzf(Lcom/google/android/gms/internal/ads/zzvl;)V

    const-string p1, "quality_signals"

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzhbe:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdop;->zzavn()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    const-string p1, "seq_num"

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzdug:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzeaw:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzyu()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzcjn:Ljava/lang/String;

    :goto_1
    const-string v0, "session_id"

    .line 31
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
