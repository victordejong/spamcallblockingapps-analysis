.class public interface abstract Lcom/google/android/play/core/appupdate/c;
.super Ljava/lang/Object;


# virtual methods
.method public abstract a()Lcom/google/android/play/core/tasks/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/d<",
            "Lcom/google/android/play/core/appupdate/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/play/core/install/b;)V
.end method

.method public abstract a(Lcom/google/android/play/core/appupdate/a;Landroid/app/Activity;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract b()Lcom/google/android/play/core/tasks/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
