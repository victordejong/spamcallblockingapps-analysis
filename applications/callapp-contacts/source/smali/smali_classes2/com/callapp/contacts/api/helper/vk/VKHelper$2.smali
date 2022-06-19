.class Lcom/callapp/contacts/api/helper/vk/VKHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/api/sdk/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/vk/VKHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/vk/VKHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/vk/VKHelper;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$2;->a:Lcom/callapp/contacts/api/helper/vk/VKHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$2;->a:Lcom/callapp/contacts/api/helper/vk/VKHelper;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->b()V

    return-void
.end method

.method public final a(Lcom/vk/api/sdk/a/a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1041
    iget-object v0, p1, Lcom/vk/api/sdk/a/a;->b:Ljava/lang/String;

    .line 142
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fJ:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    .line 2041
    iget-object p1, p1, Lcom/vk/api/sdk/a/a;->b:Ljava/lang/String;

    .line 143
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$2;->a:Lcom/callapp/contacts/api/helper/vk/VKHelper;

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Lcom/callapp/contacts/api/helper/vk/VKHelper;)V

    .line 146
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$2;->a:Lcom/callapp/contacts/api/helper/vk/VKHelper;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a()V

    return-void
.end method
