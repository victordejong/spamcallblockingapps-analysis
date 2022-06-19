.class final synthetic Lcom/google/android/gms/internal/ads/w80;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/sc0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zj;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/w80;->a:Lcom/google/android/gms/internal/ads/zj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/w80;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/w80;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w80;->a:Lcom/google/android/gms/internal/ads/zj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/w80;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/w80;->c:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/s70;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/s70;->u(Lcom/google/android/gms/internal/ads/zj;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
