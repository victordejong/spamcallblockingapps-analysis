.class final Lcom/google/android/gms/internal/ads/aov;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "Lcom/google/android/gms/internal/ads/zzauj;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/aor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aov;->a:Lcom/google/android/gms/internal/ads/aor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aov;->a:Lcom/google/android/gms/internal/ads/aor;

    .line 2065
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/aor;->c:Lcom/google/android/gms/internal/ads/awa;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/awa;->a(Z)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aov;->a:Lcom/google/android/gms/internal/ads/aor;

    .line 1065
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/aor;->c:Lcom/google/android/gms/internal/ads/awa;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/awa;->a(Z)V

    return-void
.end method
