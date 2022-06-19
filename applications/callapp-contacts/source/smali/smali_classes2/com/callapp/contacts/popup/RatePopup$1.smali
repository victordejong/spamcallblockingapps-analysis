.class Lcom/callapp/contacts/popup/RatePopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/RatePopup;->getNegativeListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/RatePopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/RatePopup;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/callapp/contacts/popup/RatePopup$1;->a:Lcom/callapp/contacts/popup/RatePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 68
    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 69
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ak:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v0, Lcom/callapp/contacts/util/AppRater$UserRating;->RATED_4STAR_OR_LESS:Lcom/callapp/contacts/util/AppRater$UserRating;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lcom/callapp/contacts/popup/RatePopup$1;->a:Lcom/callapp/contacts/popup/RatePopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/RatePopup;->dismiss()V

    return-void
.end method
