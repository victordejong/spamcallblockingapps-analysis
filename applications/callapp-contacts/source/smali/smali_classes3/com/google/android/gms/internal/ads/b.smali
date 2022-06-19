.class final Lcom/google/android/gms/internal/ads/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:J

.field private final synthetic c:Lcom/google/android/gms/internal/ads/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/z;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b;->c:Lcom/google/android/gms/internal/ads/z;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/b;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/b;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b;->c:Lcom/google/android/gms/internal/ads/z;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/z;->zzb(Lcom/google/android/gms/internal/ads/z;)Lcom/google/android/gms/internal/ads/mz$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/b;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/b;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/mz$a;->a(Ljava/lang/String;J)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b;->c:Lcom/google/android/gms/internal/ads/z;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/z;->zzb(Lcom/google/android/gms/internal/ads/z;)Lcom/google/android/gms/internal/ads/mz$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/b;->c:Lcom/google/android/gms/internal/ads/z;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/z;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mz$a;->a(Ljava/lang/String;)V

    return-void
.end method
