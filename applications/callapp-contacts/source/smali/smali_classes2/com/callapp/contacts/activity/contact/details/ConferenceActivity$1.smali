.class Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;
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

    .line 99
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$1;->a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 102
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$1$1;-><init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method
