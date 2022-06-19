.class public final Lcom/google/android/gms/internal/ads/zzegl$zzb;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzegl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzegl$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzegl$zzb;",
        "Lcom/google/android/gms/internal/ads/zzegl$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzegl$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzihw:Lcom/google/android/gms/internal/ads/zzegl$zzb;


# instance fields
.field private zzihj:I

.field private zziht:Lcom/google/android/gms/internal/ads/zzegd;

.field private zzihu:I

.field private zzihv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegl$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzegl$zzb;-><init>()V

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/zzegl$zzb;->zzihw:Lcom/google/android/gms/internal/ads/zzegl$zzb;

    .line 32
    const-class v1, Lcom/google/android/gms/internal/ads/zzegl$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    return-void
.end method

.method static synthetic zzber()Lcom/google/android/gms/internal/ads/zzegl$zzb;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegl$zzb;->zzihw:Lcom/google/android/gms/internal/ads/zzegl$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/zzegm;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 26
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegl$zzb;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 19
    const-class p2, Lcom/google/android/gms/internal/ads/zzegl$zzb;

    monitor-enter p2

    .line 20
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegl$zzb;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzegl$zzb;->zzihw:Lcom/google/android/gms/internal/ads/zzegl$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 23
    sput-object p1, Lcom/google/android/gms/internal/ads/zzegl$zzb;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 24
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

    .line 16
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegl$zzb;->zzihw:Lcom/google/android/gms/internal/ads/zzegl$zzb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zziht"

    aput-object v0, p1, p2

    const-string p2, "zzihu"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzihv"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzihj"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 15
    sget-object p3, Lcom/google/android/gms/internal/ads/zzegl$zzb;->zzihw:Lcom/google/android/gms/internal/ads/zzegl$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzegl$zzb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegl$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzegl$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegm;)V

    return-object p1

    .line 11
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegl$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzegl$zzb;-><init>()V

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

.method public final zzbau()Lcom/google/android/gms/internal/ads/zzege;
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzegl$zzb;->zzihu:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzege;->zzfk(I)Lcom/google/android/gms/internal/ads/zzege;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzege;->zzihh:Lcom/google/android/gms/internal/ads/zzege;

    :cond_0
    return-object v0
.end method

.method public final zzbav()Lcom/google/android/gms/internal/ads/zzegx;
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzegl$zzb;->zzihj:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegx;->zzfr(I)Lcom/google/android/gms/internal/ads/zzegx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegx;->zziio:Lcom/google/android/gms/internal/ads/zzegx;

    :cond_0
    return-object v0
.end method

.method public final zzbeo()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegl$zzb;->zziht:Lcom/google/android/gms/internal/ads/zzegd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbep()Lcom/google/android/gms/internal/ads/zzegd;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegl$zzb;->zziht:Lcom/google/android/gms/internal/ads/zzegd;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegd;->zzbeb()Lcom/google/android/gms/internal/ads/zzegd;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzbeq()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzegl$zzb;->zzihv:I

    return v0
.end method
