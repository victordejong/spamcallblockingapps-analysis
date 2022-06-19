.class public final Lcom/google/android/gms/internal/auth-api/g;
.super Lcom/google/android/gms/common/internal/f;
.source "com.google.android.gms:play-services-auth@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/f<",
        "Lcom/google/android/gms/internal/auth-api/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final I:Lcom/google/android/gms/auth/b/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/auth/b/a$a;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V
    .locals 7

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/auth/b/a$a$a;

    if-nez p4, :cond_0

    .line 3
    sget-object p4, Lcom/google/android/gms/auth/b/a$a;->d:Lcom/google/android/gms/auth/b/a$a;

    :cond_0
    invoke-direct {p1, p4}, Lcom/google/android/gms/auth/b/a$a$a;-><init>(Lcom/google/android/gms/auth/b/a$a;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/auth-api/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/auth/b/a$a$a;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/b/a$a$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/auth/b/a$a$a;->b()Lcom/google/android/gms/auth/b/a$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/g;->I:Lcom/google/android/gms/auth/b/a$a;

    return-void
.end method


# virtual methods
.method protected final D()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method protected final E()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method

.method public final l()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method protected final synthetic s(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/auth-api/j;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/auth-api/j;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/auth-api/i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth-api/i;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected final z()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/g;->I:Lcom/google/android/gms/auth/b/a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/b/a$a;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
