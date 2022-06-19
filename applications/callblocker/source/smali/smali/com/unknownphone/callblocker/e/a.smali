.class public Lcom/unknownphone/callblocker/e/a;
.super Ljava/lang/Object;
.source "Contact.java"


# instance fields
.field private a:J

.field private b:J

.field private c:S

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unknownphone/callblocker/e/a;->a:J

    .line 27
    const-string/jumbo v0, "time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unknownphone/callblocker/e/a;->b:J

    .line 28
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/unknownphone/callblocker/e/a;->c:S

    .line 29
    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/a;->d:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/a;->e:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "count"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/e/a;->f:I

    .line 32
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/unknownphone/callblocker/e/a;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/unknownphone/callblocker/e/a;->f:I

    .line 81
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/unknownphone/callblocker/e/a;->a:J

    .line 40
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/a;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public a(S)V
    .locals 0

    .prologue
    .line 56
    iput-short p1, p0, Lcom/unknownphone/callblocker/e/a;->c:S

    .line 57
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/unknownphone/callblocker/e/a;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/unknownphone/callblocker/e/a;->b:J

    .line 49
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/a;->e:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public c()S
    .locals 1

    .prologue
    .line 52
    iget-short v0, p0, Lcom/unknownphone/callblocker/e/a;->c:S

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/unknownphone/callblocker/e/a;->f:I

    return v0
.end method

.method public g()Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    iget-wide v2, p0, Lcom/unknownphone/callblocker/e/a;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 86
    const-string/jumbo v1, "id"

    iget-wide v2, p0, Lcom/unknownphone/callblocker/e/a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    :cond_0
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Lcom/unknownphone/callblocker/e/a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    const-string/jumbo v1, "type"

    iget-short v2, p0, Lcom/unknownphone/callblocker/e/a;->c:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 89
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/unknownphone/callblocker/e/a;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/unknownphone/callblocker/e/a;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v1, "count"

    iget v2, p0, Lcom/unknownphone/callblocker/e/a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    return-object v0
.end method
