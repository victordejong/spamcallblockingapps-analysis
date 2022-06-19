.class public Lcom/callapp/contacts/framework/dao/ContentDelete;
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
.field a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/callapp/contacts/framework/dao/ContentDelete;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method final synthetic c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1057
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/ContentDelete;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
