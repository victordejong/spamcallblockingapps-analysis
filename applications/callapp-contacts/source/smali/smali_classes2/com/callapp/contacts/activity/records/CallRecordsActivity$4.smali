.class final Lcom/callapp/contacts/activity/records/CallRecordsActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/records/CallRecordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$4;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final popupDone(Z)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$4;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Landroid/content/Context;)V

    return-void
.end method
