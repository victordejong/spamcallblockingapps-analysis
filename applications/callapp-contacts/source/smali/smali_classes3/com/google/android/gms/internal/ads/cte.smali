.class final synthetic Lcom/google/android/gms/internal/ads/cte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/csz;

.field private final b:Lcom/google/android/gms/internal/ads/csu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/csz;Lcom/google/android/gms/internal/ads/csu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cte;->a:Lcom/google/android/gms/internal/ads/csz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cte;->b:Lcom/google/android/gms/internal/ads/csu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cte;->a:Lcom/google/android/gms/internal/ads/csz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cte;->b:Lcom/google/android/gms/internal/ads/csu;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/csz;->e:Lcom/google/android/gms/internal/ads/cst;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cst;->c(Lcom/google/android/gms/internal/ads/cst;)Lcom/google/android/gms/internal/ads/ctg;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ctg;->b(Lcom/google/android/gms/internal/ads/csu;)V

    return-void
.end method
