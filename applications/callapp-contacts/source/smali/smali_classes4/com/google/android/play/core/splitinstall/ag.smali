.class final Lcom/google/android/play/core/splitinstall/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/splitinstall/c;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/play/core/splitinstall/ah;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/ah;Lcom/google/android/play/core/splitinstall/c;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/ag;->d:Lcom/google/android/play/core/splitinstall/ah;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/ag;->a:Lcom/google/android/play/core/splitinstall/c;

    iput p3, p0, Lcom/google/android/play/core/splitinstall/ag;->b:I

    iput p4, p0, Lcom/google/android/play/core/splitinstall/ag;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/ag;->d:Lcom/google/android/play/core/splitinstall/ah;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/ag;->a:Lcom/google/android/play/core/splitinstall/c;

    iget v4, p0, Lcom/google/android/play/core/splitinstall/ag;->b:I

    iget v5, p0, Lcom/google/android/play/core/splitinstall/ag;->c:I

    new-instance v14, Lcom/google/android/play/core/splitinstall/e;

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/c;->a()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/c;->d()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/c;->e()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/c;->i()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/c;->j()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/c;->h()Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/c;->k()Ljava/util/List;

    move-result-object v13

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/google/android/play/core/splitinstall/e;-><init>(IIIJJLjava/util/List;Ljava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V

    invoke-virtual {v0, v14}, Lcom/google/android/play/core/splitinstall/ah;->a(Lcom/google/android/play/core/splitinstall/c;)V

    return-void
.end method
