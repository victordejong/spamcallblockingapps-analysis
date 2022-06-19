.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$SearchExceptionDialogSimpleListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchExceptionDialogSimpleListener"
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$SearchExceptionDialogSimpleListener;->a:Z

    return-void
.end method

.method synthetic constructor <init>(ZLcom/callapp/contacts/activity/select/PersonSelectActivity$1;)V
    .locals 0

    .line 765
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$SearchExceptionDialogSimpleListener;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 774
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$SearchExceptionDialogSimpleListener;->a:Z

    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
