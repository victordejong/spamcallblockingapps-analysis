.class public final Lcom/google/android/gms/internal/ads/zzebx;
.super Lcom/google/android/gms/internal/ads/zzeba;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeba<",
        "Lcom/google/android/gms/internal/ads/zzeef;",
        "Lcom/google/android/gms/internal/ads/zzeec;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzicv:Lcom/google/android/gms/internal/ads/zzebv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzebv;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebx;->zzicv:Lcom/google/android/gms/internal/ads/zzebv;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzeba;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzemo;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeef;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzebw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebw;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeax;->zzbao()Lcom/google/android/gms/internal/ads/zzeba;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeef;->zzbbq()Lcom/google/android/gms/internal/ads/zzeej;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeba;->zzd(Lcom/google/android/gms/internal/ads/zzemo;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzedn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzedn;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeax;->zzbao()Lcom/google/android/gms/internal/ads/zzeba;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeef;->zzbbr()Lcom/google/android/gms/internal/ads/zzefz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeba;->zzd(Lcom/google/android/gms/internal/ads/zzemo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeef;->zzbbq()Lcom/google/android/gms/internal/ads/zzeej;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeej;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeiv;->zzfu(I)V

    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzemo;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeef;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzebw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebw;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeax;->zzbao()Lcom/google/android/gms/internal/ads/zzeba;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeef;->zzbbq()Lcom/google/android/gms/internal/ads/zzeej;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeba;->zze(Lcom/google/android/gms/internal/ads/zzemo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeeg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzedn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzedn;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeax;->zzbao()Lcom/google/android/gms/internal/ads/zzeba;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeef;->zzbbr()Lcom/google/android/gms/internal/ads/zzefz;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzeba;->zze(Lcom/google/android/gms/internal/ads/zzemo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefv;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeec;->zzbbo()Lcom/google/android/gms/internal/ads/zzeec$zza;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzeec$zza;->zzc(Lcom/google/android/gms/internal/ads/zzeeg;)Lcom/google/android/gms/internal/ads/zzeec$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeec$zza;->zzc(Lcom/google/android/gms/internal/ads/zzefv;)Lcom/google/android/gms/internal/ads/zzeec$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeec$zza;->zzex(I)Lcom/google/android/gms/internal/ads/zzeec$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeec;

    return-object p1
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeef;->zzf(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzeef;

    move-result-object p1

    return-object p1
.end method
