.class public final enum Lcom/google/android/gms/internal/ads/zzug$zzx$zza;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzug$zzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzug$zzx$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelg;"
    }
.end annotation


# static fields
.field private static final enum zzcgm:Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

.field private static final enum zzcgn:Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

.field private static final enum zzcgo:Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

.field private static final enum zzcgp:Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

.field private static final synthetic zzcgq:[Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

.field private static final zzes:Lcom/google/android/gms/internal/ads/zzelf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelf<",
            "Lcom/google/android/gms/internal/ads/zzug$zzx$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    const-string v1, "VIDEO_ERROR_CODE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->zzcgm:Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    const-string v3, "OPENGL_RENDERING_FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->zzcgn:Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    const-string v5, "CACHE_LOAD_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->zzcgo:Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    const-string v7, "ANDROID_TARGET_API_TOO_LOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->zzcgp:Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->zzcgq:[Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzva;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzva;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->zzes:Lcom/google/android/gms/internal/ads/zzelf;

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

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzug$zzx$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->zzcgq:[Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    return-object v0
.end method

.method public static zzct(I)Lcom/google/android/gms/internal/ads/zzug$zzx$zza;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->zzcgp:Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->zzcgo:Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->zzcgn:Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->zzcgm:Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

    return-object p0
.end method

.method public static zzw()Lcom/google/android/gms/internal/ads/zzeli;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzuz;->zzeu:Lcom/google/android/gms/internal/ads/zzeli;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;

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

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->value:I

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

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzx$zza;->value:I

    return v0
.end method
