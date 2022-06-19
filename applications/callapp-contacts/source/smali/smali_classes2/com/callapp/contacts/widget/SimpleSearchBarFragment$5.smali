.class Lcom/callapp/contacts/widget/SimpleSearchBarFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/SimpleSearchBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$5;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$5;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$5;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;->b()V

    :cond_0
    return-void
.end method
