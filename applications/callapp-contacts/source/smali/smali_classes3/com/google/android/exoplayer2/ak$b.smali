.class final Lcom/google/android/exoplayer2/ak$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ak;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ak;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/google/android/exoplayer2/ak$b;->a:Lcom/google/android/exoplayer2/ak;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ak;Lcom/google/android/exoplayer2/ak$1;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ak$b;-><init>(Lcom/google/android/exoplayer2/ak;)V

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/ak;)V
    .locals 0

    .line 2030
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ak;->c()V

    return-void
.end method

.method public static synthetic lambda$f37yomzB8Si4eVlgSUAcUB3YzuM(Lcom/google/android/exoplayer2/ak;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ak$b;->a(Lcom/google/android/exoplayer2/ak;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 214
    iget-object p1, p0, Lcom/google/android/exoplayer2/ak$b;->a:Lcom/google/android/exoplayer2/ak;

    .line 1030
    iget-object p1, p1, Lcom/google/android/exoplayer2/ak;->b:Landroid/os/Handler;

    .line 214
    iget-object p2, p0, Lcom/google/android/exoplayer2/ak$b;->a:Lcom/google/android/exoplayer2/ak;

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$ak$b$f37yomzB8Si4eVlgSUAcUB3YzuM;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/-$$Lambda$ak$b$f37yomzB8Si4eVlgSUAcUB3YzuM;-><init>(Lcom/google/android/exoplayer2/ak;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
