.class public Lcarbon/widget/AutoCompleteEditText$a;
.super Lbd0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/widget/AutoCompleteEditText;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/AutoCompleteEditText;


# direct methods
.method public constructor <init>(Lcarbon/widget/AutoCompleteEditText;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/AutoCompleteEditText$a;->a:Lcarbon/widget/AutoCompleteEditText;

    invoke-direct {p0}, Lbd0;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/AutoCompleteEditText$a;->a:Lcarbon/widget/AutoCompleteEditText;

    invoke-static {v0}, Lcarbon/widget/AutoCompleteEditText;->K(Lcarbon/widget/AutoCompleteEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/AutoCompleteEditText$a;->a:Lcarbon/widget/AutoCompleteEditText;

    invoke-static {v0}, Lcarbon/widget/AutoCompleteEditText;->M(Lcarbon/widget/AutoCompleteEditText;)V

    :cond_0
    iget-object v0, p0, Lcarbon/widget/AutoCompleteEditText$a;->a:Lcarbon/widget/AutoCompleteEditText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcarbon/widget/AutoCompleteEditText;->L(Lcarbon/widget/AutoCompleteEditText;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
