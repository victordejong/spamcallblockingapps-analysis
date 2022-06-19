.class public final enum Lcom/google/android/gms/internal/ads/dkc;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dcy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/dkc;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dcy;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/dkc;

.field public static final enum b:Lcom/google/android/gms/internal/ads/dkc;

.field public static final enum c:Lcom/google/android/gms/internal/ads/dkc;

.field public static final enum d:Lcom/google/android/gms/internal/ads/dkc;

.field public static final enum e:Lcom/google/android/gms/internal/ads/dkc;

.field private static final f:Lcom/google/android/gms/internal/ads/ddb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ddb",
            "<",
            "Lcom/google/android/gms/internal/ads/dkc;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/google/android/gms/internal/ads/dkc;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/dkc;

    const-string/jumbo v1, "UNSUPPORTED"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/dkc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dkc;->a:Lcom/google/android/gms/internal/ads/dkc;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/dkc;

    const-string/jumbo v1, "ARM7"

    invoke-direct {v0, v1, v6, v4}, Lcom/google/android/gms/internal/ads/dkc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dkc;->b:Lcom/google/android/gms/internal/ads/dkc;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/dkc;

    const-string/jumbo v1, "X86"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/dkc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dkc;->c:Lcom/google/android/gms/internal/ads/dkc;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/dkc;

    const-string/jumbo v1, "ARM64"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/dkc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dkc;->d:Lcom/google/android/gms/internal/ads/dkc;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/dkc;

    const-string/jumbo v1, "X86_64"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ads/dkc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dkc;->e:Lcom/google/android/gms/internal/ads/dkc;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dkc;

    sget-object v1, Lcom/google/android/gms/internal/ads/dkc;->a:Lcom/google/android/gms/internal/ads/dkc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/dkc;->b:Lcom/google/android/gms/internal/ads/dkc;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/dkc;->c:Lcom/google/android/gms/internal/ads/dkc;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/dkc;->d:Lcom/google/android/gms/internal/ads/dkc;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/ads/dkc;->e:Lcom/google/android/gms/internal/ads/dkc;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/dkc;->h:[Lcom/google/android/gms/internal/ads/dkc;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/dkf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dkf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dkc;->f:Lcom/google/android/gms/internal/ads/ddb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/google/android/gms/internal/ads/dkc;->g:I

    .line 15
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/dkc;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->h:[Lcom/google/android/gms/internal/ads/dkc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/dkc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dkc;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dkc;->g:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/ads/dkc;->g:I

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    return-object v0
.end method
