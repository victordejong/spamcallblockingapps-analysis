.class Lcom/google/firebase/crashlytics/c$b;
.super Ljava/lang/Object;
.source "FirebaseCrashlytics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/c;->a(Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lcom/google/firebase/crashlytics/d/a;Lcom/google/firebase/analytics/a/a;)Lcom/google/firebase/crashlytics/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/firebase/crashlytics/internal/common/k;

.field final synthetic c:Lcom/google/firebase/crashlytics/internal/settings/c;


# direct methods
.method constructor <init>(ZLcom/google/firebase/crashlytics/internal/common/k;Lcom/google/firebase/crashlytics/internal/settings/c;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/c$b;->a:Z

    iput-object p2, p0, Lcom/google/firebase/crashlytics/c$b;->b:Lcom/google/firebase/crashlytics/internal/common/k;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/c$b;->c:Lcom/google/firebase/crashlytics/internal/settings/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/c$b;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c$b;->b:Lcom/google/firebase/crashlytics/internal/common/k;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/c$b;->c:Lcom/google/firebase/crashlytics/internal/settings/c;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/k;->g(Lcom/google/firebase/crashlytics/internal/settings/d;)Lcom/google/android/gms/tasks/g;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/c$b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
