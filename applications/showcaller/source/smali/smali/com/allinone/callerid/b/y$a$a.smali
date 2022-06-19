.class Lcom/allinone/callerid/b/y$a$a;
.super Ljava/lang/Thread;
.source "SubtypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/y$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/b/y$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/y$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/y$a;->d:Lcom/allinone/callerid/b/y$c;

    invoke-static {v0}, Lcom/allinone/callerid/b/y$c;->O(Lcom/allinone/callerid/b/y$c;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const-wide/16 v1, 0xa

    const/16 v3, 0x19

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    invoke-static {v0, v4}, Lcom/allinone/callerid/b/y;->H(Lcom/allinone/callerid/b/y;I)I

    :goto_0
    if-ge v4, v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    invoke-static {v0}, Lcom/allinone/callerid/b/y;->G(Lcom/allinone/callerid/b/y;)I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-static {v0, v5}, Lcom/allinone/callerid/b/y;->H(Lcom/allinone/callerid/b/y;I)I

    .line 5
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/y$a;->d:Lcom/allinone/callerid/b/y$c;

    invoke-static {v0}, Lcom/allinone/callerid/b/y$c;->O(Lcom/allinone/callerid/b/y$c;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v5, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v5, v5, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    invoke-static {v5}, Lcom/allinone/callerid/b/y;->G(Lcom/allinone/callerid/b/y;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    invoke-static {v0}, Lcom/allinone/callerid/b/y;->I(Lcom/allinone/callerid/b/y;)Lcom/allinone/callerid/b/y$b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    invoke-static {v0}, Lcom/allinone/callerid/b/y;->I(Lcom/allinone/callerid/b/y;)Lcom/allinone/callerid/b/y$b;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v1, v1, Lcom/allinone/callerid/b/y$a;->e:Lcom/allinone/callerid/bean/SubType;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/allinone/callerid/b/y$b;->a(Lcom/allinone/callerid/bean/SubType;Z)V

    goto :goto_4

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    const/16 v5, 0x64

    invoke-static {v0, v5}, Lcom/allinone/callerid/b/y;->H(Lcom/allinone/callerid/b/y;I)I

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    .line 11
    iget-object v5, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v5, v5, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    invoke-static {v5}, Lcom/allinone/callerid/b/y;->G(Lcom/allinone/callerid/b/y;)I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-static {v5, v6}, Lcom/allinone/callerid/b/y;->H(Lcom/allinone/callerid/b/y;I)I

    .line 12
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    .line 13
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 14
    :goto_3
    iget-object v5, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v5, v5, Lcom/allinone/callerid/b/y$a;->d:Lcom/allinone/callerid/b/y$c;

    invoke-static {v5}, Lcom/allinone/callerid/b/y$c;->O(Lcom/allinone/callerid/b/y$c;)Landroid/widget/ProgressBar;

    move-result-object v5

    iget-object v6, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v6, v6, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    invoke-static {v6}, Lcom/allinone/callerid/b/y;->G(Lcom/allinone/callerid/b/y;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    invoke-static {v0}, Lcom/allinone/callerid/b/y;->I(Lcom/allinone/callerid/b/y;)Lcom/allinone/callerid/b/y$b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/y$a;->f:Lcom/allinone/callerid/b/y;

    invoke-static {v0}, Lcom/allinone/callerid/b/y;->I(Lcom/allinone/callerid/b/y;)Lcom/allinone/callerid/b/y$b;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/y$a$a;->d:Lcom/allinone/callerid/b/y$a;

    iget-object v1, v1, Lcom/allinone/callerid/b/y$a;->e:Lcom/allinone/callerid/bean/SubType;

    invoke-interface {v0, v1, v4}, Lcom/allinone/callerid/b/y$b;->a(Lcom/allinone/callerid/bean/SubType;Z)V

    :cond_3
    :goto_4
    return-void
.end method
