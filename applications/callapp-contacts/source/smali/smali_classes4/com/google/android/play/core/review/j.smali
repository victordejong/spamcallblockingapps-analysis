.class public final Lcom/google/android/play/core/review/j;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/android/play/core/internal/h;


# instance fields
.field b:Lcom/google/android/play/core/internal/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/r<",
            "Lcom/google/android/play/core/internal/c;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "ReviewService"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/review/j;->a:Lcom/google/android/play/core/internal/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/review/j;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/play/core/internal/ao;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    new-instance v0, Lcom/google/android/play/core/internal/r;

    sget-object v4, Lcom/google/android/play/core/review/j;->a:Lcom/google/android/play/core/internal/h;

    sget-object v7, Lcom/google/android/play/core/review/e;->a:Lcom/google/android/play/core/internal/n;

    const-string v5, "com.google.android.finsky.inappreviewservice.InAppReviewService"

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/play/core/internal/r;-><init>(Landroid/content/Context;Lcom/google/android/play/core/internal/h;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/internal/n;)V

    iput-object v0, p0, Lcom/google/android/play/core/review/j;->b:Lcom/google/android/play/core/internal/r;

    :cond_0
    return-void
.end method

.method static synthetic a()Lcom/google/android/play/core/internal/h;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/review/j;->a:Lcom/google/android/play/core/internal/h;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/play/core/review/j;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/review/j;->c:Ljava/lang/String;

    return-object p0
.end method
