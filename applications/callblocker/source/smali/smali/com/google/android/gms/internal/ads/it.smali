.class final Lcom/google/android/gms/internal/ads/it;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ys;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ys",
        "<",
        "Lcom/google/android/gms/internal/ads/jc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/iq;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/jc;

    .line 3
    const-string/jumbo v0, "Ending javascript session."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/jb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jb;->a()V

    .line 5
    return-void
.end method
