.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->updateScreenLockState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)V
    .locals 0

    .line 2720
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$41;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$41;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2723
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$41;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$41;->a:Z

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$5600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)V

    return-void
.end method
