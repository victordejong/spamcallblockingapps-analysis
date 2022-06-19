.class Lcom/google/firebase/crashlytics/internal/common/Utils$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/Utils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/b<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/Utils$2;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/Utils$2;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2$1;->this$0:Lcom/google/firebase/crashlytics/internal/common/Utils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/Utils$2$1;->then(Lcom/google/android/gms/tasks/h;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lcom/google/android/gms/tasks/h;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h<",
            "TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2$1;->this$0:Lcom/google/firebase/crashlytics/internal/common/Utils$2;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$tcs:Lcom/google/android/gms/tasks/i;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2$1;->this$0:Lcom/google/firebase/crashlytics/internal/common/Utils$2;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$tcs:Lcom/google/android/gms/tasks/i;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->e()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
