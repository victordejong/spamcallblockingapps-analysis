.class final Lcom/google/android/gms/auth/api/signin/internal/n;
.super Lcom/google/android/gms/auth/api/signin/internal/d;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/auth/api/signin/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/n;->a:Lcom/google/android/gms/auth/api/signin/internal/k;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/n;->a:Lcom/google/android/gms/auth/api/signin/internal/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/k;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
