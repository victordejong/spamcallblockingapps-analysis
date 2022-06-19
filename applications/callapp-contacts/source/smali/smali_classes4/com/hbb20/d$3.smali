.class final Lcom/hbb20/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hbb20/d;


# direct methods
.method constructor <init>(Lcom/hbb20/d;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/hbb20/d$3;->a:Lcom/hbb20/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 103
    iget-object p2, p0, Lcom/hbb20/d$3;->a:Lcom/hbb20/d;

    iget-object p2, p2, Lcom/hbb20/d;->h:Landroid/content/Context;

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 104
    iget-object p3, p0, Lcom/hbb20/d$3;->a:Lcom/hbb20/d;

    iget-object p3, p3, Lcom/hbb20/d;->f:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    :cond_0
    return p1
.end method
