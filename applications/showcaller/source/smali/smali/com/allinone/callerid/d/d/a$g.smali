.class Lcom/allinone/callerid/d/d/a$g;
.super Ljava/lang/Object;
.source "LatestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/d/a;->w2(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/d/d/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/a$g;->d:Lcom/allinone/callerid/d/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/d/d/a$g;->d:Lcom/allinone/callerid/d/d/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/a;->r2(Lcom/allinone/callerid/d/d/a;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/d/d/a$g;->d:Lcom/allinone/callerid/d/d/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/a;->r2(Lcom/allinone/callerid/d/d/a;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method
