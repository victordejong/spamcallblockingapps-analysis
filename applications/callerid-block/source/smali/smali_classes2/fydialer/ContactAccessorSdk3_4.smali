.class final Lfydialer/ContactAccessorSdk3_4;
.super Lfydialer/ContactAccessor;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfydialer/ContactAccessorSdk3_4$MyContactSplit;
    }
.end annotation


# static fields
.field private static final PEOPLE_PROJECTION:[Ljava/lang/String;

.field private static final peopleSql:Ljava/lang/String; = "(UPPER(name) GLOB ? OR UPPER(name) GLOB ?) AND primary_phone IS NOT NULL"

.field private static final upName:Ljava/lang/String; = "UPPER(name)"


# instance fields
.field final myContactSplit:Lfydialer/ContactAccessorSdk3_4$MyContactSplit;

.field private myContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lfydialer/ContactAccessorSdk3_4;->PEOPLE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lfydialer/ContactAccessor;-><init>()V

    new-instance v0, Lfydialer/ContactAccessorSdk3_4$MyContactSplit;

    invoke-direct {v0, p0}, Lfydialer/ContactAccessorSdk3_4$MyContactSplit;-><init>(Lfydialer/ContactAccessorSdk3_4;)V

    iput-object v0, p0, Lfydialer/ContactAccessorSdk3_4;->myContactSplit:Lfydialer/ContactAccessorSdk3_4$MyContactSplit;

    return-void
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

    iget-object v0, p0, Lfydialer/ContactAccessorSdk3_4;->myContactSplit:Lfydialer/ContactAccessorSdk3_4$MyContactSplit;

    return-object v0
.end method

.method public getContactsIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public getFavouritesIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public recalculate(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 6

    const/4 p2, 0x2

    new-array v4, p2, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v4, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*[ ]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    iget-object v0, p0, Lfydialer/ContactAccessorSdk3_4;->myContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lfydialer/ContactAccessorSdk3_4;->PEOPLE_PROJECTION:[Ljava/lang/String;

    const-string v3, "(UPPER(name) GLOB ? OR UPPER(name) GLOB ?) AND primary_phone IS NOT NULL"

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lfydialer/ContactAccessorSdk3_4;->myContentResolver:Landroid/content/ContentResolver;

    return-void
.end method
