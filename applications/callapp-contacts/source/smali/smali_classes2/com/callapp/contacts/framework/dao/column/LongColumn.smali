.class public Lcom/callapp/contacts/framework/dao/column/LongColumn;
.super Lcom/callapp/contacts/framework/dao/column/Column;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/framework/dao/column/Column<",
        "Ljava/lang/Long;",
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

    .line 1022
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1023
    iget-boolean p2, p0, Lcom/callapp/contacts/framework/dao/column/LongColumn;->b:Z

    if-nez p2, :cond_0

    const-wide/16 p1, 0x0

    .line 1024
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    return-object p1
.end method
