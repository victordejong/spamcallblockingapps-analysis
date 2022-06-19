.class public final synthetic Lcom/callapp/contacts/activity/-$$Lambda$W75w2pH9-_cy0BezHpmjwXO7w7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/EditUserProfileActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/-$$Lambda$W75w2pH9-_cy0BezHpmjwXO7w7c;->f$0:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    return-void
.end method


# virtual methods
.method public final onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/activity/-$$Lambda$W75w2pH9-_cy0BezHpmjwXO7w7c;->f$0:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    return-void
.end method
