.class Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;->a(Landroid/content/Context;Landroid/view/View;Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;

.field final synthetic b:Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$2;->b:Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$2;->a:Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$2;->a:Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$2;->b:Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;->a(Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;)V

    .line 76
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$2;->a:Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;->onShowLessClick()V

    :cond_0
    return-void
.end method
