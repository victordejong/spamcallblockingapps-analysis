.class final Lcom/google/android/gms/internal/ads/zzlm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field public final zzasp:Lcom/google/android/gms/internal/ads/zzkh;

.field public final zzazr:Lcom/google/android/gms/internal/ads/zzlu;

.field public zzazs:Lcom/google/android/gms/internal/ads/zzls;

.field public zzazt:Lcom/google/android/gms/internal/ads/zzlg;

.field public zzazu:I

.field public zzazv:I

.field public zzazw:I

.field public zzazx:Lcom/google/android/gms/internal/ads/zzkk;

.field public zzazy:Lcom/google/android/gms/internal/ads/zzlr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzkh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzlu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzasp:Lcom/google/android/gms/internal/ads/zzkh;

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzlu;->zzbas:I

    const-wide/16 v2, 0x0

    .line 12
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzlu;->zzbbf:J

    .line 13
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzlu;->zzbaz:Z

    .line 14
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzlu;->zzbbe:Z

    const/4 v2, 0x0

    .line 15
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlu;->zzbbb:Lcom/google/android/gms/internal/ads/zzlr;

    .line 16
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazu:I

    .line 17
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazw:I

    .line 18
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazv:I

    .line 19
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazx:Lcom/google/android/gms/internal/ads/zzkk;

    .line 20
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazy:Lcom/google/android/gms/internal/ads/zzlr;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzlg;)V
    .locals 1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpg;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzls;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzpg;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzlg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazt:Lcom/google/android/gms/internal/ads/zzlg;

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzasp:Lcom/google/android/gms/internal/ads/zzkh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzls;->zzahz:Lcom/google/android/gms/internal/ads/zzht;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzkh;->zze(Lcom/google/android/gms/internal/ads/zzht;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlm;->reset()V

    return-void
.end method
