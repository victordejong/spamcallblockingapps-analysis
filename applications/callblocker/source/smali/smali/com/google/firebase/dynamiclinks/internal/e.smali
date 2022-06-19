.class public final Lcom/google/firebase/dynamiclinks/internal/e;
.super Lcom/google/android/gms/common/internal/h;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/h",
        "<",
        "Lcom/google/firebase/dynamiclinks/internal/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V
    .locals 7

    .prologue
    .line 1
    const/16 v3, 0x83

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .prologue
    .line 6
    .line 8
    if-nez p1, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0

    .line 10
    :cond_0
    const-string/jumbo v0, "com.google.firebase.dynamiclinks.internal.IDynamicLinksService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/google/firebase/dynamiclinks/internal/l;

    if-eqz v1, :cond_1

    .line 12
    check-cast v0, Lcom/google/firebase/dynamiclinks/internal/l;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/o;

    invoke-direct {v0, p1}, Lcom/google/firebase/dynamiclinks/internal/o;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3
    const-string/jumbo v0, "com.google.firebase.dynamiclinks.service.START"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4
    const-string/jumbo v0, "com.google.firebase.dynamiclinks.internal.IDynamicLinksService"

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 5
    const v0, 0xbdfcb8

    return v0
.end method
