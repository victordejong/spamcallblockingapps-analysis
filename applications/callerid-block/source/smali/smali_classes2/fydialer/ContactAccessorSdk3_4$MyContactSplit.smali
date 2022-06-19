.class Lfydialer/ContactAccessorSdk3_4$MyContactSplit;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfydialer/IContactSplit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfydialer/ContactAccessorSdk3_4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyContactSplit"
.end annotation


# instance fields
.field final synthetic this$0:Lfydialer/ContactAccessorSdk3_4;


# direct methods
.method constructor <init>(Lfydialer/ContactAccessorSdk3_4;)V
    .locals 0

    iput-object p1, p0, Lfydialer/ContactAccessorSdk3_4$MyContactSplit;->this$0:Lfydialer/ContactAccessorSdk3_4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    return-object p1
.end method

.method public getContactUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    return-object p1
.end method

.method public getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLookupUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
