.class final Lcom/google/android/gms/auth/api/signin/internal/n;
.super Lcom/google/android/gms/auth/api/signin/internal/d;
.source "com.google.android.gms:play-services-auth@@19.0.0"


# instance fields
.field private final synthetic d:Lcom/google/android/gms/auth/api/signin/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/n;->d:Lcom/google/android/gms/auth/api/signin/internal/k;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final F1(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/n;->d:Lcom/google/android/gms/auth/api/signin/internal/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lcom/google/android/gms/common/api/i;)V

    return-void
.end method
