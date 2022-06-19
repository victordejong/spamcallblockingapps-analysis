.class public final Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;
.super Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_remote_config/zzis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_remote_config/zzfi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_remote_config/zzhi<",
        "Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;",
        "Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_remote_config/zzis;"
    }
.end annotation


# static fields
.field private static volatile zzml:Lcom/google/android/gms/internal/firebase_remote_config/zziz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_remote_config/zziz<",
            "Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;",
            ">;"
        }
    .end annotation
.end field

.field private static final zznb:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;


# instance fields
.field private zzmg:I

.field private zzmw:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;

.field private zzmx:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;

.field private zzmy:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;

.field private zzmz:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzc;

.field private zzna:Lcom/google/android/gms/internal/firebase_remote_config/zzhn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_remote_config/zzhn<",
            "Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zznb:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;

    .line 29
    const-class v0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;

    sget-object v1, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zznb:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_remote_config/zzhi;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zzgt()Lcom/google/android/gms/internal/firebase_remote_config/zzhn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zzna:Lcom/google/android/gms/internal/firebase_remote_config/zzhn;

    return-void
.end method

.method public static zzb(Ljava/io/InputStream;)Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zznb:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;->zza(Lcom/google/android/gms/internal/firebase_remote_config/zzhi;Ljava/io/InputStream;)Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;

    return-object p0
.end method

.method static synthetic zzdw()Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zznb:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/firebase_remote_config/zzfh;->zzmf:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 24
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zzml:Lcom/google/android/gms/internal/firebase_remote_config/zziz;

    if-nez p1, :cond_1

    .line 17
    const-class p2, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;

    monitor-enter p2

    .line 18
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zzml:Lcom/google/android/gms/internal/firebase_remote_config/zziz;

    if-nez p1, :cond_0

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zznb:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zza;-><init>(Lcom/google/android/gms/internal/firebase_remote_config/zzhi;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zzml:Lcom/google/android/gms/internal/firebase_remote_config/zziz;

    .line 22
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

    .line 14
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zznb:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzmg"

    aput-object v0, p1, p2

    const-string p2, "zzmw"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzmx"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzmy"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzmz"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzna"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 11
    const-class p3, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;

    aput-object p3, p1, p2

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zznb:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002\u0004\t\u0003\u0005\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zza(Lcom/google/android/gms/internal/firebase_remote_config/zziq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze$zza;-><init>(Lcom/google/android/gms/internal/firebase_remote_config/zzfh;)V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;-><init>()V

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

.method public final zzdt()Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zzmw:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;->zzdm()Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzdu()Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zzmx:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;->zzdm()Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzdv()Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zze;->zzmy:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;->zzdm()Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zza;

    move-result-object v0

    :cond_0
    return-object v0
.end method
