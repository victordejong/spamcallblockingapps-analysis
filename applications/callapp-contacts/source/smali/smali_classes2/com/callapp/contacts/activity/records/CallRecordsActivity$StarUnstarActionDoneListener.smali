.class Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/action/ActionDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/records/CallRecordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StarUnstarActionDoneListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/records/CallRecordsActivity;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener;->a:Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;Lcom/callapp/contacts/activity/records/CallRecordsActivity$1;)V
    .locals 0

    .line 814
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 822
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener$1;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener;Z)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
