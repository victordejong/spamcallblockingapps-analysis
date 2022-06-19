.class final Lcom/google/android/gms/internal/ads/l22;
.super Lcom/google/android/gms/internal/ads/t02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/t02<",
        "Lcom/google/android/gms/internal/ads/i02;",
        "Lcom/google/android/gms/internal/ads/j82;",
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
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/j82;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j82;->F()Lcom/google/android/gms/internal/ads/m82;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/m82;->E()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/x02;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/w02;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/w02;->b()Lcom/google/android/gms/internal/ads/i02;

    move-result-object p1

    return-object p1
.end method
