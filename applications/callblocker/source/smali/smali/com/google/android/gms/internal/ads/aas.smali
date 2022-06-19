.class final synthetic Lcom/google/android/gms/internal/ads/aas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aal;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aal;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aas;->a:Lcom/google/android/gms/internal/ads/aal;

    iput p2, p0, Lcom/google/android/gms/internal/ads/aas;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aas;->a:Lcom/google/android/gms/internal/ads/aal;

    iget v1, p0, Lcom/google/android/gms/internal/ads/aas;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aal;->h(I)V

    return-void
.end method
