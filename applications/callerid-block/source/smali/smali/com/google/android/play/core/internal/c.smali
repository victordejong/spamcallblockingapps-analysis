.class final synthetic Lcom/google/android/play/core/internal/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/n;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/c;->a:Lcom/google/android/play/core/internal/n;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/internal/c;->a:Lcom/google/android/play/core/internal/n;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/n;->n()V

    return-void
.end method
