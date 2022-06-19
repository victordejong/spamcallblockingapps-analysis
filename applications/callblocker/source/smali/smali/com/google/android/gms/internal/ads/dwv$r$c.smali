.class public final enum Lcom/google/android/gms/internal/ads/dwv$r$c;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dcy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dwv$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/dwv$r$c;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dcy;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/dwv$r$c;

.field public static final enum b:Lcom/google/android/gms/internal/ads/dwv$r$c;

.field public static final enum c:Lcom/google/android/gms/internal/ads/dwv$r$c;

.field private static final d:Lcom/google/android/gms/internal/ads/ddb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ddb",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$r$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/google/android/gms/internal/ads/dwv$r$c;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$r$c;

    const-string/jumbo v1, "NETWORKTYPE_UNSPECIFIED"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/dwv$r$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$r$c;->a:Lcom/google/android/gms/internal/ads/dwv$r$c;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$r$c;

    const-string/jumbo v1, "CELL"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/dwv$r$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$r$c;->b:Lcom/google/android/gms/internal/ads/dwv$r$c;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$r$c;

    const-string/jumbo v1, "WIFI"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/dwv$r$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$r$c;->c:Lcom/google/android/gms/internal/ads/dwv$r$c;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dwv$r$c;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$r$c;->a:Lcom/google/android/gms/internal/ads/dwv$r$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$r$c;->b:Lcom/google/android/gms/internal/ads/dwv$r$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$r$c;->c:Lcom/google/android/gms/internal/ads/dwv$r$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$r$c;->f:[Lcom/google/android/gms/internal/ads/dwv$r$c;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/dxj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dxj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$r$c;->d:Lcom/google/android/gms/internal/ads/ddb;

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
    iput p3, p0, Lcom/google/android/gms/internal/ads/dwv$r$c;->e:I

    .line 21
    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/ads/dwv$r$c;
    .locals 1

    .prologue
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 7
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$r$c;->a:Lcom/google/android/gms/internal/ads/dwv$r$c;

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$r$c;->b:Lcom/google/android/gms/internal/ads/dwv$r$c;

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$r$c;->c:Lcom/google/android/gms/internal/ads/dwv$r$c;

    goto :goto_0

    .line 3
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b()Lcom/google/android/gms/internal/ads/dda;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/dxk;->a:Lcom/google/android/gms/internal/ads/dda;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/dwv$r$c;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$r$c;->f:[Lcom/google/android/gms/internal/ads/dwv$r$c;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/dwv$r$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dwv$r$c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dwv$r$c;->e:I

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
    iget v2, p0, Lcom/google/android/gms/internal/ads/dwv$r$c;->e:I

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dwv$r$c;->name()Ljava/lang/String;

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
