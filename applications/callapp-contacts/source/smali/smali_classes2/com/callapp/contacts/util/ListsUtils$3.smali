.class final Lcom/callapp/contacts/util/ListsUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/callapp/contacts/util/ListsUtils$3;->b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDone(Lcom/callapp/framework/phone/Phone;Z)V
    .locals 1

    .line 183
    iget-object p2, p0, Lcom/callapp/contacts/util/ListsUtils$3;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$3;->b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-static {p2, p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method
