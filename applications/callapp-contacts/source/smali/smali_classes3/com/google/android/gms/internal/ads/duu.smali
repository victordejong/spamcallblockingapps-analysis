.class public final enum Lcom/google/android/gms/internal/ads/duu;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dnm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/duu;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dnm;"
    }
.end annotation


# static fields
.field public static final enum zzabw:Lcom/google/android/gms/internal/ads/duu;

.field public static final enum zzabx:Lcom/google/android/gms/internal/ads/duu;

.field public static final enum zzaby:Lcom/google/android/gms/internal/ads/duu;

.field public static final enum zzabz:Lcom/google/android/gms/internal/ads/duu;

.field public static final enum zzaca:Lcom/google/android/gms/internal/ads/duu;

.field public static final enum zzacb:Lcom/google/android/gms/internal/ads/duu;

.field private static final synthetic zzacc:[Lcom/google/android/gms/internal/ads/duu;

.field private static final zzes:Lcom/google/android/gms/internal/ads/dnl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnl<",
            "Lcom/google/android/gms/internal/ads/duu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/duu;

    const-string v1, "UNSUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/duu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/duu;->zzabw:Lcom/google/android/gms/internal/ads/duu;

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/duu;

    const-string v3, "ARM7"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/duu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/duu;->zzabx:Lcom/google/android/gms/internal/ads/duu;

    .line 18
    new-instance v3, Lcom/google/android/gms/internal/ads/duu;

    const-string v6, "X86"

    const/4 v7, 0x4

    invoke-direct {v3, v6, v5, v7}, Lcom/google/android/gms/internal/ads/duu;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/duu;->zzaby:Lcom/google/android/gms/internal/ads/duu;

    .line 19
    new-instance v6, Lcom/google/android/gms/internal/ads/duu;

    const-string v8, "ARM64"

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-direct {v6, v8, v9, v10}, Lcom/google/android/gms/internal/ads/duu;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/ads/duu;->zzabz:Lcom/google/android/gms/internal/ads/duu;

    .line 20
    new-instance v8, Lcom/google/android/gms/internal/ads/duu;

    const-string v11, "X86_64"

    const/4 v12, 0x6

    invoke-direct {v8, v11, v7, v12}, Lcom/google/android/gms/internal/ads/duu;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/ads/duu;->zzaca:Lcom/google/android/gms/internal/ads/duu;

    .line 21
    new-instance v11, Lcom/google/android/gms/internal/ads/duu;

    const-string v13, "UNKNOWN"

    const/16 v14, 0x3e7

    invoke-direct {v11, v13, v10, v14}, Lcom/google/android/gms/internal/ads/duu;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/ads/duu;->zzacb:Lcom/google/android/gms/internal/ads/duu;

    new-array v12, v12, [Lcom/google/android/gms/internal/ads/duu;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v5

    aput-object v6, v12, v9

    aput-object v8, v12, v7

    aput-object v11, v12, v10

    .line 23
    sput-object v12, Lcom/google/android/gms/internal/ads/duu;->zzacc:[Lcom/google/android/gms/internal/ads/duu;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/dux;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dux;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/duu;->zzes:Lcom/google/android/gms/internal/ads/dnl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/google/android/gms/internal/ads/duu;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/duu;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/duu;->zzacc:[Lcom/google/android/gms/internal/ads/duu;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/duu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/duu;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v1, p0, Lcom/google/android/gms/internal/ads/duu;->value:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/duu;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/ads/duu;->value:I

    return v0
.end method
