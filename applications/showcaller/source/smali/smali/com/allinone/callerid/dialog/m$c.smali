.class Lcom/allinone/callerid/dialog/m$c;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/m;->h(Landroid/app/Activity;Lcom/allinone/callerid/i/a/g/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcom/allinone/callerid/b/b;

.field final synthetic f:Landroid/widget/TextView;

.field final synthetic g:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/allinone/callerid/b/b;Landroid/widget/TextView;Landroid/widget/ListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/m$c;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/allinone/callerid/dialog/m$c;->e:Lcom/allinone/callerid/b/b;

    iput-object p3, p0, Lcom/allinone/callerid/dialog/m$c;->f:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/allinone/callerid/dialog/m$c;->g:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/dialog/m$c$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/dialog/m$c$a;-><init>(Lcom/allinone/callerid/dialog/m$c;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/g/g;->a(Lcom/allinone/callerid/i/a/g/k;)V

    return-void
.end method
