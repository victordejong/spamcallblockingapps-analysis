.class public Lcom/unknownphone/callblocker/a/c;
.super Ljava/lang/Object;
.source "BlockedNumber.java"


# instance fields
.field private a:J

.field private b:S

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unknownphone/callblocker/a/c;->a:J

    .line 26
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/unknownphone/callblocker/a/c;->b:S

    .line 27
    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/c;->c:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/c;->d:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/unknownphone/callblocker/a/c;->a:J

    return-wide v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/c;->c:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public a(S)V
    .locals 0

    .prologue
    .line 44
    iput-short p1, p0, Lcom/unknownphone/callblocker/a/c;->b:S

    .line 45
    return-void
.end method

.method public b()S
    .locals 1

    .prologue
    .line 40
    iget-short v0, p0, Lcom/unknownphone/callblocker/a/c;->b:S

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/c;->d:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 64
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 65
    iget-wide v2, p0, Lcom/unknownphone/callblocker/a/c;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 66
    const-string/jumbo v1, "id"

    iget-wide v2, p0, Lcom/unknownphone/callblocker/a/c;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    :cond_0
    const-string/jumbo v1, "type"

    iget-short v2, p0, Lcom/unknownphone/callblocker/a/c;->b:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 68
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/c;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/c;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v0
.end method
