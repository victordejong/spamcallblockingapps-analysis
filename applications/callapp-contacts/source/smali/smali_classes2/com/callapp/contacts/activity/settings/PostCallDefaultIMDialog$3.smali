.class Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->a(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$3;->a:Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$3;->a:Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->a(Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;)V

    .line 133
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$3;->a:Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->dismiss()V

    return-void
.end method
