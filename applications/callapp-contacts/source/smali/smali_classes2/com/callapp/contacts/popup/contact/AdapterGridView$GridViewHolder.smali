.class Lcom/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/AdapterGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GridViewHolder"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/callapp/contacts/popup/contact/AdapterGridView;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/popup/contact/AdapterGridView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder;->d:Lcom/callapp/contacts/popup/contact/AdapterGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/popup/contact/AdapterGridView;Lcom/callapp/contacts/popup/contact/AdapterGridView$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/AdapterGridView$GridViewHolder;-><init>(Lcom/callapp/contacts/popup/contact/AdapterGridView;)V

    return-void
.end method
