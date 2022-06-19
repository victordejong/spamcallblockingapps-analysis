.class Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiNumberAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;",
            ">;)V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 153
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 1

    .line 148
    check-cast p1, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;

    .line 1164
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->e(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;->a(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 2158
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d004c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2159
    new-instance p2, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;

    invoke-direct {p2, v0, p1}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;-><init>(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;Landroid/view/View;)V

    return-object p2
.end method
