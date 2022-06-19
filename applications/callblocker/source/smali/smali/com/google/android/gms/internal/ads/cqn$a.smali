.class final enum Lcom/google/android/gms/internal/ads/cqn$a;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/cqn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/cqn$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/cqn$a;

.field public static final enum b:Lcom/google/android/gms/internal/ads/cqn$a;

.field private static final synthetic c:[Lcom/google/android/gms/internal/ads/cqn$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/cqn$a;

    const-string/jumbo v1, "OUTPUT_FUTURE_DONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cqn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cqn$a;->a:Lcom/google/android/gms/internal/ads/cqn$a;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/cqn$a;

    const-string/jumbo v1, "ALL_INPUT_FUTURES_PROCESSED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/cqn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cqn$a;->b:Lcom/google/android/gms/internal/ads/cqn$a;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/cqn$a;

    sget-object v1, Lcom/google/android/gms/internal/ads/cqn$a;->a:Lcom/google/android/gms/internal/ads/cqn$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/cqn$a;->b:Lcom/google/android/gms/internal/ads/cqn$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/ads/cqn$a;->c:[Lcom/google/android/gms/internal/ads/cqn$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/cqn$a;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/cqn$a;->c:[Lcom/google/android/gms/internal/ads/cqn$a;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/cqn$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/cqn$a;

    return-object v0
.end method
