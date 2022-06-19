.class Lfydialer/ContactAccessorSdk5$MyContactSplit;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfydialer/IContactSplit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfydialer/ContactAccessorSdk5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyContactSplit"
.end annotation


# instance fields
.field final synthetic this$0:Lfydialer/ContactAccessorSdk5;


# direct methods
.method constructor <init>(Lfydialer/ContactAccessorSdk5;)V
    .locals 0

    iput-object p1, p0, Lfydialer/ContactAccessorSdk5$MyContactSplit;->this$0:Lfydialer/ContactAccessorSdk5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iget-object p1, p0, Lfydialer/ContactAccessorSdk5$MyContactSplit;->this$0:Lfydialer/ContactAccessorSdk5;

    iget-object v2, p1, Lfydialer/ContactAccessorSdk5;->myContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lfydialer/ContactAccessorSdk5;->access$000()[Ljava/lang/String;

    move-result-object v4

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    const-string v5, "contact_id = ?"

    const-string v7, "is_super_primary"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    move-wide v1, v2

    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz p1, :cond_2

    sget-object p1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public getContactUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    return-object p1
.end method

.method public getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLookupUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
