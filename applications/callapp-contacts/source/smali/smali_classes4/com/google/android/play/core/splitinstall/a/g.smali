.class final synthetic Lcom/google/android/play/core/splitinstall/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/a/a;

.field private final b:Lcom/google/android/play/core/splitinstall/c;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/a/a;Lcom/google/android/play/core/splitinstall/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/a/g;->a:Lcom/google/android/play/core/splitinstall/a/a;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/a/g;->b:Lcom/google/android/play/core/splitinstall/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/a/g;->a:Lcom/google/android/play/core/splitinstall/a/a;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/a/g;->b:Lcom/google/android/play/core/splitinstall/c;

    .line 1000
    iget-object v2, v0, Lcom/google/android/play/core/splitinstall/a/a;->c:Lcom/google/android/play/core/internal/g;

    invoke-virtual {v2, v1}, Lcom/google/android/play/core/internal/g;->a(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/a/a;->d:Lcom/google/android/play/core/internal/g;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/g;->a(Ljava/lang/Object;)V

    return-void
.end method
