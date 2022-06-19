.class final Lcom/google/android/gms/internal/ads/anl;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ang;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ang;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/anl;->a:Lcom/google/android/gms/internal/ads/ang;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 4
    check-cast p1, Ljava/lang/Void;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->a:Lcom/google/android/gms/internal/ads/ang;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ang;->a(Lcom/google/android/gms/internal/ads/ang;)Lcom/google/android/gms/internal/ads/ass;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ass;->b(Z)V

    .line 6
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->a:Lcom/google/android/gms/internal/ads/ang;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ang;->a(Lcom/google/android/gms/internal/ads/ang;)Lcom/google/android/gms/internal/ads/ass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ass;->b(Z)V

    .line 3
    return-void
.end method
