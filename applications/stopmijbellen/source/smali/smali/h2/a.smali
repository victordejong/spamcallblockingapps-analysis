.class public final Lh2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le2/g;

.field public final synthetic b:Le2/g$a;


# direct methods
.method public constructor <init>(Le2/g;Le2/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh2/a;->a:Le2/g;

    iput-object p2, p0, Lh2/a;->b:Le2/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh2/a;->a:Le2/g;

    .line 2
    iget-object v0, v0, Le2/g;->g:Landroid/widget/EditText;

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 4
    iget-object v0, p0, Lh2/a;->b:Le2/g$a;

    .line 5
    iget-object v0, v0, Le2/g$a;->a:Landroid/content/Context;

    const-string v1, "input_method"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lh2/a;->a:Le2/g;

    .line 8
    iget-object v1, v1, Le2/g;->g:Landroid/widget/EditText;

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
