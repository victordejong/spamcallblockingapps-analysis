.class public final Lcom/google/android/gms/internal/ads/zzcob;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

.field private final zzgnt:Lcom/google/android/gms/internal/ads/zzepv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzepv<",
            "Lcom/google/android/gms/internal/ads/zzcol;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgpg:Lcom/google/android/gms/internal/ads/zzcns;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzv;Lcom/google/android/gms/internal/ads/zzcns;Lcom/google/android/gms/internal/ads/zzepv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzv;",
            "Lcom/google/android/gms/internal/ads/zzcns;",
            "Lcom/google/android/gms/internal/ads/zzepv<",
            "Lcom/google/android/gms/internal/ads/zzcol;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcob;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcob;->zzgpg:Lcom/google/android/gms/internal/ads/zzcns;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcob;->zzgnt:Lcom/google/android/gms/internal/ads/zzepv;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/internal/ads/zzdyu;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RetT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            "Lcom/google/android/gms/internal/ads/zzcom<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzcom<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdyu<",
            "Ljava/io/InputStream;",
            "TRetT;>;)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "TRetT;>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatq;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzek(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcoc;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzcom;->zzq(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p2

    const-class v0, Ljava/util/concurrent/ExecutionException;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcoe;->zzboq:Lcom/google/android/gms/internal/ads/zzdyu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcob;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdzf;->zzg(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcob;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-virtual {p2, p4, v0}, Lcom/google/android/gms/internal/ads/zzdzf;->zzb(Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object p2

    const-class v0, Lcom/google/android/gms/internal/ads/zzcoc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcod;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/google/android/gms/internal/ads/zzcod;-><init>(Lcom/google/android/gms/internal/ads/zzcob;Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzdyu;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcob;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzdyu;Lcom/google/android/gms/internal/ads/zzcoc;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcom;->zzq(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcob;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcog;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcog;-><init>(Lcom/google/android/gms/internal/ads/zzatq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcob;->zzgpg:Lcom/google/android/gms/internal/ads/zzcns;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcof;->zza(Lcom/google/android/gms/internal/ads/zzcns;)Lcom/google/android/gms/internal/ads/zzcom;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcoi;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcoi;-><init>(Lcom/google/android/gms/internal/ads/zzcob;)V

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcob;->zza(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/internal/ads/zzdyu;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatq;->zzdxl:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfh;->zzar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcmb;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdom;->zzhlv:Lcom/google/android/gms/internal/ads/zzdom;

    const-string v1, "Pool key missing from removeUrl call."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcmb;-><init>(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcoh;->zzboq:Lcom/google/android/gms/internal/ads/zzdyu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcok;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcok;-><init>(Lcom/google/android/gms/internal/ads/zzcob;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcoj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcoj;-><init>(Lcom/google/android/gms/internal/ads/zzcob;)V

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcob;->zza(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/internal/ads/zzdyu;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzn(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcob;->zzgnt:Lcom/google/android/gms/internal/ads/zzepv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzepv;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcol;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatq;->zzdxl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcol;->zzgj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzo(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcob;->zzgpg:Lcom/google/android/gms/internal/ads/zzcns;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatq;->zzdxl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcns;->zzgi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzp(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcob;->zzgnt:Lcom/google/android/gms/internal/ads/zzepv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzepv;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcol;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcol;->zzc(Lcom/google/android/gms/internal/ads/zzatq;I)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
