.class final Lcom/google/android/gms/auth/api/signin/internal/l;
.super Lcom/google/android/gms/auth/api/signin/internal/d;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/auth/api/signin/internal/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/l;->a:Lcom/google/android/gms/auth/api/signin/internal/i;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/l;->a:Lcom/google/android/gms/auth/api/signin/internal/i;

    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/internal/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/r;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/l;->a:Lcom/google/android/gms/auth/api/signin/internal/i;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/internal/i;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/r;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/l;->a:Lcom/google/android/gms/auth/api/signin/internal/i;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/e;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/signin/e;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/i;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
