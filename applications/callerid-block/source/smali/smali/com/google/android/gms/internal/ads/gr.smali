.class final synthetic Lcom/google/android/gms/internal/ads/gr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/zzbef;

.field private final c:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbef;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gr;->b:Lcom/google/android/gms/internal/ads/zzbef;

    iput p2, p0, Lcom/google/android/gms/internal/ads/gr;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gr;->b:Lcom/google/android/gms/internal/ads/zzbef;

    iget v1, p0, Lcom/google/android/gms/internal/ads/gr;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbef;->E(I)V

    return-void
.end method
