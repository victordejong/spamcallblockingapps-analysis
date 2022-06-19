.class public final synthetic Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$N9PreGYw6flsRv-UtjjroPdvbpI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/manager/analytics/AnalyticsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$N9PreGYw6flsRv-UtjjroPdvbpI;->f$0:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$N9PreGYw6flsRv-UtjjroPdvbpI;->f$0:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->lambda$showOverlayPermissionDialog$1(Lcom/callapp/contacts/manager/analytics/AnalyticsManager;Landroid/app/Activity;)V

    return-void
.end method
