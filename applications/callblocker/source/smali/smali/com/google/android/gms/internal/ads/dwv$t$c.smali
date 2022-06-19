.class public final enum Lcom/google/android/gms/internal/ads/dwv$t$c;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dcy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dwv$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/dwv$t$c;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dcy;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/dwv$t$c;

.field public static final enum b:Lcom/google/android/gms/internal/ads/dwv$t$c;

.field public static final enum c:Lcom/google/android/gms/internal/ads/dwv$t$c;

.field public static final enum d:Lcom/google/android/gms/internal/ads/dwv$t$c;

.field public static final enum e:Lcom/google/android/gms/internal/ads/dwv$t$c;

.field public static final enum f:Lcom/google/android/gms/internal/ads/dwv$t$c;

.field private static final g:Lcom/google/android/gms/internal/ads/ddb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ddb",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$t$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic i:[Lcom/google/android/gms/internal/ads/dwv$t$c;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$t$c;

    const-string/jumbo v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/dwv$t$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->a:Lcom/google/android/gms/internal/ads/dwv$t$c;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$t$c;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/dwv$t$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->b:Lcom/google/android/gms/internal/ads/dwv$t$c;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$t$c;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/ads/dwv$t$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->c:Lcom/google/android/gms/internal/ads/dwv$t$c;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$t$c;

    const-string/jumbo v1, "DISCONNECTING"

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/gms/internal/ads/dwv$t$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->d:Lcom/google/android/gms/internal/ads/dwv$t$c;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$t$c;

    const-string/jumbo v1, "DISCONNECTED"

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/gms/internal/ads/dwv$t$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->e:Lcom/google/android/gms/internal/ads/dwv$t$c;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$t$c;

    const-string/jumbo v1, "SUSPENDED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dwv$t$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->f:Lcom/google/android/gms/internal/ads/dwv$t$c;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dwv$t$c;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$t$c;->a:Lcom/google/android/gms/internal/ads/dwv$t$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$t$c;->b:Lcom/google/android/gms/internal/ads/dwv$t$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$t$c;->c:Lcom/google/android/gms/internal/ads/dwv$t$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$t$c;->d:Lcom/google/android/gms/internal/ads/dwv$t$c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$t$c;->e:Lcom/google/android/gms/internal/ads/dwv$t$c;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->f:Lcom/google/android/gms/internal/ads/dwv$t$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->i:[Lcom/google/android/gms/internal/ads/dwv$t$c;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/dxm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dxm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->g:Lcom/google/android/gms/internal/ads/ddb;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/google/android/gms/internal/ads/dwv$t$c;->h:I

    .line 24
    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/ads/dwv$t$c;
    .locals 1

    .prologue
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 10
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->a:Lcom/google/android/gms/internal/ads/dwv$t$c;

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->b:Lcom/google/android/gms/internal/ads/dwv$t$c;

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->c:Lcom/google/android/gms/internal/ads/dwv$t$c;

    goto :goto_0

    .line 7
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->d:Lcom/google/android/gms/internal/ads/dwv$t$c;

    goto :goto_0

    .line 8
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->e:Lcom/google/android/gms/internal/ads/dwv$t$c;

    goto :goto_0

    .line 9
    :pswitch_5
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->f:Lcom/google/android/gms/internal/ads/dwv$t$c;

    goto :goto_0

    .line 3
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static b()Lcom/google/android/gms/internal/ads/dda;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/dxn;->a:Lcom/google/android/gms/internal/ads/dda;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/dwv$t$c;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$t$c;->i:[Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/dwv$t$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dwv$t$c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dwv$t$c;->h:I

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
    const-string/jumbo v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 17
    iget v2, p0, Lcom/google/android/gms/internal/ads/dwv$t$c;->h:I

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dwv$t$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    return-object v0
.end method
