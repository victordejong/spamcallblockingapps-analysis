.class public final enum Lcom/google/android/gms/internal/ads/drf$b$f$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dnm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/drf$b$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/drf$b$f$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dnm;"
    }
.end annotation


# static fields
.field private static final zzes:Lcom/google/android/gms/internal/ads/dnl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnl<",
            "Lcom/google/android/gms/internal/ads/drf$b$f$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzjct:Lcom/google/android/gms/internal/ads/drf$b$f$a;

.field public static final enum zzjcu:Lcom/google/android/gms/internal/ads/drf$b$f$a;

.field private static final synthetic zzjcv:[Lcom/google/android/gms/internal/ads/drf$b$f$a;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/drf$b$f$a;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/drf$b$f$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/drf$b$f$a;->zzjct:Lcom/google/android/gms/internal/ads/drf$b$f$a;

    .line 22
    new-instance v1, Lcom/google/android/gms/internal/ads/drf$b$f$a;

    const-string v3, "TYPE_CREATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/drf$b$f$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/drf$b$f$a;->zzjcu:Lcom/google/android/gms/internal/ads/drf$b$f$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/drf$b$f$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 24
    sput-object v3, Lcom/google/android/gms/internal/ads/drf$b$f$a;->zzjcv:[Lcom/google/android/gms/internal/ads/drf$b$f$a;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/drk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/drk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/drf$b$f$a;->zzes:Lcom/google/android/gms/internal/ads/dnl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/google/android/gms/internal/ads/drf$b$f$a;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/drf$b$f$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$f$a;->zzjcv:[Lcom/google/android/gms/internal/ads/drf$b$f$a;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/drf$b$f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/drf$b$f$a;

    return-object v0
.end method

.method public static zzih(I)Lcom/google/android/gms/internal/ads/drf$b$f$a;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/drf$b$f$a;->zzjcu:Lcom/google/android/gms/internal/ads/drf$b$f$a;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/drf$b$f$a;->zzjct:Lcom/google/android/gms/internal/ads/drf$b$f$a;

    return-object p0
.end method

.method public static zzw()Lcom/google/android/gms/internal/ads/dno;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/drj;->a:Lcom/google/android/gms/internal/ads/dno;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/drf$b$f$a;->value:I

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/drf$b$f$a;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/ads/drf$b$f$a;->value:I

    return v0
.end method
