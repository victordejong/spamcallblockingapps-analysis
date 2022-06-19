.class public final Lcom/google/android/gms/internal/measurement/zzbj$zza;
.super Lcom/google/android/gms/internal/measurement/zzfd;
.source "com.google.android.gms:play-services-measurement@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzgq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzbj$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzfd<",
        "Lcom/google/android/gms/internal/measurement/zzbj$zza;",
        "Lcom/google/android/gms/internal/measurement/zzbj$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzgq;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzbj$zza;

.field private static volatile zzj:Lcom/google/android/gms/internal/measurement/zzgx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgx<",
            "Lcom/google/android/gms/internal/measurement/zzbj$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/zzfl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfl<",
            "Lcom/google/android/gms/internal/measurement/zzbj$zze;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/measurement/zzfl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfl<",
            "Lcom/google/android/gms/internal/measurement/zzbj$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Z

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbj$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbj$zza;-><init>()V

    .line 50
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbj$zza;

    .line 51
    const-class v1, Lcom/google/android/gms/internal/measurement/zzbj$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzfd;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzfd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfd;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzbq()Lcom/google/android/gms/internal/measurement/zzfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfl;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzbq()Lcom/google/android/gms/internal/measurement/zzfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfl;

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/measurement/zzbj$zzb;)V
    .locals 1

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzfl;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfl;

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfd;->zza(Lcom/google/android/gms/internal/measurement/zzfl;)Lcom/google/android/gms/internal/measurement/zzfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfl;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfl;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/measurement/zzbj$zze;)V
    .locals 1

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzfl;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfl;

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfd;->zza(Lcom/google/android/gms/internal/measurement/zzfl;)Lcom/google/android/gms/internal/measurement/zzfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfl;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfl;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbj$zza;ILcom/google/android/gms/internal/measurement/zzbj$zzb;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbj$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbj$zza;ILcom/google/android/gms/internal/measurement/zzbj$zze;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbj$zze;)V

    return-void
.end method

.method static synthetic zzg()Lcom/google/android/gms/internal/measurement/zzbj$zza;
    .locals 1

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbj$zza;

    return-object v0
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzbj$zze;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfl;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzbj$zze;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 27
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbk;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 45
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 43
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 34
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzj:Lcom/google/android/gms/internal/measurement/zzgx;

    if-nez p1, :cond_1

    .line 36
    const-class p2, Lcom/google/android/gms/internal/measurement/zzbj$zza;

    monitor-enter p2

    .line 37
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzj:Lcom/google/android/gms/internal/measurement/zzgx;

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfd$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbj$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzfd$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfd;)V

    .line 40
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzj:Lcom/google/android/gms/internal/measurement/zzgx;

    .line 41
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 33
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbj$zza;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 30
    const-class p3, Lcom/google/android/gms/internal/measurement/zzbj$zze;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/google/android/gms/internal/measurement/zzbj$zzb;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzh"

    aput-object p3, p1, p2

    .line 32
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbj$zza;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u0004\u0000\u0002\u001b\u0003\u001b\u0004\u0007\u0001\u0005\u0007\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbj$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbj$zza$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzbk;)V

    return-object p1

    .line 28
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbj$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzbj$zza;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza()Z
    .locals 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzd:I

    return v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzbj$zzb;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfl;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzbj$zzb;

    return-object p1
.end method

.method public final zzc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbj$zze;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfl;

    return-object v0
.end method

.method public final zzd()I
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zze:Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzfl;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbj$zzb;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfl;

    return-object v0
.end method

.method public final zzf()I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbj$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzfl;->size()I

    move-result v0

    return v0
.end method
