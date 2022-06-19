.class final Lcom/google/android/gms/internal/ads/ix;
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
        "Lcom/google/android/gms/internal/ads/hp;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/iq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/iu;Lcom/google/android/gms/internal/ads/iq;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ix;->a:Lcom/google/android/gms/internal/ads/iq;

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
    const-string/jumbo v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->a:Lcom/google/android/gms/internal/ads/iq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/hp;->c()Lcom/google/android/gms/internal/ads/jb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yv;->a(Ljava/lang/Object;)V

    .line 5
    return-void
.end method
