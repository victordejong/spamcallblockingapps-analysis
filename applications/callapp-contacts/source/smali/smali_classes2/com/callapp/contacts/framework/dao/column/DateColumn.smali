.class public Lcom/callapp/contacts/framework/dao/column/DateColumn;
.super Lcom/callapp/contacts/framework/dao/column/Column;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/framework/dao/column/Column<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/callapp/contacts/framework/dao/column/Column;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/framework/dao/column/Column;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 3

    .line 2024
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 2025
    iget-boolean v0, p0, Lcom/callapp/contacts/framework/dao/column/DateColumn;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2028
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 8
    check-cast p1, Ljava/util/Date;

    .line 1039
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
