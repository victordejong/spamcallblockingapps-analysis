.class final Lcom/google/android/play/core/splitinstall/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/a;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/splitinstall/ak;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/play/core/internal/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/splitinstall/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/play/core/internal/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ba<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/ba;Lcom/google/android/play/core/internal/ba;Lcom/google/android/play/core/internal/ba;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/splitinstall/ak;",
            ">;",
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/splitinstall/a/a;",
            ">;",
            "Lcom/google/android/play/core/internal/ba<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/x;->a:Lcom/google/android/play/core/internal/ba;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/x;->b:Lcom/google/android/play/core/internal/ba;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/x;->c:Lcom/google/android/play/core/internal/ba;

    return-void
.end method

.method private final b()Lcom/google/android/play/core/splitinstall/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/x;->c:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/x;->a:Lcom/google/android/play/core/internal/ba;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/x;->b:Lcom/google/android/play/core/internal/ba;

    :goto_0
    invoke-interface {v0}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/a;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/d<",
            "Lcom/google/android/play/core/splitinstall/c;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/x;->b()Lcom/google/android/play/core/splitinstall/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/a;->a(I)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/play/core/splitinstall/b;)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/b;",
            ")",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/x;->b()Lcom/google/android/play/core/splitinstall/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/a;->a(Lcom/google/android/play/core/splitinstall/b;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/x;->b()Lcom/google/android/play/core/splitinstall/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/a;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/play/core/splitinstall/c;Landroid/app/Activity;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/x;->b()Lcom/google/android/play/core/splitinstall/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/play/core/splitinstall/a;->a(Lcom/google/android/play/core/splitinstall/c;Landroid/app/Activity;I)Z

    move-result p1

    return p1
.end method
