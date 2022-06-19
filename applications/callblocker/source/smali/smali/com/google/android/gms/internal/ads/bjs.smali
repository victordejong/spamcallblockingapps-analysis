.class final Lcom/google/android/gms/internal/ads/bjs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<",
        "Lcom/google/android/gms/internal/ads/chd;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bjp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bjp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bjs;->a:Lcom/google/android/gms/internal/ads/bjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/chd;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjs;->a:Lcom/google/android/gms/internal/ads/bjp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bjp;->a(Lcom/google/android/gms/internal/ads/bjp;)Lcom/google/android/gms/internal/ads/asc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/asc;->a(Lcom/google/android/gms/internal/ads/chd;)V

    .line 5
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 2
    return-void
.end method
