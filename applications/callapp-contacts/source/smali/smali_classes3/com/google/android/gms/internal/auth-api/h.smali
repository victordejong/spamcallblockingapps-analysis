.class public final Lcom/google/android/gms/internal/auth-api/h;
.super Lcom/google/android/gms/common/internal/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/f<",
        "Lcom/google/android/gms/internal/auth-api/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/auth/api/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/auth/api/a$a;Lcom/google/android/gms/common/api/g$a;Lcom/google/android/gms/common/api/g$b;)V
    .locals 7

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/g$a;Lcom/google/android/gms/common/api/g$b;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/auth/api/a$a$a;

    if-nez p4, :cond_0

    .line 3
    sget-object p4, Lcom/google/android/gms/auth/api/a$a;->a:Lcom/google/android/gms/auth/api/a$a;

    :cond_0
    invoke-direct {p1, p4}, Lcom/google/android/gms/auth/api/a$a$a;-><init>(Lcom/google/android/gms/auth/api/a$a;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/auth-api/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/auth/api/a$a$a;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/a$a$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/a$a$a;->a()Lcom/google/android/gms/auth/api/a$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/h;->a:Lcom/google/android/gms/auth/api/a$a;

    return-void
.end method


# virtual methods
.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    .line 16
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/google/android/gms/internal/auth-api/k;

    if-eqz v1, :cond_1

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/auth-api/k;

    return-object v0

    .line 19
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/auth-api/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth-api/j;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/h;->a:Lcom/google/android/gms/auth/api/a$a;

    .line 1017
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1018
    iget-object v2, v0, Lcom/google/android/gms/auth/api/a$a;->b:Ljava/lang/String;

    const-string v3, "consumer_package"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-boolean v2, v0, Lcom/google/android/gms/auth/api/a$a;->c:Z

    const-string v3, "force_save_dialog"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1020
    iget-object v0, v0, Lcom/google/android/gms/auth/api/a$a;->d:Ljava/lang/String;

    const-string v2, "log_session_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method
