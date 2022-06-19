.class final Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$2;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnDialogSimpleListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->a(Landroid/content/Context;Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/action/ActionDoneListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$2;->a:Z

    iput p2, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$2;->b:I

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnDialogSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 3

    .line 110
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$2;->a:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 111
    iget p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$2;->b:I

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/CallRemindersManager;->b(Ljava/lang/Long;)J

    .line 112
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v1, 0x7f1205d1

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1111
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 114
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v1, 0x7f1205d0

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2111
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
