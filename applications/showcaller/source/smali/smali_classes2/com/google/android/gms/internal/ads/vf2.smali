.class final Lcom/google/android/gms/internal/ads/vf2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bm2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/g21<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/xy0;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bm2<",
        "TR;TAdT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/sg2<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/ql2<",
            "TR;TAdT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sg2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/sg2<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/ql2<",
            "TR;TAdT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vf2;->a:Lcom/google/android/gms/internal/ads/sg2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ql2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ql2<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf2;->a:Lcom/google/android/gms/internal/ads/sg2;

    check-cast v0, Lcom/google/android/gms/internal/ads/sf2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sf2;->b()Lcom/google/android/gms/internal/ads/g21;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/ql2;->a:Lcom/google/android/gms/internal/ads/g21;

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/cm2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cm2<",
            "TR;TAdT;>;)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/ql2<",
            "TR;TAdT;>;>;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/wf2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf2;->a:Lcom/google/android/gms/internal/ads/sg2;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/wf2;->b:Lcom/google/android/gms/internal/ads/tg2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/wf2;->a:Lcom/google/android/gms/internal/ads/rg2;

    check-cast v0, Lcom/google/android/gms/internal/ads/sf2;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/sf2;->c(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
