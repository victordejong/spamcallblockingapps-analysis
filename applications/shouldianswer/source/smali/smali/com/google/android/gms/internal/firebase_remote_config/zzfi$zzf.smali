.class public final Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;
.super Lcom/google/android/gms/internal/firebase_remote_config/zzhi;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_remote_config/zzis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_remote_config/zzfi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_remote_config/zzhi<",
        "Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;",
        "Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_remote_config/zzis;"
    }
.end annotation


# static fields
.field private static volatile zzml:Lcom/google/android/gms/internal/firebase_remote_config/zziz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_remote_config/zziz<",
            "Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzne:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;


# instance fields
.field private zzmg:I

.field private zzmt:Ljava/lang/String;

.field private zznc:I

.field private zznd:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;->zzne:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;

    .line 25
    const-class v0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;

    sget-object v1, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;->zzne:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_remote_config/zzhi;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;->zzmt:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzdx()Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;->zzne:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/firebase_remote_config/zzfh;->zzmf:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;->zzml:Lcom/google/android/gms/internal/firebase_remote_config/zziz;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;->zzml:Lcom/google/android/gms/internal/firebase_remote_config/zziz;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;->zzne:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zza;-><init>(Lcom/google/android/gms/internal/firebase_remote_config/zzhi;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;->zzml:Lcom/google/android/gms/internal/firebase_remote_config/zziz;

    .line 18
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

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;->zzne:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzmg"

    aput-object v0, p1, p2

    const-string p2, "zznc"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zznd"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzmt"

    aput-object p3, p1, p2

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;->zzne:Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0005\u0001\u0003\u0008\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;->zza(Lcom/google/android/gms/internal/firebase_remote_config/zziq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf$zza;-><init>(Lcom/google/android/gms/internal/firebase_remote_config/zzfh;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzfi$zzf;-><init>()V

    return-object p1

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
