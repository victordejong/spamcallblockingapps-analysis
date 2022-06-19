.class final Lfydialer/ContactAccessorSdk5;
.super Lfydialer/ContactAccessor;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfydialer/ContactAccessorSdk5$MyContactSplit;
    }
.end annotation


# static fields
.field private static final PEOPLE_PHONE_PROJECTION:[Ljava/lang/String;

.field private static final PEOPLE_SORT:Ljava/lang/String; = "display_name COLLATE LOCALIZED ASC"

.field private static final PHONE_PROJECTION:[Ljava/lang/String;

.field private static final PHONE_QUERY_SORT:Ljava/lang/String; = "is_super_primary"

.field private static final PRIMARY_PHONE_QUERY:Ljava/lang/String; = "contact_id = ?"

.field private static final peopleSql:Ljava/lang/String; = "(UPPER(display_name) GLOB ? OR UPPER(display_name) GLOB ? OR REPLACE(data1,\'-\', \'\') GLOB ?)"

.field private static final upName:Ljava/lang/String; = "UPPER(display_name)"


# instance fields
.field final myContactSplit:Lfydialer/ContactAccessorSdk5$MyContactSplit;

.field myContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "data1"

    aput-object v5, v1, v4

    const-string v6, "is_super_primary"

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sput-object v1, Lfydialer/ContactAccessorSdk5;->PHONE_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "lookup"

    aput-object v2, v1, v4

    const-string v2, "display_name"

    aput-object v2, v1, v7

    aput-object v5, v1, v0

    const/4 v0, 0x4

    const-string v2, "data2"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "data3"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "photo_id"

    aput-object v2, v1, v0

    sput-object v1, Lfydialer/ContactAccessorSdk5;->PEOPLE_PHONE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lfydialer/ContactAccessor;-><init>()V

    new-instance v0, Lfydialer/ContactAccessorSdk5$MyContactSplit;

    invoke-direct {v0, p0}, Lfydialer/ContactAccessorSdk5$MyContactSplit;-><init>(Lfydialer/ContactAccessorSdk5;)V

    iput-object v0, p0, Lfydialer/ContactAccessorSdk5;->myContactSplit:Lfydialer/ContactAccessorSdk5$MyContactSplit;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lfydialer/ContactAccessorSdk5;->PHONE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addToContacts(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "vnd.android.cursor.item/person"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getContactSplit()Lfydialer/IContactSplit;
    .locals 1

    iget-object v0, p0, Lfydialer/ContactAccessorSdk5;->myContactSplit:Lfydialer/ContactAccessorSdk5$MyContactSplit;

    return-object v0
.end method

.method public getContactsIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public getFavouritesIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public recalculate(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x2

    const-string v1, "*[ ]"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v5, "*"

    if-eqz p2, :cond_0

    new-array p2, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    goto :goto_0

    :cond_0
    new-array p2, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    :goto_0
    move-object v5, p2

    iget-object v1, p0, Lfydialer/ContactAccessorSdk5;->myContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lfydialer/ContactAccessorSdk5;->PEOPLE_PHONE_PROJECTION:[Ljava/lang/String;

    const-string v4, "(UPPER(display_name) GLOB ? OR UPPER(display_name) GLOB ? OR REPLACE(data1,\'-\', \'\') GLOB ?)"

    const-string v6, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lfydialer/ContactAccessorSdk5;->myContentResolver:Landroid/content/ContentResolver;

    return-void
.end method
