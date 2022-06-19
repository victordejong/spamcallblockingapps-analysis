.class Lcom/callapp/contacts/popup/contact/ShareAdapter$ViewHolderIconAndText;
.super Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/ShareAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderIconAndText"
.end annotation


# instance fields
.field final a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/ShareAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/ShareAdapter;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/ShareAdapter$ViewHolderIconAndText;->b:Lcom/callapp/contacts/popup/contact/ShareAdapter;

    .line 61
    invoke-direct {p0, p3}, Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;-><init>(Landroid/widget/TextView;)V

    .line 62
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/ShareAdapter$ViewHolderIconAndText;->a:Landroid/widget/ImageView;

    return-void
.end method
