.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$PersonSelectDialogSimpleListener;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnDialogSimpleListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PersonSelectDialogSimpleListener"
.end annotation


# instance fields
.field private final a:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 747
    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnDialogSimpleListener;-><init>()V

    .line 748
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$PersonSelectDialogSimpleListener;->a:Ljava/lang/Thread;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Thread;Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;)V
    .locals 0

    .line 744
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$PersonSelectDialogSimpleListener;-><init>(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 0

    .line 1757
    iget-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$PersonSelectDialogSimpleListener;->a:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    .line 1758
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1759
    iget-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$PersonSelectDialogSimpleListener;->a:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method
