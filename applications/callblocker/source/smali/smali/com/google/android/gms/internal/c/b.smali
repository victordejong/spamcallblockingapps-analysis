.class public final Lcom/google/android/gms/internal/c/b;
.super Lcom/google/android/gms/common/internal/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/h",
        "<",
        "Lcom/google/android/gms/internal/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/auth/api/c;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V
    .locals 7

    .prologue
    .line 1
    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V

    .line 2
    if-nez p4, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/c/b;->e:Landroid/os/Bundle;

    .line 5
    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .prologue
    .line 14
    .line 16
    if-nez p1, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0

    .line 18
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.auth.api.internal.IAuthService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 19
    instance-of v1, v0, Lcom/google/android/gms/internal/c/c;

    if-eqz v1, :cond_1

    .line 20
    check-cast v0, Lcom/google/android/gms/internal/c/c;

    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/c/d;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/c/d;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "com.google.android.gms.auth.service.START"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "com.google.android.gms.auth.api.internal.IAuthService"

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 13
    const v0, 0xbdfcb8

    return v0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c/b;->A()Lcom/google/android/gms/common/internal/d;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/auth/api/b;->a:Lcom/google/android/gms/common/api/a;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/d;->a(Lcom/google/android/gms/common/api/a;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 9
    :goto_0
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    goto :goto_0
.end method

.method protected final s()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/c/b;->e:Landroid/os/Bundle;

    return-object v0
.end method
