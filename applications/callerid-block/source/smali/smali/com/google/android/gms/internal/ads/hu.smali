.class final synthetic Lcom/google/android/gms/internal/ads/hu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/ju;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ju;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hu;->b:Lcom/google/android/gms/internal/ads/ju;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hu;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hu;->b:Lcom/google/android/gms/internal/ads/ju;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hu;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ju;->a(Ljava/lang/String;)V

    return-void
.end method
