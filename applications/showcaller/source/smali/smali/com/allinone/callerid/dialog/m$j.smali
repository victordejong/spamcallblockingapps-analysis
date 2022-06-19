.class Lcom/allinone/callerid/dialog/m$j;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/m;->g(Landroid/app/Activity;Lcom/allinone/callerid/i/a/g/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Landroid/widget/ListView;

.field final synthetic g:Lcom/allinone/callerid/b/a;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/ListView;Lcom/allinone/callerid/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/m$j;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/allinone/callerid/dialog/m$j;->e:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/allinone/callerid/dialog/m$j;->f:Landroid/widget/ListView;

    iput-object p4, p0, Lcom/allinone/callerid/dialog/m$j;->g:Lcom/allinone/callerid/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/dialog/m$j$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/dialog/m$j$a;-><init>(Lcom/allinone/callerid/dialog/m$j;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/g/c;->a(Lcom/allinone/callerid/i/a/g/j;)V

    return-void
.end method
