.class Lcom/callapp/contacts/widget/CompoundEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/CompoundEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/CompoundEditText;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/CompoundEditText;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText$2;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 128
    iget-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText$2;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-static {p1}, Lcom/callapp/contacts/widget/CompoundEditText;->c(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
