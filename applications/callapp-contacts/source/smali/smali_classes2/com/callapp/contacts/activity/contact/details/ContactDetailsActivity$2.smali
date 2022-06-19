.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$2;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$2;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$300(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)V

    return-void
.end method
