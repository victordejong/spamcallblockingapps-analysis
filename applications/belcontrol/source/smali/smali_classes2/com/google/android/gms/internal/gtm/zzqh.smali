.class public final Lcom/google/android/gms/internal/gtm/zzqh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzsy;


# instance fields
.field private tag:I

.field private final zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

.field private zzawq:I

.field private zzawr:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/gtm/zzqe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzre;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzqe;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    iput-object p0, p1, Lcom/google/android/gms/internal/gtm/zzqe;->zzawi:Lcom/google/android/gms/internal/gtm/zzqh;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/gtm/zzqe;)Lcom/google/android/gms/internal/gtm/zzqh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqe;->zzawi:Lcom/google/android/gms/internal/gtm/zzqh;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzqh;-><init>(Lcom/google/android/gms/internal/gtm/zzqe;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/gtm/zzug;Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzug;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzqi;->zzaws:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznj()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznr()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznp()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznw()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznv()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznu()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzsw;->zzqs()Lcom/google/android/gms/internal/gtm/zzsw;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzsw;->zzi(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzsz;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzqh;->zzc(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznk()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznl()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznm()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznn()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzns()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznq()Lcom/google/android/gms/internal/gtm/zzps;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzno()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrt;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrt;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznq()Lcom/google/android/gms/internal/gtm/zzps;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrt;->zzc(Lcom/google/android/gms/internal/gtm/zzps;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1
.end method

.method private final zzat(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1
.end method

.method private static zzau(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpv()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p0

    throw p0
.end method

.method private static zzav(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpv()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p0

    throw p0
.end method

.method private final zzaw(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
.end method

.method private final zzc(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzsz<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    iget v2, v1, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    iget v3, v1, Lcom/google/android/gms/internal/gtm/zzqe;->zzawg:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzaq(I)I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzsz;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    iget v3, v2, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/gtm/zzsz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzsy;Lcom/google/android/gms/internal/gtm/zzqp;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/gtm/zzsz;->zzt(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzqe;->zzan(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    iget p2, p1, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzar(I)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpu()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
.end method

.method private final zzd(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzsz<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")TT;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawq:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawq:I

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzsz;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/gtm/zzsz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzsy;Lcom/google/android/gms/internal/gtm/zzqp;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/gtm/zzsz;->zzt(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    iget p2, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawq:I

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpv()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawq:I

    throw p1
.end method


# virtual methods
.method public final getTag()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    return v0
.end method

.method public final readDouble()D
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readFloat()F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzsz<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzqh;->zzc(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzsz<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zzqh;->zzc(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/gtm/zzsd;Lcom/google/android/gms/internal/gtm/zzqp;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/gtm/zzsd<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzaq(I)I

    move-result v1

    iget-object v2, p2, Lcom/google/android/gms/internal/gtm/zzsd;->zzbcq:Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/gms/internal/gtm/zzsd;->zzbcs:Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzog()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzoh()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p2, Lcom/google/android/gms/internal/gtm/zzsd;->zzbcr:Lcom/google/android/gms/internal/gtm/zzug;

    iget-object v5, p2, Lcom/google/android/gms/internal/gtm/zzsd;->zzbcs:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/gms/internal/gtm/zzqh;->zza(Lcom/google/android/gms/internal/gtm/zzug;Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v4, p2, Lcom/google/android/gms/internal/gtm/zzsd;->zzbcp:Lcom/google/android/gms/internal/gtm/zzug;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/android/gms/internal/gtm/zzqh;->zza(Lcom/google/android/gms/internal/gtm/zzug;Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/gtm/zzrl; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzoh()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-direct {p1, v6}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzar(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzar(I)V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzsz<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzqh;->zzd(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzsz<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zzqh;->zzd(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzqm;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzqm;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzau(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->readDouble()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzqm;->zzd(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzqm;->zzd(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzau(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzqz;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzqz;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzqz;->zzc(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzav(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzqz;->zzc(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzav(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzry;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzry;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznj()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznj()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznj()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznj()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzry;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzry;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznk()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznk()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrd;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznl()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznl()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzry;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzry;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzau(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznm()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznm()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzau(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznm()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznm()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrd;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznn()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzav(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznn()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzav(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzpq;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzpq;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzno()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzpq;->addBoolean(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzno()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzpq;->addBoolean(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzno()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzno()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zznj()J
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznj()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznk()J
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznl()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznl()I

    move-result v0

    return v0
.end method

.method public final zznm()J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznm()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznn()I
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznn()I

    move-result v0

    return v0
.end method

.method public final zzno()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzno()Z

    move-result v0

    return v0
.end method

.method public final zznp()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zznq()Lcom/google/android/gms/internal/gtm/zzps;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznq()Lcom/google/android/gms/internal/gtm/zzps;

    move-result-object v0

    return-object v0
.end method

.method public final zznr()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    return v0
.end method

.method public final zzns()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzns()I

    move-result v0

    return v0
.end method

.method public final zznt()I
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznt()I

    move-result v0

    return v0
.end method

.method public final zznu()J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznu()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznv()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznv()I

    move-result v0

    return v0
.end method

.method public final zznw()J
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznw()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzog()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawq:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzoh()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawq:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzao(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzps;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznq()Lcom/google/android/gms/internal/gtm/zzps;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1
.end method

.method public final zzq(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrd;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzr(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrd;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzns()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzns()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzns()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzns()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzs(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrd;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznt()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzav(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznt()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzav(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzt(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzry;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzry;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzau(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznu()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznu()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzau(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznu()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznu()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzu(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrd;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznv()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznv()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzv(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzry;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzry;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznw()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznw()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznw()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznw()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method
