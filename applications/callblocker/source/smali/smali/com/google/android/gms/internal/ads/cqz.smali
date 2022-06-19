.class final enum Lcom/google/android/gms/internal/ads/cqz;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/cqz;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/cqz;

.field private static final synthetic b:[Lcom/google/android/gms/internal/ads/cqz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/cqz;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cqz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cqz;->a:Lcom/google/android/gms/internal/ads/cqz;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/cqz;

    sget-object v1, Lcom/google/android/gms/internal/ads/cqz;->a:Lcom/google/android/gms/internal/ads/cqz;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/ads/cqz;->b:[Lcom/google/android/gms/internal/ads/cqz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/cqz;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/cqz;->b:[Lcom/google/android/gms/internal/ads/cqz;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/cqz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/cqz;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    const-string/jumbo v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
