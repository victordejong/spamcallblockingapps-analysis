.class public Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$a;->a:Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 1

    iget-object v0, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$a;->a:Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;

    invoke-static {v0}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->a(Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    const/4 p3, 0x1

    if-ne p4, p3, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p2, 0x2c

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$a;->a:Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;

    invoke-virtual {p1}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->setChips()V

    :cond_1
    return-void
.end method
