.class final Lcom/google/android/play/core/splitcompat/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/n;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/n;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/n;->f(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le/c/a/c/a/a/c;->c(Z)V

    return-void
.end method
