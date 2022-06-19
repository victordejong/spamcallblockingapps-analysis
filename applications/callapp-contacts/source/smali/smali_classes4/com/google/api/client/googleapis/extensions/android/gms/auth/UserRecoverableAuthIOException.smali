.class public Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;
.super Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/UserRecoverableAuthException;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;-><init>(Lcom/google/android/gms/auth/GoogleAuthException;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/google/android/gms/auth/GoogleAuthException;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->b()Lcom/google/android/gms/auth/UserRecoverableAuthException;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/gms/auth/UserRecoverableAuthException;
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;->a()Lcom/google/android/gms/auth/GoogleAuthException;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    return-object v0
.end method

.method public synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->b()Lcom/google/android/gms/auth/UserRecoverableAuthException;

    move-result-object v0

    return-object v0
.end method
