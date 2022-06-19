.class public final enum Lcom/google/android/gms/internal/ads/bce;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dcy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/bce;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dcy;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/bce;

.field public static final enum b:Lcom/google/android/gms/internal/ads/bce;

.field public static final enum c:Lcom/google/android/gms/internal/ads/bce;

.field private static final enum d:Lcom/google/android/gms/internal/ads/bce;

.field private static final e:Lcom/google/android/gms/internal/ads/ddb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ddb",
            "<",
            "Lcom/google/android/gms/internal/ads/bce;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lcom/google/android/gms/internal/ads/bce;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/bce;

    const-string/jumbo v1, "ENUM_FALSE"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/bce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/bce;->a:Lcom/google/android/gms/internal/ads/bce;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/bce;

    const-string/jumbo v1, "ENUM_TRUE"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/bce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/bce;->b:Lcom/google/android/gms/internal/ads/bce;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/bce;

    const-string/jumbo v1, "ENUM_FAILURE"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/bce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/bce;->c:Lcom/google/android/gms/internal/ads/bce;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/bce;

    const-string/jumbo v1, "ENUM_UNKNOWN"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/gms/internal/ads/bce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/bce;->d:Lcom/google/android/gms/internal/ads/bce;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/bce;

    sget-object v1, Lcom/google/android/gms/internal/ads/bce;->a:Lcom/google/android/gms/internal/ads/bce;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/bce;->b:Lcom/google/android/gms/internal/ads/bce;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/bce;->c:Lcom/google/android/gms/internal/ads/bce;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/bce;->d:Lcom/google/android/gms/internal/ads/bce;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/ads/bce;->g:[Lcom/google/android/gms/internal/ads/bce;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/bfh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bfh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bce;->e:Lcom/google/android/gms/internal/ads/ddb;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/google/android/gms/internal/ads/bce;->f:I

    .line 22
    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/ads/bce;
    .locals 1

    .prologue
    .line 3
    sparse-switch p0, :sswitch_data_0

    .line 8
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4
    :sswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/bce;->a:Lcom/google/android/gms/internal/ads/bce;

    goto :goto_0

    .line 5
    :sswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/bce;->b:Lcom/google/android/gms/internal/ads/bce;

    goto :goto_0

    .line 6
    :sswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/bce;->c:Lcom/google/android/gms/internal/ads/bce;

    goto :goto_0

    .line 7
    :sswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/bce;->d:Lcom/google/android/gms/internal/ads/bce;

    goto :goto_0

    .line 3
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3e8 -> :sswitch_3
    .end sparse-switch
.end method

.method public static b()Lcom/google/android/gms/internal/ads/dda;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/beg;->a:Lcom/google/android/gms/internal/ads/dda;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/bce;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bce;->g:[Lcom/google/android/gms/internal/ads/bce;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/bce;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/bce;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/bce;->f:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    iget v2, p0, Lcom/google/android/gms/internal/ads/bce;->f:I

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bce;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    return-object v0
.end method
