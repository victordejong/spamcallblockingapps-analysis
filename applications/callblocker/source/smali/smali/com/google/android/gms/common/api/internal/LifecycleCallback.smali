.class public Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# instance fields
.field protected final a:Lcom/google/android/gms/common/api/internal/i;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/i;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 11
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/i;
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/google/android/gms/common/api/internal/h;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/h;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a(Lcom/google/android/gms/common/api/internal/h;)Lcom/google/android/gms/common/api/internal/i;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Lcom/google/android/gms/common/api/internal/h;)Lcom/google/android/gms/common/api/internal/i;
    .locals 2

    .prologue
    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/h;->d()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/bk;->a(Landroidx/fragment/app/d;)Lcom/google/android/gms/common/api/internal/bk;

    move-result-object v0

    .line 5
    :goto_0
    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/h;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/bh;->a(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/bh;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t get fragment for unexpected activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getChimeraLifecycleFragmentImpl(Lcom/google/android/gms/common/api/internal/h;)Lcom/google/android/gms/common/api/internal/i;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Method not available in SDK."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lcom/google/android/gms/common/api/internal/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/i;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method
