.class final Lcom/google/android/gms/internal/ads/egp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/efc;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/egn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/egn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/egp;->a:Lcom/google/android/gms/internal/ads/egn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/egp;->a:Lcom/google/android/gms/internal/ads/egn;

    .line 1073
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/egn;->a()V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/egp;->a:Lcom/google/android/gms/internal/ads/egn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/egn;->a(Lcom/google/android/gms/internal/ads/egn;)V

    return-void
.end method
