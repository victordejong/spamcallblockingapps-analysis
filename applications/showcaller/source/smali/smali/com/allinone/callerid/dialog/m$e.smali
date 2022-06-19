.class Lcom/allinone/callerid/dialog/m$e;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/m;->e(Landroid/content/Context;Ljava/util/ArrayList;Lcom/allinone/callerid/i/a/l/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/b/a0/a;

.field final synthetic e:Lcom/allinone/callerid/i/a/l/c;

.field final synthetic f:Landroidx/appcompat/app/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/a0/a;Lcom/allinone/callerid/i/a/l/c;Landroidx/appcompat/app/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/m$e;->d:Lcom/allinone/callerid/b/a0/a;

    iput-object p2, p0, Lcom/allinone/callerid/dialog/m$e;->e:Lcom/allinone/callerid/i/a/l/c;

    iput-object p3, p0, Lcom/allinone/callerid/dialog/m$e;->f:Landroidx/appcompat/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$e;->d:Lcom/allinone/callerid/b/a0/a;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/allinone/callerid/b/a0/a;->O()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$e;->d:Lcom/allinone/callerid/b/a0/a;

    invoke-virtual {p1}, Lcom/allinone/callerid/b/z/b;->C()Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/dialog/m$e;->e:Lcom/allinone/callerid/i/a/l/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lcom/allinone/callerid/i/a/l/c;->a(Ljava/util/ArrayList;)V

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/allinone/callerid/i/a/l/d;->a(Ljava/util/ArrayList;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$e;->f:Landroidx/appcompat/app/a;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_1
    return-void
.end method
