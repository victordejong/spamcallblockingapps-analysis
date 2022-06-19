.class final synthetic Lcom/google/android/gms/internal/ads/aam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbcb;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcb;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aam;->a:Lcom/google/android/gms/internal/ads/zzbcb;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/aam;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aam;->a:Lcom/google/android/gms/internal/ads/zzbcb;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/aam;->b:Z

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hasWindowFocus"

    aput-object v4, v2, v3

    .line 1277
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "windowFocusChanged"

    .line 1278
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbcb;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
