.class final synthetic Lcom/google/android/gms/internal/ads/bcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bcf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bcf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcg;->a:Lcom/google/android/gms/internal/ads/bcf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcg;->a:Lcom/google/android/gms/internal/ads/bcf;

    .line 1258
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bcf;->b:Lcom/google/android/gms/internal/ads/bcz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/bcz;->g()V

    .line 1259
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bcf;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->C()V

    return-void
.end method
