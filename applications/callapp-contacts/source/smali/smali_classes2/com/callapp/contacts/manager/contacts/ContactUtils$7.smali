.class final Lcom/callapp/contacts/manager/contacts/ContactUtils$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/contacts/ContactUtils;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/framework/dao/column/StringColumn;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/framework/dao/column/StringColumn;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/callapp/contacts/manager/contacts/ContactUtils$7;->a:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 1

    .line 1867
    iget-object v0, p0, Lcom/callapp/contacts/manager/contacts/ContactUtils$7;->a:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
