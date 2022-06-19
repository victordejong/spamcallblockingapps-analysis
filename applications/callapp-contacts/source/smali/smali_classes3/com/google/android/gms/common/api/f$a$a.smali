.class public final Lcom/google/android/gms/common/api/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/api/internal/q;

.field private b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Looper;)Lcom/google/android/gms/common/api/f$a$a;
    .locals 1

    const-string v0, "Looper must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/f$a$a;->b:Landroid/os/Looper;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/q;)Lcom/google/android/gms/common/api/f$a$a;
    .locals 1

    const-string v0, "StatusExceptionMapper must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/f$a$a;->a:Lcom/google/android/gms/common/api/internal/q;

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/common/api/f$a;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/f$a$a;->a:Lcom/google/android/gms/common/api/internal/q;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/f$a$a;->a:Lcom/google/android/gms/common/api/internal/q;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/f$a$a;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/f$a$a;->b:Landroid/os/Looper;

    .line 3
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/f$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/f$a$a;->a:Lcom/google/android/gms/common/api/internal/q;

    iget-object v2, p0, Lcom/google/android/gms/common/api/f$a$a;->b:Landroid/os/Looper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/android/gms/common/api/f$a;-><init>(Lcom/google/android/gms/common/api/internal/q;Landroid/accounts/Account;Landroid/os/Looper;Lcom/google/android/gms/common/api/t;)V

    return-object v0
.end method
