.class Lcom/callapp/contacts/activity/contact/details/PostCallActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->handlePostCallActions(Lcom/callapp/contacts/model/call/CallData;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;Landroid/view/View;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$9;->b:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$9;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$9;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 440
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$9;->b:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->access$600(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Lcom/callapp/contacts/manager/MainThreadTimer;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    iget v1, v1, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->duration:I

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/MainThreadTimer;->a(IZ)Z

    return-void
.end method
