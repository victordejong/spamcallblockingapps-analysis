.class public Lcom/telguarder/helpers/ui/CustomEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "CustomEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/helpers/ui/CustomEditText$SoftInputVisibilityCallbacks;
    }
.end annotation


# instance fields
.field private final onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final onFocusChangeListenernew:Landroid/view/View$OnFocusChangeListener;

.field public softInputVisibilityCallbacks:Lcom/telguarder/helpers/ui/CustomEditText$SoftInputVisibilityCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance p1, Lcom/telguarder/helpers/ui/CustomEditText$1;

    invoke-direct {p1, p0}, Lcom/telguarder/helpers/ui/CustomEditText$1;-><init>(Lcom/telguarder/helpers/ui/CustomEditText;)V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText;->onFocusChangeListenernew:Landroid/view/View$OnFocusChangeListener;

    .line 63
    new-instance p1, Lcom/telguarder/helpers/ui/CustomEditText$2;

    invoke-direct {p1, p0}, Lcom/telguarder/helpers/ui/CustomEditText$2;-><init>(Lcom/telguarder/helpers/ui/CustomEditText;)V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 31
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/CustomEditText;->initEditor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p1, Lcom/telguarder/helpers/ui/CustomEditText$1;

    invoke-direct {p1, p0}, Lcom/telguarder/helpers/ui/CustomEditText$1;-><init>(Lcom/telguarder/helpers/ui/CustomEditText;)V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText;->onFocusChangeListenernew:Landroid/view/View$OnFocusChangeListener;

    .line 63
    new-instance p1, Lcom/telguarder/helpers/ui/CustomEditText$2;

    invoke-direct {p1, p0}, Lcom/telguarder/helpers/ui/CustomEditText$2;-><init>(Lcom/telguarder/helpers/ui/CustomEditText;)V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 37
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/CustomEditText;->initEditor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p1, Lcom/telguarder/helpers/ui/CustomEditText$1;

    invoke-direct {p1, p0}, Lcom/telguarder/helpers/ui/CustomEditText$1;-><init>(Lcom/telguarder/helpers/ui/CustomEditText;)V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText;->onFocusChangeListenernew:Landroid/view/View$OnFocusChangeListener;

    .line 63
    new-instance p1, Lcom/telguarder/helpers/ui/CustomEditText$2;

    invoke-direct {p1, p0}, Lcom/telguarder/helpers/ui/CustomEditText$2;-><init>(Lcom/telguarder/helpers/ui/CustomEditText;)V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 43
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/CustomEditText;->initEditor()V

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/helpers/ui/CustomEditText;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/CustomEditText;->hideKeypad()V

    return-void
.end method

.method private hideKeypad()V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/CustomEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 96
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/CustomEditText;->clearFocus()V

    :cond_0
    return-void
.end method

.method private initEditor()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/telguarder/helpers/ui/CustomEditText;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p0, v0}, Lcom/telguarder/helpers/ui/CustomEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 49
    iget-object v0, p0, Lcom/telguarder/helpers/ui/CustomEditText;->onFocusChangeListenernew:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p0, v0}, Lcom/telguarder/helpers/ui/CustomEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/CustomEditText;->hideKeypad()V

    .line 83
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CustomEditText;->softInputVisibilityCallbacks:Lcom/telguarder/helpers/ui/CustomEditText$SoftInputVisibilityCallbacks;

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Lcom/telguarder/helpers/ui/CustomEditText$SoftInputVisibilityCallbacks;->onHideInput()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
