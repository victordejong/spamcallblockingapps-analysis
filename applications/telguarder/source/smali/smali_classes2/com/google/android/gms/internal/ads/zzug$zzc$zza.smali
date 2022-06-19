.class public final enum Lcom/google/android/gms/internal/ads/zzug$zzc$zza;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzug$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzug$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelg;"
    }
.end annotation


# static fields
.field public static final enum zzcab:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

.field public static final enum zzcac:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

.field public static final enum zzcad:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

.field private static final enum zzcae:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

.field private static final enum zzcaf:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

.field public static final enum zzcag:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

.field private static final enum zzcah:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

.field private static final enum zzcai:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

.field private static final enum zzcaj:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

.field public static final enum zzcak:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

.field private static final enum zzcal:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

.field private static final synthetic zzcam:[Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

.field private static final zzes:Lcom/google/android/gms/internal/ads/zzelf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelf<",
            "Lcom/google/android/gms/internal/ads/zzug$zzc$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    const-string v1, "AD_FORMAT_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcab:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    .line 31
    new-instance v1, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    const-string v3, "BANNER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcac:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    .line 32
    new-instance v3, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    const-string v5, "INTERSTITIAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcad:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    .line 33
    new-instance v5, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    const-string v7, "NATIVE_EXPRESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcae:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    .line 34
    new-instance v7, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    const-string v9, "NATIVE_CONTENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcaf:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    .line 35
    new-instance v9, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    const-string v11, "NATIVE_APP_INSTALL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcag:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    .line 36
    new-instance v11, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    const-string v13, "NATIVE_CUSTOM_TEMPLATE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcah:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    .line 37
    new-instance v13, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    const-string v15, "DFP_BANNER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcai:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    .line 38
    new-instance v15, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    const-string v14, "DFP_INTERSTITIAL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcaj:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    .line 39
    new-instance v14, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    const-string v12, "REWARD_BASED_VIDEO_AD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcak:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    .line 40
    new-instance v12, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    const-string v10, "BANNER_SEARCH_ADS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcal:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 42
    sput-object v10, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcam:[Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzum;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzum;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzes:Lcom/google/android/gms/internal/ads/zzelf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzug$zzc$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcam:[Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    return-object v0
.end method

.method public static zzcb(I)Lcom/google/android/gms/internal/ads/zzug$zzc$zza;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 14
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcal:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    return-object p0

    .line 13
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcak:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcaj:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    return-object p0

    .line 11
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcai:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    return-object p0

    .line 10
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcah:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    return-object p0

    .line 9
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcag:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcaf:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    return-object p0

    .line 7
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcae:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    return-object p0

    .line 6
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcad:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    return-object p0

    .line 5
    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcac:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    return-object p0

    .line 4
    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcab:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static zzw()Lcom/google/android/gms/internal/ads/zzeli;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzul;->zzeu:Lcom/google/android/gms/internal/ads/zzeli;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->value:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzv()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->value:I

    return v0
.end method
