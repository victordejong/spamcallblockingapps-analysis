.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$10;
.super Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    .line 634
    iput-object v0, v9, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$10;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method


# virtual methods
.method public onDialogDismissed(Landroid/content/DialogInterface;)V
    .locals 2

    .line 637
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ge:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 638
    invoke-super {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->onDialogDismissed(Landroid/content/DialogInterface;)V

    return-void
.end method
