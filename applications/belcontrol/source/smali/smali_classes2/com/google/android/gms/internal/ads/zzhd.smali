.class public abstract Lcom/google/android/gms/internal/ads/zzhd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhy;
.implements Lcom/google/android/gms/internal/ads/zzib;


# instance fields
.field private index:I

.field private state:I

.field private final zzaed:I

.field private zzaee:Lcom/google/android/gms/internal/ads/zzia;

.field private zzaef:Lcom/google/android/gms/internal/ads/zznn;

.field private zzaeg:J

.field private zzaeh:Z

.field private zzaei:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaed:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaeh:Z

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(Z)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhd;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaef:Lcom/google/android/gms/internal/ads/zznn;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaei:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzeh()V

    return-void
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->index:I

    return v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->state:I

    return v0
.end method

.method public final getTrackType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaed:I

    return v0
.end method

.method public onStarted()V
    .locals 0

    return-void
.end method

.method public onStopped()V
    .locals 0

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhd;->index:I

    return-void
.end method

.method public final start()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->state:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhd;->onStarted()V

    return-void
.end method

.method public final stop()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(Z)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->state:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhd;->onStopped()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhv;Lcom/google/android/gms/internal/ads/zzjp;Z)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaef:Lcom/google/android/gms/internal/ads/zznn;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zznn;->zzb(Lcom/google/android/gms/internal/ads/zzhv;Lcom/google/android/gms/internal/ads/zzjp;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzji;->zzgi()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaeh:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaei:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    :cond_1
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzjp;->zzaol:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaeg:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzjp;->zzaol:J

    goto :goto_0

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzhv;->zzahz:Lcom/google/android/gms/internal/ads/zzht;

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzht;->zzaht:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaeg:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzht;->zzds(J)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzhv;->zzahz:Lcom/google/android/gms/internal/ads/zzht;

    :cond_3
    :goto_0
    return p3
.end method

.method public zza(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public zza(JZ)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzia;[Lcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zznn;JZJ)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaee:Lcom/google/android/gms/internal/ads/zzia;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->state:I

    invoke-virtual {p0, p6}, Lcom/google/android/gms/internal/ads/zzhd;->zze(Z)V

    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/google/android/gms/internal/ads/zzhd;->zza([Lcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zznn;J)V

    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzhd;->zza(JZ)V

    return-void
.end method

.method public zza([Lcom/google/android/gms/internal/ads/zzht;J)V
    .locals 0

    return-void
.end method

.method public final zza([Lcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zznn;J)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaei:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaef:Lcom/google/android/gms/internal/ads/zznn;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaeh:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaeg:J

    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzhd;->zza([Lcom/google/android/gms/internal/ads/zzht;J)V

    return-void
.end method

.method public final zzdm(J)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaei:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaeh:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzhd;->zza(JZ)V

    return-void
.end method

.method public final zzdn(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaef:Lcom/google/android/gms/internal/ads/zznn;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaeg:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zznn;->zzeh(J)V

    return-void
.end method

.method public final zzdz()Lcom/google/android/gms/internal/ads/zzib;
    .locals 0

    return-object p0
.end method

.method public zze(Z)V
    .locals 0

    return-void
.end method

.method public zzea()Lcom/google/android/gms/internal/ads/zzpk;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzeb()Lcom/google/android/gms/internal/ads/zznn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaef:Lcom/google/android/gms/internal/ads/zznn;

    return-object v0
.end method

.method public final zzec()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaeh:Z

    return v0
.end method

.method public final zzed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaei:Z

    return-void
.end method

.method public final zzee()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaei:Z

    return v0
.end method

.method public final zzef()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaef:Lcom/google/android/gms/internal/ads/zznn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznn;->zzhs()V

    return-void
.end method

.method public zzeg()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzeh()V
    .locals 0

    return-void
.end method

.method public final zzei()Lcom/google/android/gms/internal/ads/zzia;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaee:Lcom/google/android/gms/internal/ads/zzia;

    return-object v0
.end method

.method public final zzej()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaeh:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaei:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzaef:Lcom/google/android/gms/internal/ads/zznn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznn;->isReady()Z

    move-result v0

    return v0
.end method
