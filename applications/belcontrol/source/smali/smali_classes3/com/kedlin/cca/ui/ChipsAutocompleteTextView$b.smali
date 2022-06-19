.class public Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$b;->a:Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$b;->a:Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;

    invoke-virtual {p1}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->setChips()V

    :cond_0
    return-void
.end method
