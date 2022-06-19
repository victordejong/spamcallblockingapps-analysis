.class public abstract Lcom/google/android/gms/common/internal/f;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/f;
    .locals 1

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/common/internal/x;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/common/internal/x;-><init>(Landroid/content/Intent;Landroid/app/Activity;I)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/common/api/internal/i;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/f;
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/common/internal/y;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/common/internal/y;-><init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/i;I)V

    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->a()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 11
    :goto_0
    return-void

    .line 8
    :catch_0
    move-exception v0

    .line 9
    :try_start_1
    const-string/jumbo v1, "DialogRedirect"

    const-string/jumbo v2, "Failed to start resolution intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    throw v0
.end method
