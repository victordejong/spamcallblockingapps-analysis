.class Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ViewHolderIconAndText;
.super Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/AdapterIconAndText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderIconAndText"
.end annotation


# instance fields
.field final a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/AdapterIconAndText;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/AdapterIconAndText;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ViewHolderIconAndText;->b:Lcom/callapp/contacts/popup/contact/AdapterIconAndText;

    .line 63
    invoke-direct {p0, p3}, Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;-><init>(Landroid/widget/TextView;)V

    .line 64
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ViewHolderIconAndText;->a:Landroid/widget/ImageView;

    return-void
.end method
