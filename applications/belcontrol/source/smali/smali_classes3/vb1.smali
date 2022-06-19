.class public Lvb1;
.super Landroid/text/method/DialerKeyListener;
.source ""


# static fields
.field public static final b:[C

.field public static final c:Landroid/text/Spannable;


# instance fields
.field public final a:Lcom/kedlin/cca/ui/CallScreenLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lvb1;->b:[C

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lvb1;->c:Landroid/text/Spannable;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x23s
        0x2as
    .end array-data
.end method

.method public constructor <init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    iput-object p1, p0, Lvb1;->a:Lcom/kedlin/cca/ui/CallScreenLayout;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lvb1;->c:Landroid/text/Spannable;

    invoke-virtual {p0, p1, v0}, Landroid/text/method/DialerKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result p1

    int-to-char p1, p1

    invoke-virtual {p0}, Lvb1;->getAcceptedChars()[C

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/method/DialerKeyListener;->ok([CC)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lvb1;->a:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->p0(C)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lvb1;->c:Landroid/text/Spannable;

    invoke-virtual {p0, p1, v1}, Landroid/text/method/DialerKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result p1

    int-to-char p1, p1

    invoke-virtual {p0}, Lvb1;->getAcceptedChars()[C

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/method/DialerKeyListener;->ok([CC)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Lvb1;->a:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->C0()V

    return v0
.end method

.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getAcceptedChars()[C
    .locals 1

    sget-object v0, Lvb1;->b:[C

    return-object v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p4}, Lvb1;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    invoke-virtual {p0, p4}, Lvb1;->b(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
