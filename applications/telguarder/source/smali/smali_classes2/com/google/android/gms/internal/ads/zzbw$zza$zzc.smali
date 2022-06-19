.class public final enum Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-gass@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzbw$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelg;"
    }
.end annotation


# static fields
.field public static final enum zzep:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

.field public static final enum zzeq:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

.field public static final enum zzer:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

.field private static final zzes:Lcom/google/android/gms/internal/ads/zzelf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelf<",
            "Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzet:[Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->zzep:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    .line 23
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    const-string v3, "ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->zzeq:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    .line 24
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    const-string v5, "DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->zzer:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 26
    sput-object v5, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->zzet:[Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->zzes:Lcom/google/android/gms/internal/ads/zzelf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->zzet:[Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    return-object v0
.end method

.method public static zzh(I)Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->zzer:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->zzeq:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->zzep:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    return-object p0
.end method

.method public static zzw()Lcom/google/android/gms/internal/ads/zzeli;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzby;->zzeu:Lcom/google/android/gms/internal/ads/zzeli;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->value:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->value:I

    return v0
.end method
