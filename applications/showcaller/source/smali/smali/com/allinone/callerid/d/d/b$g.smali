.class Lcom/allinone/callerid/d/d/b$g;
.super Ljava/lang/Object;
.source "PopularFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/d/b;->x2(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/d/d/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/b$g;->d:Lcom/allinone/callerid/d/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$g;->d:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->p2(Lcom/allinone/callerid/d/d/b;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$g;->d:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->p2(Lcom/allinone/callerid/d/d/b;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method
