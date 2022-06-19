.class Lcom/callapp/contacts/activity/records/CallRecordsActivity$8;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/records/CallRecordsActivity;->b(Z)V
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

    .line 676
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$8;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 679
    sget-object p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->b()V

    .line 680
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$8;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Lcom/callapp/contacts/activity/records/CallRecordsActivity;Z)V

    .line 681
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$8;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->g(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    return-void
.end method
