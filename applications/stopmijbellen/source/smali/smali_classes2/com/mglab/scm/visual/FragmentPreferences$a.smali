.class public Lcom/mglab/scm/visual/FragmentPreferences$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mglab/scm/visual/FragmentPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Le2/g;

.field public b:Lcom/rengwuxian/materialedittext/MaterialEditText;

.field public c:Lcom/rengwuxian/materialedittext/MaterialEditText;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/mglab/scm/visual/FragmentPreferences;

    return-void
.end method

.method public constructor <init>(Le2/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences$a;->a:Le2/g;

    .line 3
    iget-object p1, p1, Le2/g;->c:Le2/g$a;

    iget-object p1, p1, Le2/g$a;->o:Landroid/view/View;

    const v0, 0x7f090299

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rengwuxian/materialedittext/MaterialEditText;

    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences$a;->b:Lcom/rengwuxian/materialedittext/MaterialEditText;

    const v0, 0x7f09029a

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rengwuxian/materialedittext/MaterialEditText;

    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences$a;->c:Lcom/rengwuxian/materialedittext/MaterialEditText;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences$a;->b:Lcom/rengwuxian/materialedittext/MaterialEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/mglab/scm/visual/FragmentPreferences$a;->c:Lcom/rengwuxian/materialedittext/MaterialEditText;

    invoke-virtual {p2}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object p3, p0, Lcom/mglab/scm/visual/FragmentPreferences$a;->a:Le2/g;

    sget-object p4, Le2/b;->a:Le2/b;

    invoke-virtual {p3, p4}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p3

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
