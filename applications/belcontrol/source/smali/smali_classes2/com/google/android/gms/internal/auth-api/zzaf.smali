.class public final Lcom/google/android/gms/internal/auth-api/zzaf;
.super Lcom/google/android/gms/internal/auth-api/zzd;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/auth-api/zzac;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.identity.internal.ICredentialSavingService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api/zzd;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/auth-api/zzag;Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api/zzd;->zzc()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth-api/zzf;->zzc(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/auth-api/zzf;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api/zzd;->zzc(ILandroid/os/Parcel;)V

    return-void
.end method
