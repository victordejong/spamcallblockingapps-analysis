.class final Lcom/google/android/gms/internal/ads/jp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/wj",
        "<",
        "Lcom/google/android/gms/internal/ads/hp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/hp;

    .line 3
    const-string/jumbo v0, "/result"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->o:Lcom/google/android/gms/internal/ads/fg;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/hp;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 4
    return-void
.end method
