.class public final Lcom/google/android/gms/internal/ads/g31;
.super Lcom/google/android/gms/internal/ads/d31;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/d31<",
        "Lcom/google/android/gms/internal/ads/lf0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fv;

.field private final b:Lcom/google/android/gms/internal/ads/c70;

.field private final c:Lcom/google/android/gms/internal/ads/o51;

.field private final d:Lcom/google/android/gms/internal/ads/wc0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/c70;Lcom/google/android/gms/internal/ads/o51;Lcom/google/android/gms/internal/ads/wc0;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d31;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g31;->a:Lcom/google/android/gms/internal/ads/fv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/g31;->b:Lcom/google/android/gms/internal/ads/c70;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/g31;->c:Lcom/google/android/gms/internal/ads/o51;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/g31;->d:Lcom/google/android/gms/internal/ads/wc0;

    return-void
.end method


# virtual methods
.method protected final c(Lcom/google/android/gms/internal/ads/sl1;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/sl1;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/lf0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g31;->a:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fv;->s()Lcom/google/android/gms/internal/ads/ig0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/g31;->b:Lcom/google/android/gms/internal/ads/c70;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/c70;->b(Lcom/google/android/gms/internal/ads/sl1;)Lcom/google/android/gms/internal/ads/c70;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/c70;->c(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/c70;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/c70;->d()Lcom/google/android/gms/internal/ads/d70;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ig0;->c(Lcom/google/android/gms/internal/ads/d70;)Lcom/google/android/gms/internal/ads/ig0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g31;->d:Lcom/google/android/gms/internal/ads/wc0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ig0;->u(Lcom/google/android/gms/internal/ads/wc0;)Lcom/google/android/gms/internal/ads/ig0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g31;->c:Lcom/google/android/gms/internal/ads/o51;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ig0;->p(Lcom/google/android/gms/internal/ads/o51;)Lcom/google/android/gms/internal/ads/ig0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ig0;->zza()Lcom/google/android/gms/internal/ads/jg0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jg0;->b()Lcom/google/android/gms/internal/ads/y40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y40;->b()Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/y40;->c(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method
