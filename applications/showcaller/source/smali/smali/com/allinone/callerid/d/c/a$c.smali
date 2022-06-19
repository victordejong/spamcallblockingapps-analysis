.class Lcom/allinone/callerid/d/c/a$c;
.super Ljava/lang/Object;
.source "IncomingCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/c/a;->F(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/d/c/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/c/a$c;->d:Lcom/allinone/callerid/d/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$c;->d:Lcom/allinone/callerid/d/c/a;

    invoke-virtual {p1}, Lcom/allinone/callerid/d/c/a;->B()V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$c;->d:Lcom/allinone/callerid/d/c/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/c/a;->d(Lcom/allinone/callerid/d/c/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->m(Landroid/content/Context;)V

    return-void
.end method
