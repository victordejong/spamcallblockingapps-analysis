.class public Lcom/callapp/contacts/framework/dao/ContentUpdate;
.super Lcom/callapp/contacts/framework/dao/BaseWhereSupport;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/framework/dao/BaseWhereSupport<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/ContentValues;

.field b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;-><init>()V

    .line 16
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentUpdate;->a:Landroid/content/ContentValues;

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/framework/dao/ContentUpdate;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/Boolean;)Lcom/callapp/contacts/framework/dao/ContentUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/framework/dao/column/Column<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/callapp/contacts/framework/dao/ContentUpdate;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentUpdate;->a:Landroid/content/ContentValues;

    iget-object p1, p1, Lcom/callapp/contacts/framework/dao/column/Column;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public final b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentUpdate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/framework/dao/column/Column<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/callapp/contacts/framework/dao/ContentUpdate;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/framework/dao/ContentUpdate;->a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method final synthetic c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1154
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/ContentUpdate;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/callapp/contacts/framework/dao/ContentUpdate;->a:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
