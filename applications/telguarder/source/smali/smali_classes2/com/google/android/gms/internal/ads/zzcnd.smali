.class final Lcom/google/android/gms/internal/ads/zzcnd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "Lcom/google/android/gms/internal/ads/zzdnl;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgoj:Lcom/google/android/gms/internal/ads/zzcnc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnd;->zzgoj:Lcom/google/android/gms/internal/ads/zzcnc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdnl;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcxy:Lcom/google/android/gms/internal/ads/zzaba;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnd;->zzgoj:Lcom/google/android/gms/internal/ads/zzcnc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcnc;->zza(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzcqb;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdnb;->responseCode:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcqb;->zzea(I)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnd;->zzgoj:Lcom/google/android/gms/internal/ads/zzcnc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcnc;->zza(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzcqb;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzdnb;->zzgqe:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcqb;->zzeq(J)V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcxy:Lcom/google/android/gms/internal/ads/zzaba;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcnc;->zzarn()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnd;->zzgoj:Lcom/google/android/gms/internal/ads/zzcnc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcnc;->zza(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzcqb;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqb;->zzea(I)V

    :cond_0
    return-void
.end method
