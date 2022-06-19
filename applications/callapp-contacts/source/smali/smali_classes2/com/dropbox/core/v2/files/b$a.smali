.class public final Lcom/dropbox/core/v2/files/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:Lcom/dropbox/core/v2/files/bm;

.field protected c:Z

.field protected d:Ljava/util/Date;

.field protected e:Z

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/j;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)"

    .line 221
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iput-object p1, p0, Lcom/dropbox/core/v2/files/b$a;->a:Ljava/lang/String;

    .line 225
    sget-object p1, Lcom/dropbox/core/v2/files/bm;->a:Lcom/dropbox/core/v2/files/bm;

    iput-object p1, p0, Lcom/dropbox/core/v2/files/b$a;->b:Lcom/dropbox/core/v2/files/bm;

    const/4 p1, 0x0

    .line 226
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/b$a;->c:Z

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/dropbox/core/v2/files/b$a;->d:Ljava/util/Date;

    .line 228
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/b$a;->e:Z

    .line 229
    iput-object v0, p0, Lcom/dropbox/core/v2/files/b$a;->f:Ljava/util/List;

    .line 230
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/b$a;->g:Z

    return-void

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'path\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value for \'path\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/v2/files/bm;)Lcom/dropbox/core/v2/files/b$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 250
    iput-object p1, p0, Lcom/dropbox/core/v2/files/b$a;->b:Lcom/dropbox/core/v2/files/bm;

    goto :goto_0

    .line 253
    :cond_0
    sget-object p1, Lcom/dropbox/core/v2/files/bm;->a:Lcom/dropbox/core/v2/files/bm;

    iput-object p1, p0, Lcom/dropbox/core/v2/files/b$a;->b:Lcom/dropbox/core/v2/files/bm;

    :goto_0
    return-object p0
.end method

.method public final a()Lcom/dropbox/core/v2/files/b;
    .locals 9

    .line 377
    new-instance v8, Lcom/dropbox/core/v2/files/b;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/b$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/b$a;->b:Lcom/dropbox/core/v2/files/bm;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/b$a;->c:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/files/b$a;->d:Ljava/util/Date;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/files/b$a;->e:Z

    iget-object v6, p0, Lcom/dropbox/core/v2/files/b$a;->f:Ljava/util/List;

    iget-boolean v7, p0, Lcom/dropbox/core/v2/files/b$a;->g:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/files/b;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/bm;ZLjava/util/Date;ZLjava/util/List;Z)V

    return-object v8
.end method
