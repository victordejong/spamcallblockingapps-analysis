.class public final Lcom/google/android/gms/internal/b/i;
.super Lcom/google/android/gms/internal/b/d;
.source "com.google.android.gms:play-services-auth@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/b/j;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/b/d;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method
