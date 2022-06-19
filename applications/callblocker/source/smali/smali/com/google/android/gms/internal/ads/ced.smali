.class final Lcom/google/android/gms/internal/ads/ced;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cjo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/aoz",
        "<TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/amh;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cjo",
        "<TAdT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cev",
            "<TR;",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<TAdT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cev;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cev",
            "<TR;",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<TAdT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ced;->a:Lcom/google/android/gms/internal/ads/cev;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cjn;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cjn;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<TAdT;>;>;"
        }
    .end annotation

    .prologue
    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/cec;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ced;->a:Lcom/google/android/gms/internal/ads/cev;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/cec;->b:Lcom/google/android/gms/internal/ads/cew;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/cec;->a:Lcom/google/android/gms/internal/ads/cex;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cev;->a(Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ciy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<TAdT;>;)V"
        }
    .end annotation

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ced;->a:Lcom/google/android/gms/internal/ads/cev;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cev;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aoz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoz;->c()Lcom/google/android/gms/internal/ads/ang;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/ciy;->a:Lcom/google/android/gms/internal/ads/ang;

    .line 7
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 8
    return-void
.end method
