.class public final enum Lcom/google/android/gms/internal/ads/bbd;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dcy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/bbd;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dcy;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/bbd;

.field public static final enum b:Lcom/google/android/gms/internal/ads/bbd;

.field private static final enum c:Lcom/google/android/gms/internal/ads/bbd;

.field private static final enum d:Lcom/google/android/gms/internal/ads/bbd;

.field private static final enum e:Lcom/google/android/gms/internal/ads/bbd;

.field private static final f:Lcom/google/android/gms/internal/ads/ddb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ddb",
            "<",
            "Lcom/google/android/gms/internal/ads/bbd;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/google/android/gms/internal/ads/bbd;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/bbd;

    const-string/jumbo v1, "UNKNOWN_ENCRYPTION_METHOD"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/bbd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/bbd;->c:Lcom/google/android/gms/internal/ads/bbd;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/bbd;

    const-string/jumbo v1, "BITSLICER"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/bbd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/bbd;->d:Lcom/google/android/gms/internal/ads/bbd;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/bbd;

    const-string/jumbo v1, "TINK_HYBRID"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/bbd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/bbd;->a:Lcom/google/android/gms/internal/ads/bbd;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/bbd;

    const-string/jumbo v1, "UNENCRYPTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/bbd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/bbd;->e:Lcom/google/android/gms/internal/ads/bbd;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/bbd;

    const-string/jumbo v1, "DG"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/ads/bbd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/bbd;->b:Lcom/google/android/gms/internal/ads/bbd;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/bbd;

    sget-object v1, Lcom/google/android/gms/internal/ads/bbd;->c:Lcom/google/android/gms/internal/ads/bbd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/bbd;->d:Lcom/google/android/gms/internal/ads/bbd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/bbd;->a:Lcom/google/android/gms/internal/ads/bbd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/bbd;->e:Lcom/google/android/gms/internal/ads/bbd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/bbd;->b:Lcom/google/android/gms/internal/ads/bbd;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/ads/bbd;->h:[Lcom/google/android/gms/internal/ads/bbd;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/bac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bac;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bbd;->f:Lcom/google/android/gms/internal/ads/ddb;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/google/android/gms/internal/ads/bbd;->g:I

    .line 23
    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/ads/bbd;
    .locals 1

    .prologue
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 9
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/bbd;->c:Lcom/google/android/gms/internal/ads/bbd;

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/bbd;->d:Lcom/google/android/gms/internal/ads/bbd;

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/bbd;->a:Lcom/google/android/gms/internal/ads/bbd;

    goto :goto_0

    .line 7
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/bbd;->e:Lcom/google/android/gms/internal/ads/bbd;

    goto :goto_0

    .line 8
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/bbd;->b:Lcom/google/android/gms/internal/ads/bbd;

    goto :goto_0

    .line 3
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static b()Lcom/google/android/gms/internal/ads/dda;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/bdf;->a:Lcom/google/android/gms/internal/ads/dda;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/bbd;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bbd;->h:[Lcom/google/android/gms/internal/ads/bbd;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/bbd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/bbd;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/bbd;->g:I

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
    const-string/jumbo v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16
    iget v2, p0, Lcom/google/android/gms/internal/ads/bbd;->g:I

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bbd;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    return-object v0
.end method
