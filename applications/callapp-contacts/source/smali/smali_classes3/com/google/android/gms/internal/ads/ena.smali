.class final synthetic Lcom/google/android/gms/internal/ads/ena;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/emy;

.field private final b:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/emy;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ena;->a:Lcom/google/android/gms/internal/ads/emy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ena;->b:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ena;->a:Lcom/google/android/gms/internal/ads/emy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ena;->b:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    .line 1172
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emy;->d:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    return-void
.end method
