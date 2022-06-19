.class public final Lcom/google/android/gms/auth/api/signin/internal/x;
.super Lcom/google/android/gms/internal/auth-api/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/internal/u;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api/d;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/api/signin/internal/s;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api/d;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth-api/f;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/auth-api/f;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x65

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api/d;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/auth/api/signin/internal/s;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api/d;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth-api/f;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 10
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/auth-api/f;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x66

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api/d;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/auth/api/signin/internal/s;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api/d;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth-api/f;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 15
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/auth-api/f;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x67

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api/d;->a(ILandroid/os/Parcel;)V

    return-void
.end method
