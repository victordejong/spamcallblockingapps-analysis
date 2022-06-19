.class Lcom/allinone/callerid/b/w$a;
.super Ljava/lang/Object;
.source "SpamCallsAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/w;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/bean/SpamCall;

.field final synthetic b:Lcom/allinone/callerid/b/w;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/w;Lcom/allinone/callerid/bean/SpamCall;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/w$a;->b:Lcom/allinone/callerid/b/w;

    iput-object p2, p0, Lcom/allinone/callerid/b/w$a;->a:Lcom/allinone/callerid/bean/SpamCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/w$a;->a:Lcom/allinone/callerid/bean/SpamCall;

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/bean/SpamCall;->setSelected(Z)V

    return-void
.end method
