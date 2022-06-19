.class public final Lcom/google/android/play/core/review/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/review/c;


# instance fields
.field private final a:Lcom/google/android/play/core/review/j;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/review/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/play/core/review/d;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/play/core/review/d;->a:Lcom/google/android/play/core/review/j;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/tasks/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/d<",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/review/d;->a:Lcom/google/android/play/core/review/j;

    .line 1000
    sget-object v1, Lcom/google/android/play/core/review/j;->a:Lcom/google/android/play/core/internal/h;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/play/core/review/j;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "requestInAppReview (%s)"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/play/core/review/j;->b:Lcom/google/android/play/core/internal/r;

    if-nez v1, :cond_0

    sget-object v0, Lcom/google/android/play/core/review/j;->a:Lcom/google/android/play/core/internal/h;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Play Store app is either not installed or not the official version"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/review/f;

    invoke-direct {v0}, Lcom/google/android/play/core/review/f;-><init>()V

    invoke-static {v0}, Lcom/google/android/play/core/tasks/f;->a(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/d;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/play/core/tasks/p;

    invoke-direct {v1}, Lcom/google/android/play/core/tasks/p;-><init>()V

    iget-object v2, v0, Lcom/google/android/play/core/review/j;->b:Lcom/google/android/play/core/internal/r;

    new-instance v3, Lcom/google/android/play/core/review/g;

    invoke-direct {v3, v0, v1, v1}, Lcom/google/android/play/core/review/g;-><init>(Lcom/google/android/play/core/review/j;Lcom/google/android/play/core/tasks/p;Lcom/google/android/play/core/tasks/p;)V

    invoke-virtual {v2, v3}, Lcom/google/android/play/core/internal/r;->a(Lcom/google/android/play/core/internal/i;)V

    .line 2000
    iget-object v0, v1, Lcom/google/android/play/core/tasks/p;->a:Lcom/google/android/play/core/tasks/s;

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/tasks/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ")",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Lcom/google/android/play/core/review/ReviewInfo;->a()Landroid/app/PendingIntent;

    move-result-object p2

    const-string v1, "confirmation_intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p2

    const-string v1, "window_flags"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p2, Lcom/google/android/play/core/tasks/p;

    invoke-direct {p2}, Lcom/google/android/play/core/tasks/p;-><init>()V

    new-instance v1, Lcom/google/android/play/core/review/b;

    iget-object v2, p0, Lcom/google/android/play/core/review/d;->b:Landroid/os/Handler;

    invoke-direct {v1, v2, p2}, Lcom/google/android/play/core/review/b;-><init>(Landroid/os/Handler;Lcom/google/android/play/core/tasks/p;)V

    const-string v2, "result_receiver"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3000
    iget-object p1, p2, Lcom/google/android/play/core/tasks/p;->a:Lcom/google/android/play/core/tasks/s;

    return-object p1
.end method
