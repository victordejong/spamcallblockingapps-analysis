.class final Lcom/callapp/contacts/action/local/SmsAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/action/local/SmsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/action/local/SmsAction$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDone(Lcom/callapp/framework/phone/Phone;Z)V
    .locals 0

    .line 46
    iget-object p2, p0, Lcom/callapp/contacts/action/local/SmsAction$1;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/callapp/contacts/action/local/SmsAction;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method
