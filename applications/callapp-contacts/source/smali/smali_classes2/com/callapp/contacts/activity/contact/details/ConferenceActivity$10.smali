.class Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$10;->a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$10;->a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->finish()V

    return-void
.end method
