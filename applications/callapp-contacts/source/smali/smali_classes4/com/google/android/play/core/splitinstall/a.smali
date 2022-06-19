.class public interface abstract Lcom/google/android/play/core/splitinstall/a;
.super Ljava/lang/Object;


# virtual methods
.method public abstract a(I)Lcom/google/android/play/core/tasks/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/d<",
            "Lcom/google/android/play/core/splitinstall/c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/play/core/splitinstall/b;)Lcom/google/android/play/core/tasks/d;
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
.end method

.method public abstract a()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/play/core/splitinstall/c;Landroid/app/Activity;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method
