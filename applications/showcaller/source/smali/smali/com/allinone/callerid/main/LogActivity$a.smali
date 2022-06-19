.class Lcom/allinone/callerid/main/LogActivity$a;
.super Ljava/lang/Object;
.source "LogActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/main/LogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/main/LogActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/main/LogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/main/LogActivity$a;->d:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$a;->d:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->V(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/main/LogActivity$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/main/LogActivity$a$a;-><init>(Lcom/allinone/callerid/main/LogActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
