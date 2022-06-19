.class public Lcom/callapp/contacts/framework/dao/RowContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/database/Cursor;

.field b:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f(Ljava/lang/String;)I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/RowContext;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/framework/dao/RowContext;->c:Ljava/util/Map;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/RowContext;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/RowContext;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/RowContext;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/framework/dao/column/Column<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/RowContext;->a:Landroid/database/Cursor;

    iget-object v1, p1, Lcom/callapp/contacts/framework/dao/column/Column;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/framework/dao/column/Column;->a(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/RowContext;->a:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/framework/dao/RowContext;->f(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/RowContext;->a:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/framework/dao/RowContext;->f(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Ljava/lang/String;)J
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/RowContext;->a:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/framework/dao/RowContext;->f(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/RowContext;->a:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/framework/dao/RowContext;->f(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/framework/dao/RowContext;->c(Ljava/lang/String;)J

    move-result-wide v0

    .line 46
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1
.end method
