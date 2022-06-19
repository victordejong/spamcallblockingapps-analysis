.class final Lcom/google/android/gms/common/api/internal/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/d;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/i;

.field final synthetic b:Lcom/google/android/gms/common/api/internal/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/v;Lcom/google/android/gms/tasks/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ca;->b:Lcom/google/android/gms/common/api/internal/v;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/ca;->a:Lcom/google/android/gms/tasks/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/h;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/ca;->b:Lcom/google/android/gms/common/api/internal/v;

    .line 1000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/v;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ca;->a:Lcom/google/android/gms/tasks/i;

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
