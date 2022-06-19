.class final Lcom/google/android/gms/internal/ads/cur;
.super Lcom/google/android/gms/internal/ads/csw;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csw",
        "<",
        "Lcom/google/android/gms/internal/ads/cyw;",
        "Lcom/google/android/gms/internal/ads/cyt;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cup;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cup;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cur;->a:Lcom/google/android/gms/internal/ads/cup;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/csw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cyw;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cyw;

    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/deg;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/cyw;

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cyw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/cyt;->c()Lcom/google/android/gms/internal/ads/cyt$a;

    move-result-object v0

    .line 4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cyt$a;->a(I)Lcom/google/android/gms/internal/ads/cyt$a;

    move-result-object v0

    const/16 v1, 0x20

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/daj;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cyt$a;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cyt$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cyt;

    .line 7
    return-object v0
.end method
