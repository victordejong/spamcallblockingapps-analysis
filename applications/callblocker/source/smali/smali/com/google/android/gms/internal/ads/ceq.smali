.class final Lcom/google/android/gms/internal/ads/ceq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/coe",
        "<",
        "Lcom/google/android/gms/internal/ads/pw;",
        "Lcom/google/android/gms/internal/ads/cet;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cep;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cep;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ceq;->a:Lcom/google/android/gms/internal/ads/cep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/pw;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ceq;->a:Lcom/google/android/gms/internal/ads/cep;

    new-instance v1, Lcom/google/android/gms/internal/ads/cet;

    new-instance v2, Lcom/google/android/gms/internal/ads/cje;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/pw;->k:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/cje;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/cet;-><init>(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/cjb;Lcom/google/android/gms/internal/ads/cer;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cep;->a(Lcom/google/android/gms/internal/ads/cep;Lcom/google/android/gms/internal/ads/cet;)Lcom/google/android/gms/internal/ads/cet;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ceq;->a:Lcom/google/android/gms/internal/ads/cep;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cep;->b(Lcom/google/android/gms/internal/ads/cep;)Lcom/google/android/gms/internal/ads/cet;

    move-result-object v0

    .line 5
    return-object v0
.end method
