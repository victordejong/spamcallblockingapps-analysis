.class Lcom/allinone/callerid/b/z/e$a$a$a;
.super Ljava/lang/Object;
.source "ProblemRecordAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/z/e$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/b/z/e$a$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/e$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/e$a$a$a;->d:Lcom/allinone/callerid/b/z/e$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/z/e$a$a$a;->d:Lcom/allinone/callerid/b/z/e$a$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/z/e$a$a;->d:Lcom/allinone/callerid/b/z/e$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/z/e$a;->e:Lcom/allinone/callerid/b/z/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/z/e$a$a$a;->d:Lcom/allinone/callerid/b/z/e$a$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/z/e$a$a;->d:Lcom/allinone/callerid/b/z/e$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/z/e$a;->e:Lcom/allinone/callerid/b/z/e;

    invoke-static {v0}, Lcom/allinone/callerid/b/z/e;->D(Lcom/allinone/callerid/b/z/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/z/e$a$a$a;->d:Lcom/allinone/callerid/b/z/e$a$a;

    iget-object v1, v1, Lcom/allinone/callerid/b/z/e$a$a;->d:Lcom/allinone/callerid/b/z/e$a;

    iget-object v1, v1, Lcom/allinone/callerid/b/z/e$a;->e:Lcom/allinone/callerid/b/z/e;

    invoke-static {v1}, Lcom/allinone/callerid/b/z/e;->D(Lcom/allinone/callerid/b/z/e;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10001c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
