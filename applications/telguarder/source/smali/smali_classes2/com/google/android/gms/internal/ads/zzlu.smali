.class final Lcom/google/android/gms/internal/ads/zzlu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field public zzaxc:I

.field public zzbao:Lcom/google/android/gms/internal/ads/zzlg;

.field public zzbap:J

.field public zzbaq:J

.field public zzbar:J

.field public zzbas:I

.field public zzbat:[J

.field public zzbau:[I

.field public zzbav:[I

.field public zzbaw:[I

.field public zzbax:[J

.field public zzbay:[Z

.field public zzbaz:Z

.field public zzbba:[Z

.field public zzbbb:Lcom/google/android/gms/internal/ads/zzlr;

.field public zzbbc:I

.field public zzbbd:Lcom/google/android/gms/internal/ads/zzpn;

.field public zzbbe:Z

.field public zzbbf:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzau(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzbbd:Lcom/google/android/gms/internal/ads/zzpn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->limit()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzbbd:Lcom/google/android/gms/internal/ads/zzpn;

    .line 4
    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzbbc:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzbaz:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzbbe:Z

    return-void
.end method

.method public final zzav(I)J
    .locals 5

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzbax:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzbaw:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method
