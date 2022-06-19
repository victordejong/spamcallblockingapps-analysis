.class public Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/activity/contact/details/ContactAction;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->a:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    return-void
.end method


# virtual methods
.method public getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->a:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    return-object v0
.end method
