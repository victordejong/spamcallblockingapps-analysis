.class final synthetic Lcom/google/android/gms/internal/ads/wz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/wo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wz;->a:Lcom/google/android/gms/internal/ads/wo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->a:Lcom/google/android/gms/internal/ads/wo;

    .line 1333
    sget-object v1, Lcom/google/android/gms/internal/ads/wu;->a:Lcom/google/android/gms/internal/ads/wo$b;

    const-string v2, "getAppInstanceId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/wo;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/wo$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
