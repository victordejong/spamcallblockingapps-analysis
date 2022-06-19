.class public final enum Lcom/google/android/gms/internal/ads/dwv$a$a;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dcy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dwv$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/dwv$a$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dcy;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/dwv$a$a;

.field public static final enum b:Lcom/google/android/gms/internal/ads/dwv$a$a;

.field public static final enum c:Lcom/google/android/gms/internal/ads/dwv$a$a;

.field public static final enum d:Lcom/google/android/gms/internal/ads/dwv$a$a;

.field public static final enum e:Lcom/google/android/gms/internal/ads/dwv$a$a;

.field public static final enum f:Lcom/google/android/gms/internal/ads/dwv$a$a;

.field private static final enum g:Lcom/google/android/gms/internal/ads/dwv$a$a;

.field private static final enum h:Lcom/google/android/gms/internal/ads/dwv$a$a;

.field private static final enum i:Lcom/google/android/gms/internal/ads/dwv$a$a;

.field private static final enum j:Lcom/google/android/gms/internal/ads/dwv$a$a;

.field private static final enum k:Lcom/google/android/gms/internal/ads/dwv$a$a;

.field private static final l:Lcom/google/android/gms/internal/ads/ddb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ddb",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic n:[Lcom/google/android/gms/internal/ads/dwv$a$a;


# instance fields
.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$a$a;

    const-string/jumbo v1, "AD_INITIATER_UNSPECIFIED"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/dwv$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->a:Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$a$a;

    const-string/jumbo v1, "BANNER"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/dwv$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->b:Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$a$a;

    const-string/jumbo v1, "DFP_BANNER"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/ads/dwv$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->g:Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$a$a;

    const-string/jumbo v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/gms/internal/ads/dwv$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->c:Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$a$a;

    const-string/jumbo v1, "DFP_INTERSTITIAL"

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/gms/internal/ads/dwv$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->h:Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$a$a;

    const-string/jumbo v1, "NATIVE_EXPRESS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dwv$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->i:Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$a$a;

    const-string/jumbo v1, "AD_LOADER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dwv$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->d:Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$a$a;

    const-string/jumbo v1, "REWARD_BASED_VIDEO_AD"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dwv$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->e:Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$a$a;

    const-string/jumbo v1, "BANNER_SEARCH_ADS"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dwv$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->j:Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$a$a;

    const-string/jumbo v1, "GOOGLE_MOBILE_ADS_SDK_ADAPTER"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dwv$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->k:Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$a$a;

    const-string/jumbo v1, "APP_OPEN"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dwv$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->f:Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 41
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dwv$a$a;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$a$a;->a:Lcom/google/android/gms/internal/ads/dwv$a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$a$a;->b:Lcom/google/android/gms/internal/ads/dwv$a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$a$a;->g:Lcom/google/android/gms/internal/ads/dwv$a$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$a$a;->c:Lcom/google/android/gms/internal/ads/dwv$a$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$a$a;->h:Lcom/google/android/gms/internal/ads/dwv$a$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$a$a;->i:Lcom/google/android/gms/internal/ads/dwv$a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$a$a;->d:Lcom/google/android/gms/internal/ads/dwv$a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$a$a;->e:Lcom/google/android/gms/internal/ads/dwv$a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$a$a;->j:Lcom/google/android/gms/internal/ads/dwv$a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$a$a;->k:Lcom/google/android/gms/internal/ads/dwv$a$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$a$a;->f:Lcom/google/android/gms/internal/ads/dwv$a$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->n:[Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/dwx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->l:Lcom/google/android/gms/internal/ads/ddb;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/google/android/gms/internal/ads/dwv$a$a;->m:I

    .line 29
    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/ads/dwv$a$a;
    .locals 1

    .prologue
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 15
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->a:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->b:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->g:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_0

    .line 7
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->c:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_0

    .line 8
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->h:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_0

    .line 9
    :pswitch_5
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->i:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_0

    .line 10
    :pswitch_6
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->d:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_0

    .line 11
    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->e:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_0

    .line 12
    :pswitch_8
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->j:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_0

    .line 13
    :pswitch_9
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->k:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_0

    .line 14
    :pswitch_a
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->f:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_0

    .line 3
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static b()Lcom/google/android/gms/internal/ads/dda;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/dww;->a:Lcom/google/android/gms/internal/ads/dda;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/dwv$a$a;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->n:[Lcom/google/android/gms/internal/ads/dwv$a$a;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/dwv$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dwv$a$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dwv$a$a;->m:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 22
    iget v2, p0, Lcom/google/android/gms/internal/ads/dwv$a$a;->m:I

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dwv$a$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    return-object v0
.end method
