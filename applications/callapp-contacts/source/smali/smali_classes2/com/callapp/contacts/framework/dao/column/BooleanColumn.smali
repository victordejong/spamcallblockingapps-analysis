.class public Lcom/callapp/contacts/framework/dao/column/BooleanColumn;
.super Lcom/callapp/contacts/framework/dao/column/Column;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/framework/dao/column/Column<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/callapp/contacts/framework/dao/column/Column;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/framework/dao/column/Column;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 2022
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 2024
    iget-boolean p1, p0, Lcom/callapp/contacts/framework/dao/column/BooleanColumn;->b:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 2031
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 1041
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    return-object p1

    :cond_0
    const-string p1, "0"

    return-object p1
.end method
