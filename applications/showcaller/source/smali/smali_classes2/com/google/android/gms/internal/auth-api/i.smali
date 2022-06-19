.class public final Lcom/google/android/gms/internal/auth-api/i;
.super Lcom/google/android/gms/internal/auth-api/d;
.source "com.google.android.gms:play-services-auth@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/auth-api/j;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api/d;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
