.class public Lcom/google/android/gms/common/api/c$a$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/api/internal/n;

.field private b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Looper;)Lcom/google/android/gms/common/api/c$a$a;
    .locals 1

    .prologue
    .line 5
    const-string/jumbo v0, "Looper must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/common/api/c$a$a;->b:Landroid/os/Looper;

    .line 7
    return-object p0
.end method

.method public a(Lcom/google/android/gms/common/api/internal/n;)Lcom/google/android/gms/common/api/c$a$a;
    .locals 1

    .prologue
    .line 2
    const-string/jumbo v0, "StatusExceptionMapper must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/c$a$a;->a:Lcom/google/android/gms/common/api/internal/n;

    .line 4
    return-object p0
.end method

.method public a()Lcom/google/android/gms/common/api/c$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$a$a;->a:Lcom/google/android/gms/common/api/internal/n;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c$a$a;->a:Lcom/google/android/gms/common/api/internal/n;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$a$a;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c$a$a;->b:Landroid/os/Looper;

    .line 12
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/c$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/c$a$a;->a:Lcom/google/android/gms/common/api/internal/n;

    iget-object v2, p0, Lcom/google/android/gms/common/api/c$a$a;->b:Landroid/os/Looper;

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/android/gms/common/api/c$a;-><init>(Lcom/google/android/gms/common/api/internal/n;Landroid/accounts/Account;Landroid/os/Looper;Lcom/google/android/gms/common/api/m;)V

    return-object v0
.end method
