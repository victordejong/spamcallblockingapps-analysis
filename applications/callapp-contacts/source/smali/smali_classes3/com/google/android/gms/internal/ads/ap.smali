.class final synthetic Lcom/google/android/gms/internal/ads/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cyn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/am;

.field private final b:Lcom/google/android/gms/internal/ads/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/am;Lcom/google/android/gms/internal/ads/af;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ap;->a:Lcom/google/android/gms/internal/ads/am;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ap;->b:Lcom/google/android/gms/internal/ads/af;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ap;->a:Lcom/google/android/gms/internal/ads/am;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ap;->b:Lcom/google/android/gms/internal/ads/af;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/am;->b(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
