.class public Lcom/callapp/contacts/framework/dao/ContentInsert;
.super Lcom/callapp/contacts/framework/dao/BaseStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/framework/dao/BaseStatement<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/ContentValues;

.field b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/callapp/contacts/framework/dao/BaseStatement;-><init>()V

    .line 10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentInsert;->a:Landroid/content/ContentValues;

    .line 14
    iput-object p1, p0, Lcom/callapp/contacts/framework/dao/ContentInsert;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentInsert;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/framework/dao/column/Column<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/callapp/contacts/framework/dao/ContentInsert;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentInsert;->a:Landroid/content/ContentValues;

    iget-object p1, p1, Lcom/callapp/contacts/framework/dao/column/Column;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected final synthetic a()Ljava/lang/Object;
    .locals 3

    .line 1113
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/ContentInsert;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/callapp/contacts/framework/dao/ContentInsert;->a:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
