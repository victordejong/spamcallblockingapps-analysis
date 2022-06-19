.class public final Lcom/google/android/gms/internal/ads/dgr$b$a$a;
.super Lcom/google/android/gms/internal/ads/dcw$a;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dgr$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw$a",
        "<",
        "Lcom/google/android/gms/internal/ads/dgr$b$a;",
        "Lcom/google/android/gms/internal/ads/dgr$b$a$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgr$b$a;->b()Lcom/google/android/gms/internal/ads/dgr$b$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dcw$a;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dgq;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dgr$b$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dgr$b$a$a;
    .locals 1

    .prologue
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$a$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$a;->a(Lcom/google/android/gms/internal/ads/dgr$b$a;Ljava/lang/String;)V

    .line 8
    return-object p0
.end method
