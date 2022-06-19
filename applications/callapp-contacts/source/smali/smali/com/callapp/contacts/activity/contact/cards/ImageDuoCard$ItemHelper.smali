.class public abstract Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ItemHelper"
.end annotation


# instance fields
.field private final itemClickedListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;


# direct methods
.method protected constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;->this$0:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;->itemClickedListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected getItemClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;->itemClickedListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method abstract onItemClicked()V
.end method

.method abstract shouldLoadItem(Lcom/callapp/contacts/model/contact/ContactData;)Z
.end method
