.class public Lcom/callapp/contacts/popup/contact/DialogBulletListTopImage;
.super Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;[ILjava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 10

    .line 1025
    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->a([I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 12
    invoke-direct/range {v0 .. v9}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    const/high16 v0, 0x41600000    # 14.0f

    move-object v1, p0

    .line 21
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/popup/contact/DialogBulletListTopImage;->setMessageSize(F)V

    return-void
.end method
