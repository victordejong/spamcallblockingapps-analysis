.class public final enum Lcom/google/android/gms/internal/ads/dxf;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dcy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/dxf;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dcy;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/dxf;

.field public static final enum b:Lcom/google/android/gms/internal/ads/dxf;

.field public static final enum c:Lcom/google/android/gms/internal/ads/dxf;

.field private static final d:Lcom/google/android/gms/internal/ads/ddb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ddb",
            "<",
            "Lcom/google/android/gms/internal/ads/dxf;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/google/android/gms/internal/ads/dxf;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/dxf;

    const-string/jumbo v1, "ENUM_FALSE"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/dxf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dxf;->a:Lcom/google/android/gms/internal/ads/dxf;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/dxf;

    const-string/jumbo v1, "ENUM_TRUE"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/dxf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dxf;->b:Lcom/google/android/gms/internal/ads/dxf;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/dxf;

    const-string/jumbo v1, "ENUM_UNKNOWN"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ads/dxf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dxf;->c:Lcom/google/android/gms/internal/ads/dxf;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dxf;

    sget-object v1, Lcom/google/android/gms/internal/ads/dxf;->a:Lcom/google/android/gms/internal/ads/dxf;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/dxf;->b:Lcom/google/android/gms/internal/ads/dxf;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/dxf;->c:Lcom/google/android/gms/internal/ads/dxf;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/dxf;->f:[Lcom/google/android/gms/internal/ads/dxf;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/dxe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dxe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dxf;->d:Lcom/google/android/gms/internal/ads/ddb;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/google/android/gms/internal/ads/dxf;->e:I

    .line 21
    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/ads/dxf;
    .locals 1

    .prologue
    .line 3
    sparse-switch p0, :sswitch_data_0

    .line 7
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4
    :sswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dxf;->a:Lcom/google/android/gms/internal/ads/dxf;

    goto :goto_0

    .line 5
    :sswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/dxf;->b:Lcom/google/android/gms/internal/ads/dxf;

    goto :goto_0

    .line 6
    :sswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/dxf;->c:Lcom/google/android/gms/internal/ads/dxf;

    goto :goto_0

    .line 3
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3e8 -> :sswitch_2
    .end sparse-switch
.end method

.method public static b()Lcom/google/android/gms/internal/ads/dda;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/dxg;->a:Lcom/google/android/gms/internal/ads/dda;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/dxf;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/dxf;->f:[Lcom/google/android/gms/internal/ads/dxf;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/dxf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dxf;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dxf;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    iget v2, p0, Lcom/google/android/gms/internal/ads/dxf;->e:I

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dxf;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    return-object v0
.end method
