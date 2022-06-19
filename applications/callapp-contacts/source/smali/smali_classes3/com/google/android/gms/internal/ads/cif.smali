.class final synthetic Lcom/google/android/gms/internal/ads/cif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cie;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cie;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cif;->a:Lcom/google/android/gms/internal/ads/cie;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cif;->a:Lcom/google/android/gms/internal/ads/cie;

    check-cast p1, Ljava/lang/Exception;

    .line 1020
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cie;->b:Lcom/google/android/gms/internal/ads/yd;

    const-string v1, "AttestationTokenSignal"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
