.class Lcom/linkedin/android/litr/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/android/litr/a$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "a"


# instance fields
.field final a:Lcom/linkedin/android/litr/e;

.field b:Landroid/os/Bundle;

.field c:Lcom/linkedin/android/litr/a$a;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Lcom/linkedin/android/litr/e;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;",
            "Lcom/linkedin/android/litr/e;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/linkedin/android/litr/a;->b:Landroid/os/Bundle;

    .line 45
    iput-object p1, p0, Lcom/linkedin/android/litr/a;->e:Ljava/util/Map;

    .line 46
    iput-object p2, p0, Lcom/linkedin/android/litr/a;->a:Lcom/linkedin/android/litr/e;

    if-eqz p3, :cond_0

    .line 49
    new-instance p1, Lcom/linkedin/android/litr/a$a;

    const/4 v0, 0x0

    invoke-direct {p1, p3, p2, v0}, Lcom/linkedin/android/litr/a$a;-><init>(Landroid/os/Looper;Lcom/linkedin/android/litr/e;Lcom/linkedin/android/litr/a$1;)V

    iput-object p1, p0, Lcom/linkedin/android/litr/a;->c:Lcom/linkedin/android/litr/a$a;

    :cond_0
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/linkedin/android/litr/a;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "Lcom/linkedin/android/litr/a/a;",
            ">;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/linkedin/android/litr/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/linkedin/android/litr/a;->c:Lcom/linkedin/android/litr/a$a;

    if-nez v0, :cond_0

    .line 101
    iget-object p3, p0, Lcom/linkedin/android/litr/a;->a:Lcom/linkedin/android/litr/e;

    invoke-interface {p3, p1, p2}, Lcom/linkedin/android/litr/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 103
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 104
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    iget-object p3, p0, Lcom/linkedin/android/litr/a;->b:Landroid/os/Bundle;

    const-string v1, "jobId"

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/linkedin/android/litr/a;->b:Landroid/os/Bundle;

    const-string p3, "throwable"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 107
    iget-object p1, p0, Lcom/linkedin/android/litr/a;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkedin/android/litr/a/a;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/linkedin/android/litr/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/linkedin/android/litr/a;->c:Lcom/linkedin/android/litr/a$a;

    if-nez v0, :cond_0

    .line 70
    iget-object p2, p0, Lcom/linkedin/android/litr/a;->a:Lcom/linkedin/android/litr/e;

    invoke-interface {p2, p1}, Lcom/linkedin/android/litr/e;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 72
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 73
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    iget-object p2, p0, Lcom/linkedin/android/litr/a;->b:Landroid/os/Bundle;

    const-string v1, "jobId"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/linkedin/android/litr/a;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method final b(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkedin/android/litr/a/a;",
            ">;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/linkedin/android/litr/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/linkedin/android/litr/a;->c:Lcom/linkedin/android/litr/a$a;

    if-nez v0, :cond_0

    .line 85
    iget-object p2, p0, Lcom/linkedin/android/litr/a;->a:Lcom/linkedin/android/litr/e;

    invoke-interface {p2, p1}, Lcom/linkedin/android/litr/e;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 87
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 88
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iget-object p2, p0, Lcom/linkedin/android/litr/a;->b:Landroid/os/Bundle;

    const-string v1, "jobId"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/linkedin/android/litr/a;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
