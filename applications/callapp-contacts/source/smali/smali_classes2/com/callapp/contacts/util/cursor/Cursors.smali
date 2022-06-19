.class public Lcom/callapp/contacts/util/cursor/Cursors;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 2

    .line 12
    invoke-static {p0, p1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1019
    :cond_0
    instance-of v1, p0, Landroid/database/CursorWrapper;

    if-eqz v1, :cond_1

    instance-of v1, p1, Landroid/database/CursorWrapper;

    if-eqz v1, :cond_1

    .line 1020
    check-cast p0, Landroid/database/CursorWrapper;

    invoke-virtual {p0}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object p0

    .line 1021
    check-cast p1, Landroid/database/CursorWrapper;

    invoke-virtual {p1}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 1022
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/cursor/Cursors;->a(Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0
.end method
