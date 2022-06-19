.class public final Lcom/google/android/gms/internal/ads/aqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/auf;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/cpo;

.field private final c:Lcom/google/android/gms/internal/ads/zzbar;

.field private final d:Lcom/google/android/gms/ads/internal/util/zzf;

.field private final e:Lcom/google/android/gms/internal/ads/bmi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cpo;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/util/zzf;Lcom/google/android/gms/internal/ads/bmi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqg;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aqg;->b:Lcom/google/android/gms/internal/ads/cpo;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aqg;->c:Lcom/google/android/gms/internal/ads/zzbar;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aqg;->d:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/aqg;->e:Lcom/google/android/gms/internal/ads/bmi;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cpk;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 4

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->cd:Lcom/google/android/gms/internal/ads/af;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aqg;->d:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzg()Lcom/google/android/gms/internal/ads/ye;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzld()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqg;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aqg;->c:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aqg;->b:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/ads/internal/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ye;)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aqg;->e:Lcom/google/android/gms/internal/ads/bmi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bmi;->a()V

    return-void
.end method
