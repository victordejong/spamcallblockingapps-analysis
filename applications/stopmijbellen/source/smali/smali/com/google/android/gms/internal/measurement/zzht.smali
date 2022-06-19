.class public abstract Lcom/google/android/gms/internal/measurement/zzht;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic zzc:I = 0x0

.field private static final zzd:Ljava/lang/Object;

.field private static volatile zze:Lcom/google/android/gms/internal/measurement/zzhs; = null
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile zzf:Z = false

.field private static final zzg:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/measurement/zzht<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzhv;

.field private static final zzj:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/measurement/zzhr;

.field public final zzb:Ljava/lang/String;

.field private final zzi:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile zzk:I

.field private volatile zzl:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzm:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzht;->zzd:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzht;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhv;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhm;->zza:Lcom/google/android/gms/internal/measurement/zzhw;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhv;-><init>(Lcom/google/android/gms/internal/measurement/zzhw;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzht;->zzh:Lcom/google/android/gms/internal/measurement/zzhv;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzht;->zzj:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/measurement/zzhn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzk:I

    iget-object p4, p1, Lcom/google/android/gms/internal/measurement/zzhr;->zzb:Landroid/net/Uri;

    if-eqz p4, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzi:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzm:Z

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Landroid/content/Context;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzht;->zzd:Ljava/lang/Object;

    .line 1
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzht;->zze:Lcom/google/android/gms/internal/measurement/zzhs;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p0, v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhs;->zza()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 3
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzha;->zzd()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhu;->zzb()V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhh;->zzc()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzhl;

    .line 6
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzhl;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgx;

    .line 8
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/zzgx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzib;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzht;->zze:Lcom/google/android/gms/internal/measurement/zzhs;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzht;->zzj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static zzc()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzht;->zzj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zzd:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzb:Ljava/lang/String;

    const-string v1, "flagName must not be null"

    .line 1
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzht;->zzj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzk:I

    if-ge v1, v0, :cond_c

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzk:I

    if-ge v1, v0, :cond_b

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzht;->zze:Lcom/google/android/gms/internal/measurement/zzhs;

    const-string v2, "Must call PhenotypeFlag.init() first"

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    .line 4
    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/zzhr;->zzf:Z

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhs;->zza()Landroid/content/Context;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzhh;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzhh;

    move-result-object v2

    const-string v3, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzhh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 8
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzgv;->zzc:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PhenotypeFlag"

    const/4 v4, 0x3

    .line 9
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Bypass reading Phenotype values for flag: "

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzht;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    move-object v2, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    .line 11
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzhr;->zzb:Landroid/net/Uri;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhs;->zza()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    .line 12
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzhr;->zzb:Landroid/net/Uri;

    .line 13
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zza(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    .line 14
    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/zzhr;->zzh:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhs;->zza()Landroid/content/Context;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzhr;->zzb:Landroid/net/Uri;

    .line 16
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzha;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/zzha;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhs;->zza()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    .line 18
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzhu;->zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhu;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzht;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/measurement/zzhe;->zze(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzht;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    .line 22
    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/zzhr;->zze:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhs;->zza()Landroid/content/Context;

    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzhh;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzhh;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    .line 24
    iget-boolean v4, v4, Lcom/google/android/gms/internal/measurement/zzhr;->zze:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzb:Ljava/lang/String;

    .line 25
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzhh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 26
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzht;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v3

    :goto_2
    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzi:Ljava/lang/Object;

    .line 27
    :cond_7
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhs;->zzb()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhz;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhi;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzhr;->zzb:Landroid/net/Uri;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzhr;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzb:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v4, v3, v2, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzi:Ljava/lang/Object;

    goto :goto_4

    .line 32
    :cond_8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzht;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 33
    :cond_9
    :goto_4
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzl:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzk:I

    goto :goto_5

    .line 34
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_b
    :goto_5
    monitor-exit p0

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzl:Ljava/lang/Object;

    return-object v0
.end method
