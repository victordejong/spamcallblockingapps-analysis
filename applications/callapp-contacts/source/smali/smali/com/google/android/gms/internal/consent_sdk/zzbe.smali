.class public final Lcom/google/android/gms/internal/consent_sdk/zzbe;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/gms/internal/consent_sdk/ak;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/ai;Landroid/os/Handler;Lcom/google/android/gms/internal/consent_sdk/ak;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->c:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->a:Landroid/os/Handler;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->b:Lcom/google/android/gms/internal/consent_sdk/ak;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/consent_sdk/zzbe;)Lcom/google/android/gms/internal/consent_sdk/ak;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->b:Lcom/google/android/gms/internal/consent_sdk/ak;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "consent://"

    .line 1012
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/consent_sdk/zzbe;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/consent_sdk/zzbe;)Z
    .locals 1

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->c:Z

    return v0
.end method
