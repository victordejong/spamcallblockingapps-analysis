.class public Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FooterData"
.end annotation


# instance fields
.field public a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

.field public b:Ljava/lang/String;

.field public c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;->b:Ljava/lang/String;

    .line 221
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;->c:Landroid/view/View$OnClickListener;

    return-void
.end method
