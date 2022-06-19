.class final Lcom/google/android/gms/auth/api/signin/internal/n;
.super Lcom/google/android/gms/auth/api/signin/internal/p;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/signin/internal/p",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/p;-><init>(Lcom/google/android/gms/common/api/d;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/h;
    .locals 0

    .prologue
    .line 8
    .line 9
    return-object p1
.end method

.method protected final synthetic a(Lcom/google/android/gms/common/api/a$b;)V
    .locals 3

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/j;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/j;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/v;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/m;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/m;-><init>(Lcom/google/android/gms/auth/api/signin/internal/n;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/j;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/v;->b(Lcom/google/android/gms/auth/api/signin/internal/t;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 7
    return-void
.end method
