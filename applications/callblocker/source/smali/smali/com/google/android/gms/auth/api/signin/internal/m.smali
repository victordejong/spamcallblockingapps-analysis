.class final Lcom/google/android/gms/auth/api/signin/internal/m;
.super Lcom/google/android/gms/auth/api/signin/internal/f;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/auth/api/signin/internal/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/n;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/m;->a:Lcom/google/android/gms/auth/api/signin/internal/n;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/m;->a:Lcom/google/android/gms/auth/api/signin/internal/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/n;->b(Lcom/google/android/gms/common/api/h;)V

    .line 3
    return-void
.end method
