.class public final Lcom/google/android/gms/internal/ads/cme;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cme;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cme;->b:Landroid/os/Looper;

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/cmt;->a()Lcom/google/android/gms/internal/ads/cmt$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cme;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cmt$b;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cmt$b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/cmt$a;->a:Lcom/google/android/gms/internal/ads/cmt$a;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cmt$b;->a(Lcom/google/android/gms/internal/ads/cmt$a;)Lcom/google/android/gms/internal/ads/cmt$b;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/cmm;->a()Lcom/google/android/gms/internal/ads/cmm$b;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/cmm$b;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cmm$b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/cmm$a;->a:Lcom/google/android/gms/internal/ads/cmm$a;

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cmm$b;->a(Lcom/google/android/gms/internal/ads/cmm$a;)Lcom/google/android/gms/internal/ads/cmm$b;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cmt$b;->a(Lcom/google/android/gms/internal/ads/cmm$b;)Lcom/google/android/gms/internal/ads/cmt$b;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cmt;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cme;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cme;->b:Landroid/os/Looper;

    .line 14
    new-instance v3, Lcom/google/android/gms/internal/ads/cmd;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/cmd;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/cmt;)V

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cmd;->a()V

    .line 16
    return-void
.end method
