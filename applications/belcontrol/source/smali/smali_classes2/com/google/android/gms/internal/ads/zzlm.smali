.class public final Lcom/google/android/gms/internal/ads/zzlm;
.super Ljava/lang/Object;
.source ""


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzlu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzasp:Lcom/google/android/gms/internal/ads/zzkh;

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzlu;->zzbas:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzlu;->zzbbf:J

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzlu;->zzbaz:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzlu;->zzbbe:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlu;->zzbbb:Lcom/google/android/gms/internal/ads/zzlr;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazu:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazw:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazv:I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazx:Lcom/google/android/gms/internal/ads/zzkk;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazy:Lcom/google/android/gms/internal/ads/zzlr;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzlg;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpg;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzls;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzpg;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzlg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzazt:Lcom/google/android/gms/internal/ads/zzlg;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlm;->zzasp:Lcom/google/android/gms/internal/ads/zzkh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzls;->zzahz:Lcom/google/android/gms/internal/ads/zzht;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzkh;->zze(Lcom/google/android/gms/internal/ads/zzht;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlm;->reset()V

    return-void
.end method
