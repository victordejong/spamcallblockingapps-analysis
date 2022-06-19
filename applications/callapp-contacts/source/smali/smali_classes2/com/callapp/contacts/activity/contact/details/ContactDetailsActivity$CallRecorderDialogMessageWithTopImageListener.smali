.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$CallRecorderDialogMessageWithTopImageListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallRecorderDialogMessageWithTopImageListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$1;)V
    .locals 0

    .line 2712
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$CallRecorderDialogMessageWithTopImageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 2715
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->eX:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method
