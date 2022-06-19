.class Lcom/callerid/block/mvc/controller/SuggestNameActivity$e;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/SuggestNameActivity;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/SuggestNameActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/SuggestNameActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$e;->b:Lcom/callerid/block/mvc/controller/SuggestNameActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$e;->b:Lcom/callerid/block/mvc/controller/SuggestNameActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$e;->b:Lcom/callerid/block/mvc/controller/SuggestNameActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->S(Lcom/callerid/block/mvc/controller/SuggestNameActivity;)Lcom/callerid/block/customview/DeletableEditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$e;->b:Lcom/callerid/block/mvc/controller/SuggestNameActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/SuggestNameActivity;->S(Lcom/callerid/block/mvc/controller/SuggestNameActivity;)Lcom/callerid/block/customview/DeletableEditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
