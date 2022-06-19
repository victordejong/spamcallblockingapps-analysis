.class final Lcom/callapp/contacts/loader/im/BaseChatLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/im/BaseChatLoader;->a(Landroid/content/Context;Ljava/util/Collection;Lcom/callapp/contacts/loader/im/BaseChatLoader$ChatStarter;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/callapp/contacts/loader/im/BaseChatLoader$ChatStarter;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/callapp/contacts/popup/contact/DialogList;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/loader/im/BaseChatLoader$ChatStarter;[Ljava/lang/String;Lcom/callapp/contacts/popup/contact/DialogList;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/callapp/contacts/loader/im/BaseChatLoader$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/callapp/contacts/loader/im/BaseChatLoader$1;->b:Lcom/callapp/contacts/loader/im/BaseChatLoader$ChatStarter;

    iput-object p3, p0, Lcom/callapp/contacts/loader/im/BaseChatLoader$1;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/callapp/contacts/loader/im/BaseChatLoader$1;->d:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRowClicked(I)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/loader/im/BaseChatLoader$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/loader/im/BaseChatLoader$1;->b:Lcom/callapp/contacts/loader/im/BaseChatLoader$ChatStarter;

    iget-object v1, p0, Lcom/callapp/contacts/loader/im/BaseChatLoader$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/loader/im/BaseChatLoader$1;->c:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-interface {v0, v1, p1}, Lcom/callapp/contacts/loader/im/BaseChatLoader$ChatStarter;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/callapp/contacts/loader/im/BaseChatLoader$1;->d:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    return-void
.end method
