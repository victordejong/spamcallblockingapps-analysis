.class final Lcom/google/android/play/core/splitinstall/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/s;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:J

.field final synthetic d:Z

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lcom/google/android/play/core/splitinstall/a/a;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/a/a;Ljava/util/List;Ljava/util/List;JZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/a/i;->f:Lcom/google/android/play/core/splitinstall/a/a;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/a/i;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/a/i;->b:Ljava/util/List;

    iput-wide p4, p0, Lcom/google/android/play/core/splitinstall/a/i;->c:J

    iput-boolean p6, p0, Lcom/google/android/play/core/splitinstall/a/i;->d:Z

    iput-object p7, p0, Lcom/google/android/play/core/splitinstall/a/i;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/a/i;->f:Lcom/google/android/play/core/splitinstall/a/a;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/a/i;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/a/i;->b:Ljava/util/List;

    iget-wide v3, p0, Lcom/google/android/play/core/splitinstall/a/i;->c:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/splitinstall/a/a;->a(Lcom/google/android/play/core/splitinstall/a/a;Ljava/util/List;Ljava/util/List;J)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/a/i;->f:Lcom/google/android/play/core/splitinstall/a/a;

    invoke-static {v0, p1}, Lcom/google/android/play/core/splitinstall/a/a;->a(Lcom/google/android/play/core/splitinstall/a/a;I)V

    return-void
.end method

.method public final b()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/play/core/splitinstall/a/i;->d:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/a/i;->f:Lcom/google/android/play/core/splitinstall/a/a;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/a/i;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/a/i;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/a/i;->b:Ljava/util/List;

    iget-wide v5, p0, Lcom/google/android/play/core/splitinstall/a/i;->c:J

    invoke-static/range {v1 .. v6}, Lcom/google/android/play/core/splitinstall/a/a;->a(Lcom/google/android/play/core/splitinstall/a/a;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    :cond_0
    return-void
.end method
