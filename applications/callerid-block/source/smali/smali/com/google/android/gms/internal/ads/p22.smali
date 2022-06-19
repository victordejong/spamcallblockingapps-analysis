.class final Lcom/google/android/gms/internal/ads/p22;
.super Lcom/google/android/gms/internal/ads/t02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/t02<",
        "Lcom/google/android/gms/internal/ads/i02;",
        "Lcom/google/android/gms/internal/ads/p82;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/t02;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/p82;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p82;->F()Lcom/google/android/gms/internal/ads/t82;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t82;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/x02;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/w02;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/w02;->b()Lcom/google/android/gms/internal/ads/i02;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/o22;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p82;->F()Lcom/google/android/gms/internal/ads/t82;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t82;->F()Lcom/google/android/gms/internal/ads/t72;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/o22;-><init>(Lcom/google/android/gms/internal/ads/t72;Lcom/google/android/gms/internal/ads/i02;)V

    return-object v1
.end method
