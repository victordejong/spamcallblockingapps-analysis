.class final synthetic Lcom/google/android/gms/internal/ads/bik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eir;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bih;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bih;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bik;->a:Lcom/google/android/gms/internal/ads/bih;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bik;->a:Lcom/google/android/gms/internal/ads/bih;

    .line 1059
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bih;->a:Lcom/google/android/gms/internal/ads/arj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/arj;->onAdClicked()V

    return-void
.end method
