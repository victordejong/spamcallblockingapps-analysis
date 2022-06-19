.class public final Lcom/google/android/gms/internal/auth/f;
.super Lcom/google/android/gms/common/internal/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/f<",
        "Lcom/google/android/gms/internal/auth/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/auth/api/c;Lcom/google/android/gms/common/api/g$a;Lcom/google/android/gms/common/api/g$b;)V
    .locals 7

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/g$a;Lcom/google/android/gms/common/api/g$b;)V

    if-nez p4, :cond_0

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/f;->a:Landroid/os/Bundle;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method


# virtual methods
.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    .line 18
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 19
    instance-of v1, v0, Lcom/google/android/gms/internal/auth/g;

    if-eqz v1, :cond_1

    .line 20
    check-cast v0, Lcom/google/android/gms/internal/auth/g;

    return-object v0

    .line 21
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/auth/h;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth/h;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/f;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    return-object v0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.service.START"

    return-object v0
.end method

.method public final requiresSignIn()Z
    .locals 3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/f;->b()Lcom/google/android/gms/common/internal/e;

    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/common/internal/e;->a:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 1001
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/android/gms/auth/api/b;->a:Lcom/google/android/gms/common/api/a;

    .line 8
    iget-object v2, v0, Lcom/google/android/gms/common/internal/e;->d:Ljava/util/Map;

    .line 2001
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/x;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/common/internal/x;->a:Ljava/util/Set;

    .line 2002
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/e;->b:Ljava/util/Set;

    .line 2003
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, v1, Lcom/google/android/gms/common/internal/x;->a:Ljava/util/Set;

    .line 2004
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 2002
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/common/internal/e;->b:Ljava/util/Set;

    .line 8
    :goto_2
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
