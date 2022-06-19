.class final Lcom/callapp/contacts/util/ListsUtils$10;
.super Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$10;->a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Z)V
    .locals 1

    .line 346
    invoke-static {}, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->values()[Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0, p2}, Lcom/callapp/contacts/manager/BlockManager;->a(Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$10;->a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;

    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0, p1, p2, p3}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method
