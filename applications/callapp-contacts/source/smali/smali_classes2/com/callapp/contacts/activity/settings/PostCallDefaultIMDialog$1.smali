.class Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/widget/RadioGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;Landroid/view/View;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$1;->b:Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$1;->b:Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;

    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$1;->a:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->a(Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;Landroid/view/View;)V

    return-void
.end method
