.class Lcom/telguarder/helpers/ui/CustomEditText$2;
.super Ljava/lang/Object;
.source "CustomEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/helpers/ui/CustomEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/ui/CustomEditText;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/ui/CustomEditText;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText$2;->this$0:Lcom/telguarder/helpers/ui/CustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText$2;->this$0:Lcom/telguarder/helpers/ui/CustomEditText;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/CustomEditText;->access$000(Lcom/telguarder/helpers/ui/CustomEditText;)V

    .line 68
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText$2;->this$0:Lcom/telguarder/helpers/ui/CustomEditText;

    iget-object p1, p1, Lcom/telguarder/helpers/ui/CustomEditText;->softInputVisibilityCallbacks:Lcom/telguarder/helpers/ui/CustomEditText$SoftInputVisibilityCallbacks;

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText$2;->this$0:Lcom/telguarder/helpers/ui/CustomEditText;

    iget-object p1, p1, Lcom/telguarder/helpers/ui/CustomEditText;->softInputVisibilityCallbacks:Lcom/telguarder/helpers/ui/CustomEditText$SoftInputVisibilityCallbacks;

    invoke-interface {p1}, Lcom/telguarder/helpers/ui/CustomEditText$SoftInputVisibilityCallbacks;->onHideInput()V

    .line 70
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText$2;->this$0:Lcom/telguarder/helpers/ui/CustomEditText;

    iget-object p1, p1, Lcom/telguarder/helpers/ui/CustomEditText;->softInputVisibilityCallbacks:Lcom/telguarder/helpers/ui/CustomEditText$SoftInputVisibilityCallbacks;

    invoke-interface {p1}, Lcom/telguarder/helpers/ui/CustomEditText$SoftInputVisibilityCallbacks;->onDone()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
