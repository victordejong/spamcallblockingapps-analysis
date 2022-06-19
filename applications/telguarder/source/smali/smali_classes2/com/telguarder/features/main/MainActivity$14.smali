.class Lcom/telguarder/features/main/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/main/MainActivity;->showKeypad(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/main/MainActivity;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/telguarder/features/main/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$14;->this$0:Lcom/telguarder/features/main/MainActivity;

    iput-object p2, p0, Lcom/telguarder/features/main/MainActivity$14;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$14;->this$0:Lcom/telguarder/features/main/MainActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/telguarder/features/main/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 678
    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity$14;->val$editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
