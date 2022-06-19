.class public final Lcom/google/android/gms/internal/ads/zzna;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznd;
.implements Lcom/google/android/gms/internal/ads/zzne;


# instance fields
.field private final uri:Landroid/net/Uri;

.field private final zzaet:Landroid/os/Handler;

.field private final zzaex:Lcom/google/android/gms/internal/ads/zzif;

.field private zzafe:Lcom/google/android/gms/internal/ads/zzid;

.field private final zzbdm:I

.field private final zzbdn:Lcom/google/android/gms/internal/ads/zzmz;

.field private zzbdo:Lcom/google/android/gms/internal/ads/zznd;

.field private final zzbdq:Ljava/lang/String;

.field private final zzbeu:Lcom/google/android/gms/internal/ads/zzoq;

.field private final zzbev:Lcom/google/android/gms/internal/ads/zzkb;

.field private final zzbew:I

.field private zzbex:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzoq;Lcom/google/android/gms/internal/ads/zzkb;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzmz;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzna;->uri:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbeu:Lcom/google/android/gms/internal/ads/zzoq;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbev:Lcom/google/android/gms/internal/ads/zzkb;

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbdm:I

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzna;->zzaet:Landroid/os/Handler;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbdn:Lcom/google/android/gms/internal/ads/zzmz;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbdq:Ljava/lang/String;

    .line 9
    iput p8, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbew:I

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzif;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzif;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzol;)Lcom/google/android/gms/internal/ads/zznc;
    .locals 11

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpg;->checkArgument(Z)V

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzms;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzna;->uri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbeu:Lcom/google/android/gms/internal/ads/zzoq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoq;->zzip()Lcom/google/android/gms/internal/ads/zzon;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbev:Lcom/google/android/gms/internal/ads/zzkb;

    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkb;->zzgr()[Lcom/google/android/gms/internal/ads/zzka;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbdm:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzna;->zzaet:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbdn:Lcom/google/android/gms/internal/ads/zzmz;

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbew:I

    move-object v0, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzms;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzon;[Lcom/google/android/gms/internal/ads/zzka;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzmz;Lcom/google/android/gms/internal/ads/zznd;Lcom/google/android/gms/internal/ads/zzol;Ljava/lang/String;I)V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhh;ZLcom/google/android/gms/internal/ads/zznd;)V
    .locals 2

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbdo:Lcom/google/android/gms/internal/ads/zznd;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzns;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzns;-><init>(JZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    const/4 p2, 0x0

    .line 14
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zznd;->zzb(Lcom/google/android/gms/internal/ads/zzid;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzid;Ljava/lang/Object;)V
    .locals 5

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzna;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0, p2, v0}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object p2

    .line 27
    iget-wide v1, p2, Lcom/google/android/gms/internal/ads/zzif;->zzaip:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 29
    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbex:Z

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 31
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbex:Z

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbdo:Lcom/google/android/gms/internal/ads/zznd;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zznd;->zzb(Lcom/google/android/gms/internal/ads/zzid;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznc;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/google/android/gms/internal/ads/zzms;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzms;->release()V

    return-void
.end method

.method public final zzhz()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final zzia()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzna;->zzbdo:Lcom/google/android/gms/internal/ads/zznd;

    return-void
.end method
