.class public final enum Lcom/google/android/gms/internal/ads/cxk;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dcy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/cxk;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dcy;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/cxk;

.field public static final enum b:Lcom/google/android/gms/internal/ads/cxk;

.field public static final enum c:Lcom/google/android/gms/internal/ads/cxk;

.field public static final enum d:Lcom/google/android/gms/internal/ads/cxk;

.field private static final enum e:Lcom/google/android/gms/internal/ads/cxk;

.field private static final enum f:Lcom/google/android/gms/internal/ads/cxk;

.field private static final g:Lcom/google/android/gms/internal/ads/ddb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ddb",
            "<",
            "Lcom/google/android/gms/internal/ads/cxk;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic i:[Lcom/google/android/gms/internal/ads/cxk;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/cxk;

    const-string/jumbo v1, "UNKNOWN_CURVE"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/cxk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cxk;->e:Lcom/google/android/gms/internal/ads/cxk;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/cxk;

    const-string/jumbo v1, "NIST_P256"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/cxk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cxk;->a:Lcom/google/android/gms/internal/ads/cxk;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/cxk;

    const-string/jumbo v1, "NIST_P384"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/cxk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cxk;->b:Lcom/google/android/gms/internal/ads/cxk;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/cxk;

    const-string/jumbo v1, "NIST_P521"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/gms/internal/ads/cxk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cxk;->c:Lcom/google/android/gms/internal/ads/cxk;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/cxk;

    const-string/jumbo v1, "CURVE25519"

    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/cxk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cxk;->f:Lcom/google/android/gms/internal/ads/cxk;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/cxk;

    const-string/jumbo v1, "UNRECOGNIZED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/cxk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cxk;->d:Lcom/google/android/gms/internal/ads/cxk;

    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/cxk;

    sget-object v1, Lcom/google/android/gms/internal/ads/cxk;->e:Lcom/google/android/gms/internal/ads/cxk;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/internal/ads/cxk;->a:Lcom/google/android/gms/internal/ads/cxk;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/cxk;->b:Lcom/google/android/gms/internal/ads/cxk;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/cxk;->c:Lcom/google/android/gms/internal/ads/cxk;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/cxk;->f:Lcom/google/android/gms/internal/ads/cxk;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/cxk;->d:Lcom/google/android/gms/internal/ads/cxk;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/ads/cxk;->i:[Lcom/google/android/gms/internal/ads/cxk;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/cxj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cxj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cxk;->g:Lcom/google/android/gms/internal/ads/ddb;

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
    iput p3, p0, Lcom/google/android/gms/internal/ads/cxk;->h:I

    .line 23
    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/ads/cxk;
    .locals 1

    .prologue
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 11
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/cxk;->e:Lcom/google/android/gms/internal/ads/cxk;

    goto :goto_0

    .line 7
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/cxk;->a:Lcom/google/android/gms/internal/ads/cxk;

    goto :goto_0

    .line 8
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cxk;->b:Lcom/google/android/gms/internal/ads/cxk;

    goto :goto_0

    .line 9
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cxk;->c:Lcom/google/android/gms/internal/ads/cxk;

    goto :goto_0

    .line 10
    :pswitch_5
    sget-object v0, Lcom/google/android/gms/internal/ads/cxk;->f:Lcom/google/android/gms/internal/ads/cxk;

    goto :goto_0

    .line 5
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/cxk;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/cxk;->i:[Lcom/google/android/gms/internal/ads/cxk;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/cxk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/cxk;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/cxk;->d:Lcom/google/android/gms/internal/ads/cxk;

    if-ne p0, v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/cxk;->h:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/cxk;->d:Lcom/google/android/gms/internal/ads/cxk;

    if-eq p0, v1, :cond_0

    .line 17
    const-string/jumbo v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxk;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    :cond_0
    const-string/jumbo v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxk;->name()Ljava/lang/String;

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
