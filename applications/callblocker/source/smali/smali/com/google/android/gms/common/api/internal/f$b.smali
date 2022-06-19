.class final Lcom/google/android/gms/common/api/internal/f$b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ao;
.implements Lcom/google/android/gms/common/internal/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/f;

.field private final b:Lcom/google/android/gms/common/api/a$f;

.field private final c:Lcom/google/android/gms/common/api/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/b",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/common/internal/l;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/common/api/internal/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$f;",
            "Lcom/google/android/gms/common/api/internal/b",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/f$b;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/f$b;->d:Lcom/google/android/gms/common/internal/l;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/f$b;->e:Ljava/util/Set;

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/f$b;->f:Z

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/f$b;->b:Lcom/google/android/gms/common/api/a$f;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/f$b;->c:Lcom/google/android/gms/common/api/internal/b;

    .line 7
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/f$b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f$b;->c:Lcom/google/android/gms/common/api/internal/b;

    return-object v0
.end method

.method private final a()V
    .locals 3

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/f$b;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f$b;->d:Lcom/google/android/gms/common/internal/l;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f$b;->b:Lcom/google/android/gms/common/api/a$f;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f$b;->d:Lcom/google/android/gms/common/internal/l;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/f$b;->e:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/l;Ljava/util/Set;)V

    .line 21
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/f$b;Z)Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/f$b;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/internal/f$b;)Lcom/google/android/gms/common/api/a$f;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f$b;->b:Lcom/google/android/gms/common/api/a$f;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/internal/f$b;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/f$b;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 2

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f$b;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/internal/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/ae;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/ae;-><init>(Lcom/google/android/gms/common/api/internal/f$b;Lcom/google/android/gms/common/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/internal/l;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/l;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 13
    :cond_0
    const-string/jumbo v0, "GoogleApiManager"

    const-string/jumbo v1, "Received null response from onSignInSuccess"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    new-instance v0, Lcom/google/android/gms/common/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/b;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/f$b;->b(Lcom/google/android/gms/common/b;)V

    .line 18
    :goto_0
    return-void

    .line 15
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/f$b;->d:Lcom/google/android/gms/common/internal/l;

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/f$b;->e:Ljava/util/Set;

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/f$b;->a()V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/common/b;)V
    .locals 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f$b;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/f;->j(Lcom/google/android/gms/common/api/internal/f;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f$b;->c:Lcom/google/android/gms/common/api/internal/b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/f$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/f$a;->a(Lcom/google/android/gms/common/b;)V

    .line 11
    return-void
.end method
