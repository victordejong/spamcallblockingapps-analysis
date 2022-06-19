.class final synthetic Lcom/google/android/gms/internal/ads/li0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/ni0;

.field private final c:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ni0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/li0;->b:Lcom/google/android/gms/internal/ads/ni0;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/li0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/li0;->b:Lcom/google/android/gms/internal/ads/ni0;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/li0;->c:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ni0;->n(Z)V

    return-void
.end method
