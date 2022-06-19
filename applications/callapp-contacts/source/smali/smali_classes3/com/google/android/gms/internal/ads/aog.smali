.class final Lcom/google/android/gms/internal/ads/aog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "Lcom/google/android/gms/internal/ads/anp;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dbi;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/aoa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aoa;Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aog;->b:Lcom/google/android/gms/internal/ads/aoa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aog;->a:Lcom/google/android/gms/internal/ads/dbi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/anp;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aog;->b:Lcom/google/android/gms/internal/ads/aoa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aoa;->a(Lcom/google/android/gms/internal/ads/aoa;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aog;->a:Lcom/google/android/gms/internal/ads/dbi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aog;->b:Lcom/google/android/gms/internal/ads/aoa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aoa;->a(Lcom/google/android/gms/internal/ads/aoa;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aog;->a:Lcom/google/android/gms/internal/ads/dbi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/lang/Throwable;)V

    return-void
.end method
