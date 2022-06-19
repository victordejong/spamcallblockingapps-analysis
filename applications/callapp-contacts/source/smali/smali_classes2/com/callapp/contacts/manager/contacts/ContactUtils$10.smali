.class final Lcom/callapp/contacts/manager/contacts/ContactUtils$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/contacts/ContactUtils;->d(J)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 3

    .line 1953
    new-instance v0, Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v1, "photo_uri"

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/column/StringColumn;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1954
    new-instance v1, Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v2, "photo_thumb_uri"

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/column/StringColumn;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1955
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
