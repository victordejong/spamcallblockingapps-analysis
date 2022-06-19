.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->handleIncognitoMode()V
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

    .line 1104
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$15;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1107
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$15;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    sget-object v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->changeContactDetailsThemeColor(Lcom/callapp/contacts/activity/contact/header/ThemeState;Z)V

    return-void
.end method
