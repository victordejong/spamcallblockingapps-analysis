.class Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$b;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$b;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d$b;->d:Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$d;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->c0(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
