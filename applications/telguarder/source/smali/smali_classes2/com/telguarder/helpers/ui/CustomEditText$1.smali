.class Lcom/telguarder/helpers/ui/CustomEditText$1;
.super Ljava/lang/Object;
.source "CustomEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 53
    iput-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText$1;->this$0:Lcom/telguarder/helpers/ui/CustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText$1;->this$0:Lcom/telguarder/helpers/ui/CustomEditText;

    iget-object p1, p1, Lcom/telguarder/helpers/ui/CustomEditText;->softInputVisibilityCallbacks:Lcom/telguarder/helpers/ui/CustomEditText$SoftInputVisibilityCallbacks;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 57
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText$1;->this$0:Lcom/telguarder/helpers/ui/CustomEditText;

    iget-object p1, p1, Lcom/telguarder/helpers/ui/CustomEditText;->softInputVisibilityCallbacks:Lcom/telguarder/helpers/ui/CustomEditText$SoftInputVisibilityCallbacks;

    invoke-interface {p1}, Lcom/telguarder/helpers/ui/CustomEditText$SoftInputVisibilityCallbacks;->onShowInput()V

    :cond_0
    return-void
.end method
