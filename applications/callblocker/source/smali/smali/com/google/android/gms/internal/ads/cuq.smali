.class final Lcom/google/android/gms/internal/ads/cuq;
.super Lcom/google/android/gms/internal/ads/csw;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csw",
        "<",
        "Lcom/google/android/gms/internal/ads/cyn;",
        "Lcom/google/android/gms/internal/ads/cym;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cuo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cuo;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cuq;->a:Lcom/google/android/gms/internal/ads/cuo;

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

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cyn;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cyn;

    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/deg;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/cyn;

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cyn;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/cym;->c()Lcom/google/android/gms/internal/ads/cym$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cym$a;->a(Lcom/google/android/gms/internal/ads/cyn;)Lcom/google/android/gms/internal/ads/cym$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cym$a;->a(I)Lcom/google/android/gms/internal/ads/cym$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cym;

    .line 4
    return-object v0
.end method
