.class Lcom/allinone/callerid/main/LogActivity$a$a;
.super Ljava/lang/Object;
.source "LogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/main/LogActivity$a;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/main/LogActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/main/LogActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/main/LogActivity$a$a;->d:Lcom/allinone/callerid/main/LogActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$a$a;->d:Lcom/allinone/callerid/main/LogActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/main/LogActivity$a;->d:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->V(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
