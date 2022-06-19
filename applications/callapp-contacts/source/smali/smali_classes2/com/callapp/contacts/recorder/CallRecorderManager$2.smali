.class public Lcom/callapp/contacts/recorder/CallRecorderManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/CallRecorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/CallRecorderManager;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/recorder/CallRecorderManager;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$2;->a:Lcom/callapp/contacts/recorder/CallRecorderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 0

    .line 458
    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Landroid/content/Context;)V

    return-void
.end method
