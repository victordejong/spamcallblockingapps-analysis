.class public final enum Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzepa$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelg;"
    }
.end annotation


# static fields
.field private static final zzes:Lcom/google/android/gms/internal/ads/zzelf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelf<",
            "Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzizt:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

.field private static final enum zzizu:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

.field private static final enum zzizv:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

.field private static final enum zzizw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

.field private static final enum zzizx:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

.field private static final enum zzizy:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

.field private static final enum zzizz:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

.field private static final enum zzjaa:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

.field public static final enum zzjab:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

.field public static final enum zzjac:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

.field private static final synthetic zzjad:[Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzizt:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    const-string v3, "URL_PHISHING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzizu:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    const-string v5, "URL_MALWARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzizv:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    const-string v7, "URL_UNWANTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzizw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    const-string v9, "CLIENT_SIDE_PHISHING_URL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzizx:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    const-string v11, "CLIENT_SIDE_MALWARE_URL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzizy:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    const-string v13, "DANGEROUS_DOWNLOAD_RECOVERY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzizz:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    const-string v15, "DANGEROUS_DOWNLOAD_WARNING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzjaa:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    const-string v14, "OCTAGON_AD"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzjab:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    const-string v12, "OCTAGON_AD_SB_MATCH"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzjac:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzjad:[Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzepf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzepf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzes:Lcom/google/android/gms/internal/ads/zzelf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzjad:[Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    return-object v0
.end method

.method public static zzia(I)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzjac:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzjab:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzjaa:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzizz:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzizy:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzizx:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzizw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzizv:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzizu:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzizt:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzepg;->zzeu:Lcom/google/android/gms/internal/ads/zzeli;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

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

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->value:I

    return v0
.end method
