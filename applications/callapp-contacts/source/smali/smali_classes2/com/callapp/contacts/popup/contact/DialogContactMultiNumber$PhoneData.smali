.class Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneData"
.end annotation


# instance fields
.field a:Lcom/callapp/framework/phone/Phone;

.field b:Z

.field final synthetic c:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;Lcom/callapp/framework/phone/Phone;Z)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;->c:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;->a:Lcom/callapp/framework/phone/Phone;

    .line 144
    iput-boolean p3, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;->b:Z

    return-void
.end method
