.class final Lcom/callapp/contacts/activity/fragments/UserProfileHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/fragments/UserProfileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$2;->a:Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRow(Lcom/callapp/contacts/framework/dao/RowContext;)V
    .locals 3

    const-string v0, "mimetype"

    .line 177
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "data1"

    if-eqz v1, :cond_2

    const-string v0, "is_primary"

    .line 180
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->b(Ljava/lang/String;)Z

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$2;->a:Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;

    iget-object v1, v1, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$2;->a:Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;->b:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v1, "vnd.android.cursor.item/name"

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$2;->a:Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;

    iget-object v0, v0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "display_name"

    .line 186
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/callapp/common/util/RegexUtils;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$2;->a:Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;

    iput-object p1, v0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;->a:Ljava/lang/String;

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    .line 191
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$2;->a:Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;

    iget-object v0, v0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$2;->a:Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;->c:Ljava/lang/String;

    :cond_5
    return-void
.end method
