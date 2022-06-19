.class public final enum Lcom/google/android/gms/internal/ads/dhw;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dnm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/dhw;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dnm;"
    }
.end annotation


# static fields
.field private static final zzes:Lcom/google/android/gms/internal/ads/dnl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnl<",
            "Lcom/google/android/gms/internal/ads/dhw;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzijj:Lcom/google/android/gms/internal/ads/dhw;

.field public static final enum zzijk:Lcom/google/android/gms/internal/ads/dhw;

.field private static final enum zzijl:Lcom/google/android/gms/internal/ads/dhw;

.field public static final enum zzijm:Lcom/google/android/gms/internal/ads/dhw;

.field public static final enum zzijn:Lcom/google/android/gms/internal/ads/dhw;

.field public static final enum zzijo:Lcom/google/android/gms/internal/ads/dhw;

.field private static final synthetic zzijp:[Lcom/google/android/gms/internal/ads/dhw;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/dhw;

    const-string v1, "UNKNOWN_HASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/dhw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dhw;->zzijj:Lcom/google/android/gms/internal/ads/dhw;

    .line 25
    new-instance v1, Lcom/google/android/gms/internal/ads/dhw;

    const-string v3, "SHA1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/dhw;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/dhw;->zzijk:Lcom/google/android/gms/internal/ads/dhw;

    .line 26
    new-instance v3, Lcom/google/android/gms/internal/ads/dhw;

    const-string v5, "SHA384"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/dhw;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/dhw;->zzijl:Lcom/google/android/gms/internal/ads/dhw;

    .line 27
    new-instance v5, Lcom/google/android/gms/internal/ads/dhw;

    const-string v7, "SHA256"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/ads/dhw;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/dhw;->zzijm:Lcom/google/android/gms/internal/ads/dhw;

    .line 28
    new-instance v7, Lcom/google/android/gms/internal/ads/dhw;

    const-string v9, "SHA512"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/ads/dhw;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/ads/dhw;->zzijn:Lcom/google/android/gms/internal/ads/dhw;

    .line 29
    new-instance v9, Lcom/google/android/gms/internal/ads/dhw;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/gms/internal/ads/dhw;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/ads/dhw;->zzijo:Lcom/google/android/gms/internal/ads/dhw;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/internal/ads/dhw;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 31
    sput-object v11, Lcom/google/android/gms/internal/ads/dhw;->zzijp:[Lcom/google/android/gms/internal/ads/dhw;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/dhz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dhz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dhw;->zzes:Lcom/google/android/gms/internal/ads/dnl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/google/android/gms/internal/ads/dhw;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/dhw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/dhw;->zzijp:[Lcom/google/android/gms/internal/ads/dhw;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/dhw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dhw;

    return-object v0
.end method

.method public static zzfp(I)Lcom/google/android/gms/internal/ads/dhw;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/dhw;->zzijn:Lcom/google/android/gms/internal/ads/dhw;

    return-object p0

    .line 9
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/dhw;->zzijm:Lcom/google/android/gms/internal/ads/dhw;

    return-object p0

    .line 8
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/dhw;->zzijl:Lcom/google/android/gms/internal/ads/dhw;

    return-object p0

    .line 7
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/dhw;->zzijk:Lcom/google/android/gms/internal/ads/dhw;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/dhw;->zzijj:Lcom/google/android/gms/internal/ads/dhw;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/dhw;->zzijo:Lcom/google/android/gms/internal/ads/dhw;

    if-eq p0, v1, :cond_0

    const-string v1, " number="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dhw;->zzv()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " name="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dhw;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzv()I
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/dhw;->zzijo:Lcom/google/android/gms/internal/ads/dhw;

    if-eq p0, v0, :cond_0

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/dhw;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
