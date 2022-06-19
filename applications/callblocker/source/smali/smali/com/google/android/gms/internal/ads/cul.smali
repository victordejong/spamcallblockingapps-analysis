.class final Lcom/google/android/gms/internal/ads/cul;
.super Lcom/google/android/gms/internal/ads/csw;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csw",
        "<",
        "Lcom/google/android/gms/internal/ads/cyj;",
        "Lcom/google/android/gms/internal/ads/cyi;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cuj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cuj;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cul;->a:Lcom/google/android/gms/internal/ads/cuj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/csw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cyj;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cyj;

    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/deg;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/cyj;

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cyj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/cyi;->c()Lcom/google/android/gms/internal/ads/cyi$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cyi$a;->a(Lcom/google/android/gms/internal/ads/cyj;)Lcom/google/android/gms/internal/ads/cyi$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cyi$a;->a(I)Lcom/google/android/gms/internal/ads/cyi$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cyi;

    .line 4
    return-object v0
.end method
