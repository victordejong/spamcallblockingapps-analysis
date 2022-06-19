.class public final Lcom/google/android/gms/internal/consent_sdk/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/c/b;


# instance fields
.field final a:Landroid/app/Application;

.field final b:Lcom/google/android/gms/internal/consent_sdk/m;

.field public final c:Lcom/google/android/gms/internal/consent_sdk/ad;

.field public final d:Lcom/google/android/gms/internal/consent_sdk/bu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/zzbe;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/google/android/gms/internal/consent_sdk/zzbe;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/consent_sdk/y;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/c/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/consent_sdk/c;

.field private final i:Lcom/google/android/gms/internal/consent_sdk/ai;

.field private j:Landroid/app/Dialog;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/consent_sdk/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/c;Lcom/google/android/gms/internal/consent_sdk/ai;Lcom/google/android/gms/internal/consent_sdk/m;Lcom/google/android/gms/internal/consent_sdk/ad;Lcom/google/android/gms/internal/consent_sdk/bu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lcom/google/android/gms/internal/consent_sdk/c;",
            "Lcom/google/android/gms/internal/consent_sdk/ai;",
            "Lcom/google/android/gms/internal/consent_sdk/m;",
            "Lcom/google/android/gms/internal/consent_sdk/ad;",
            "Lcom/google/android/gms/internal/consent_sdk/bu<",
            "Lcom/google/android/gms/internal/consent_sdk/zzbe;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/u;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/u;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/u;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/u;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/u;->a:Landroid/app/Application;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/u;->h:Lcom/google/android/gms/internal/consent_sdk/c;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/u;->i:Lcom/google/android/gms/internal/consent_sdk/ai;

    .line 9
    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/u;->b:Lcom/google/android/gms/internal/consent_sdk/m;

    .line 10
    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/u;->c:Lcom/google/android/gms/internal/consent_sdk/ad;

    .line 11
    iput-object p6, p0, Lcom/google/android/gms/internal/consent_sdk/u;->d:Lcom/google/android/gms/internal/consent_sdk/bu;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/u;->j:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 79
    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/u;->j:Landroid/app/Dialog;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/u;->i:Lcom/google/android/gms/internal/consent_sdk/ai;

    .line 2003
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/ai;->a:Landroid/app/Activity;

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/u;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/z;

    if-eqz v0, :cond_1

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/z;->a(Lcom/google/android/gms/internal/consent_sdk/z;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/c/b$a;)V
    .locals 4

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/be;->a()V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/u;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_0

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const-string v0, "ConsentForm#show can only be invoked once."

    invoke-direct {p1, v2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzk;->a()Lcom/google/android/c/e;

    move-result-object p1

    .line 32
    invoke-interface {p2, p1}, Lcom/google/android/c/b$a;->a(Lcom/google/android/c/e;)V

    return-void

    .line 34
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/z;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/consent_sdk/z;-><init>(Lcom/google/android/gms/internal/consent_sdk/u;Landroid/app/Activity;)V

    .line 35
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/u;->a:Landroid/app/Application;

    invoke-virtual {v3, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 36
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/u;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/u;->i:Lcom/google/android/gms/internal/consent_sdk/ai;

    .line 1003
    iput-object p1, v0, Lcom/google/android/gms/internal/consent_sdk/ai;->a:Landroid/app/Activity;

    .line 38
    new-instance v0, Landroid/app/Dialog;

    const v3, 0x1030010

    invoke-direct {v0, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/u;->e:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 41
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    .line 43
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const-string v0, "Activity with null windows is passed in."

    invoke-direct {p1, v2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzk;->a()Lcom/google/android/c/e;

    move-result-object p1

    .line 45
    invoke-interface {p2, p1}, Lcom/google/android/c/b$a;->a(Lcom/google/android/c/e;)V

    return-void

    :cond_1
    const/4 v2, -0x1

    .line 47
    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 48
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/u;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 51
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/u;->j:Landroid/app/Dialog;

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/consent_sdk/zzk;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/u;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/y;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzk;->a()Lcom/google/android/c/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/y;->a(Lcom/google/android/c/e;)V

    return-void
.end method

.method final b(Lcom/google/android/gms/internal/consent_sdk/zzk;)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/u;->a()V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/u;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/c/b$a;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzk;->a()Lcom/google/android/c/e;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/c/b$a;->a(Lcom/google/android/c/e;)V

    return-void
.end method
