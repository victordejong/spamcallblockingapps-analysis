.class Lcom/allinone/callerid/b/a0/b$a$a;
.super Ljava/lang/Object;
.source "WhiteAdapter.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/l/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/a0/b$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/b/a0/b$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/a0/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/a0/b$a$a;->a:Lcom/allinone/callerid/b/a0/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/b$a$a;->a:Lcom/allinone/callerid/b/a0/b$a;

    iget-object p1, p1, Lcom/allinone/callerid/b/a0/b$a;->f:Lcom/allinone/callerid/b/a0/b;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/b;->F(Lcom/allinone/callerid/b/a0/b;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/b/a0/b$a$a;->a:Lcom/allinone/callerid/b/a0/b$a;

    iget-object p1, p1, Lcom/allinone/callerid/b/a0/b$a;->f:Lcom/allinone/callerid/b/a0/b;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/b;->G(Lcom/allinone/callerid/b/a0/b;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/b$a$a;->a:Lcom/allinone/callerid/b/a0/b$a;

    iget-object p1, p1, Lcom/allinone/callerid/b/a0/b$a;->f:Lcom/allinone/callerid/b/a0/b;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/b;->H(Lcom/allinone/callerid/b/a0/b;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.allinone.callerid.WHITE_DATE_UPDATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
