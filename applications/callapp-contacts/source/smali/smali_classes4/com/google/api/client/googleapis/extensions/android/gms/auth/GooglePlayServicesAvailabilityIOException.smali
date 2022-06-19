.class public Lcom/google/api/client/googleapis/extensions/android/gms/auth/GooglePlayServicesAvailabilityIOException;
.super Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;-><init>(Lcom/google/android/gms/auth/UserRecoverableAuthException;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/gms/auth/GoogleAuthException;
    .locals 1

    .line 2058
    invoke-super {p0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->b()Lcom/google/android/gms/auth/UserRecoverableAuthException;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;

    return-object v0
.end method

.method public final bridge synthetic b()Lcom/google/android/gms/auth/UserRecoverableAuthException;
    .locals 1

    .line 1058
    invoke-super {p0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->b()Lcom/google/android/gms/auth/UserRecoverableAuthException;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;

    return-object v0
.end method

.method public synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .line 3058
    invoke-super {p0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->b()Lcom/google/android/gms/auth/UserRecoverableAuthException;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;

    return-object v0
.end method
