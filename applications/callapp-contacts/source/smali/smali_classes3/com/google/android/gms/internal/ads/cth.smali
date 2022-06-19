.class final Lcom/google/android/gms/internal/ads/cth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "TO;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/csu;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/csz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/csz;Lcom/google/android/gms/internal/ads/csu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cth;->b:Lcom/google/android/gms/internal/ads/csz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cth;->a:Lcom/google/android/gms/internal/ads/csu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cth;->b:Lcom/google/android/gms/internal/ads/csz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/csz;->e:Lcom/google/android/gms/internal/ads/cst;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cst;->c(Lcom/google/android/gms/internal/ads/cst;)Lcom/google/android/gms/internal/ads/ctg;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cth;->a:Lcom/google/android/gms/internal/ads/csu;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/ctg;->c(Lcom/google/android/gms/internal/ads/csu;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cth;->b:Lcom/google/android/gms/internal/ads/csz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/csz;->e:Lcom/google/android/gms/internal/ads/cst;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cst;->c(Lcom/google/android/gms/internal/ads/cst;)Lcom/google/android/gms/internal/ads/ctg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cth;->a:Lcom/google/android/gms/internal/ads/csu;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ctg;->a(Lcom/google/android/gms/internal/ads/csu;Ljava/lang/Throwable;)V

    return-void
.end method
