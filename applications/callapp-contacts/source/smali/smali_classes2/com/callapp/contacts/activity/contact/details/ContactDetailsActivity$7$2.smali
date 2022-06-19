.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7$2;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7$2;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finish()V

    return-void
.end method
