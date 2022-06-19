.class Lcom/callapp/contacts/activity/records/CallRecordsActivity$6;
.super Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/records/CallRecordsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/records/CallRecordsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$6;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 515
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 516
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$6;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->b(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a()Z

    return-void
.end method
