.class public Lcom/unknownphone/callblocker/a/a/a/a;
.super Ljava/lang/Object;
.source "Contact.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, "contact_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unknownphone/callblocker/a/a/a/a;->a:J

    .line 31
    const-string/jumbo v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/a;->b:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "photo_thumb_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/a;->c:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/unknownphone/callblocker/custom/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/a;->d:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "version"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/a/a/a/a;->e:I

    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/a$d;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/a/a/a$d;->b()Lcom/a/a/a$c;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Lcom/a/a/a$c;->a()Lcom/a/a/a$c;

    move-result-object v0

    int-to-float v1, p4

    .line 62
    invoke-static {p1, v1}, Lcom/unknownphone/callblocker/custom/g;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/a/a/a$c;->b(I)Lcom/a/a/a$c;

    move-result-object v0

    .line 63
    invoke-interface {v0, p3}, Lcom/a/a/a$c;->a(I)Lcom/a/a/a$c;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Lcom/a/a/a$c;->c()Lcom/a/a/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/a;->b:Ljava/lang/String;

    const/4 v2, 0x2

    .line 65
    invoke-static {v1, v2}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/a/a/a$d;->a(Ljava/lang/String;I)Lcom/a/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f10015a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 69
    const-string/jumbo v0, "#d8d8d8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/unknownphone/callblocker/a/a/a/a;->a(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/a;->d:Ljava/lang/String;

    return-object v0
.end method
