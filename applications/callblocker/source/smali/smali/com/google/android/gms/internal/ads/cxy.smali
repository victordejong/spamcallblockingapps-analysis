.class public final enum Lcom/google/android/gms/internal/ads/cxy;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dcy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/cxy;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dcy;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/cxy;

.field public static final enum b:Lcom/google/android/gms/internal/ads/cxy;

.field public static final enum c:Lcom/google/android/gms/internal/ads/cxy;

.field private static final enum d:Lcom/google/android/gms/internal/ads/cxy;

.field private static final enum e:Lcom/google/android/gms/internal/ads/cxy;

.field private static final f:Lcom/google/android/gms/internal/ads/ddb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ddb",
            "<",
            "Lcom/google/android/gms/internal/ads/cxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/google/android/gms/internal/ads/cxy;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/cxy;

    const-string/jumbo v1, "UNKNOWN_STATUS"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/cxy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cxy;->a:Lcom/google/android/gms/internal/ads/cxy;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/cxy;

    const-string/jumbo v1, "ENABLED"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/cxy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cxy;->b:Lcom/google/android/gms/internal/ads/cxy;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/cxy;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/cxy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cxy;->d:Lcom/google/android/gms/internal/ads/cxy;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/cxy;

    const-string/jumbo v1, "DESTROYED"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/ads/cxy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cxy;->e:Lcom/google/android/gms/internal/ads/cxy;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/cxy;

    const-string/jumbo v1, "UNRECOGNIZED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/cxy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cxy;->c:Lcom/google/android/gms/internal/ads/cxy;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/cxy;

    sget-object v1, Lcom/google/android/gms/internal/ads/cxy;->a:Lcom/google/android/gms/internal/ads/cxy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/cxy;->b:Lcom/google/android/gms/internal/ads/cxy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/cxy;->d:Lcom/google/android/gms/internal/ads/cxy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/cxy;->e:Lcom/google/android/gms/internal/ads/cxy;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/cxy;->c:Lcom/google/android/gms/internal/ads/cxy;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/ads/cxy;->h:[Lcom/google/android/gms/internal/ads/cxy;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/cxx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cxx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cxy;->f:Lcom/google/android/gms/internal/ads/ddb;

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
    iput p3, p0, Lcom/google/android/gms/internal/ads/cxy;->g:I

    .line 22
    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/ads/cxy;
    .locals 1

    .prologue
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 10
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cxy;->a:Lcom/google/android/gms/internal/ads/cxy;

    goto :goto_0

    .line 7
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/cxy;->b:Lcom/google/android/gms/internal/ads/cxy;

    goto :goto_0

    .line 8
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/cxy;->d:Lcom/google/android/gms/internal/ads/cxy;

    goto :goto_0

    .line 9
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cxy;->e:Lcom/google/android/gms/internal/ads/cxy;

    goto :goto_0

    .line 5
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/cxy;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/cxy;->h:[Lcom/google/android/gms/internal/ads/cxy;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/cxy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/cxy;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/cxy;->c:Lcom/google/android/gms/internal/ads/cxy;

    if-ne p0, v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/cxy;->g:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/cxy;->c:Lcom/google/android/gms/internal/ads/cxy;

    if-eq p0, v1, :cond_0

    .line 16
    const-string/jumbo v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxy;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    :cond_0
    const-string/jumbo v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxy;->name()Ljava/lang/String;

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
