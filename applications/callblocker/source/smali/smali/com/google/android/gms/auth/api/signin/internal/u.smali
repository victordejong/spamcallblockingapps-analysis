.class public final Lcom/google/android/gms/auth/api/signin/internal/u;
.super Lcom/google/android/gms/internal/b/d;
.source "com.google.android.gms:play-services-auth@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/internal/v;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/b/d;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/api/signin/internal/t;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/b/d;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/b/f;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 10
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/b/f;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 11
    const/16 v1, 0x66

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/b/d;->a(ILandroid/os/Parcel;)V

    .line 12
    return-void
.end method

.method public final b(Lcom/google/android/gms/auth/api/signin/internal/t;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/b/d;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/b/f;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 15
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/b/f;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 16
    const/16 v1, 0x67

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/b/d;->a(ILandroid/os/Parcel;)V

    .line 17
    return-void
.end method
