.class final synthetic Lcom/google/android/gms/internal/ads/ctm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/awn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/csu;

.field private final b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/csu;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ctm;->a:Lcom/google/android/gms/internal/ads/csu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ctm;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ctm;->a:Lcom/google/android/gms/internal/ads/csu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ctm;->b:Ljava/lang/Throwable;

    check-cast p1, Lcom/google/android/gms/internal/ads/cto;

    .line 1013
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/csu;->a:Ljava/lang/Object;

    .line 2
    check-cast v2, Lcom/google/android/gms/internal/ads/ctj;

    .line 1014
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/csu;->b:Ljava/lang/String;

    .line 2
    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/cto;->a(Lcom/google/android/gms/internal/ads/ctj;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
