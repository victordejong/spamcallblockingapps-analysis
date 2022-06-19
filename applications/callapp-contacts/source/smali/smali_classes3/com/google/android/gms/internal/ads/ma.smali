.class final synthetic Lcom/google/android/gms/internal/ads/ma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/hi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ma;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ma;->b:Lcom/google/android/gms/internal/ads/hi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ma;->b:Lcom/google/android/gms/internal/ads/hi;

    check-cast p1, Lcom/google/android/gms/internal/ads/lc;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/lc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    return-object p1
.end method
