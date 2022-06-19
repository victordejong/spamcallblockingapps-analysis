.class public final Lcom/google/android/gms/internal/b/h;
.super Lcom/google/android/gms/common/internal/h;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/h",
        "<",
        "Lcom/google/android/gms/internal/b/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/auth/api/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/auth/api/a$a;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V
    .locals 7

    .prologue
    .line 1
    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/auth/api/a$a$a;

    .line 3
    if-nez p4, :cond_0

    sget-object p4, Lcom/google/android/gms/auth/api/a$a;->a:Lcom/google/android/gms/auth/api/a$a;

    :cond_0
    invoke-direct {v0, p4}, Lcom/google/android/gms/auth/api/a$a$a;-><init>(Lcom/google/android/gms/auth/api/a$a;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/a$a$a;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/a$a$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/a$a$a;->a()Lcom/google/android/gms/auth/api/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/b/h;->e:Lcom/google/android/gms/auth/api/a$a;

    .line 6
    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .prologue
    .line 12
    .line 14
    if-nez p1, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0

    .line 16
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/google/android/gms/internal/b/j;

    if-eqz v1, :cond_1

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/b/j;

    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/b/i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/b/i;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 11
    const v0, 0xc35000

    return v0
.end method

.method protected final s()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/b/h;->e:Lcom/google/android/gms/auth/api/a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/a$a;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
