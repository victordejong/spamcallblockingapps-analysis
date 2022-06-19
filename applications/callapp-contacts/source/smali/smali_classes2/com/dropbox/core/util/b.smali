.class public abstract Lcom/dropbox/core/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/util/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 279
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 280
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract a()Lcom/dropbox/core/util/b;
.end method

.method public final a(D)Lcom/dropbox/core/util/b;
    .locals 0

    .line 238
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/b;->c(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)Lcom/dropbox/core/util/b;
    .locals 0

    .line 235
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/b;->c(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/dropbox/core/util/c;)Lcom/dropbox/core/util/b;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 245
    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/b;->c(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/dropbox/core/util/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/b;->a(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    .line 249
    invoke-virtual {p1, p0}, Lcom/dropbox/core/util/c;->a(Lcom/dropbox/core/util/b;)V

    .line 250
    invoke-virtual {p0}, Lcom/dropbox/core/util/b;->a()Lcom/dropbox/core/util/b;

    :goto_0
    return-object p0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/dropbox/core/util/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/dropbox/core/util/c;",
            ">;)",
            "Lcom/dropbox/core/util/b;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 213
    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/b;->c(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    goto :goto_1

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/dropbox/core/util/b;->b()Lcom/dropbox/core/util/b;

    .line 216
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/util/c;

    .line 217
    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/b;->a(Lcom/dropbox/core/util/c;)Lcom/dropbox/core/util/b;

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/dropbox/core/util/b;->c()Lcom/dropbox/core/util/b;

    :goto_1
    return-object p0
.end method

.method public abstract a(Ljava/lang/String;)Lcom/dropbox/core/util/b;
.end method

.method public final a(Ljava/util/Date;)Lcom/dropbox/core/util/b;
    .locals 7

    if-nez p1, :cond_0

    const-string p1, "null"

    goto/16 :goto_0

    .line 1260
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1261
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/dropbox/core/json/JsonDateReader;->UTC:Ljava/util/TimeZone;

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1262
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 1263
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 1264
    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dropbox/core/util/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x5

    .line 1265
    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/core/util/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    .line 1266
    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dropbox/core/util/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    .line 1267
    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/util/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd

    .line 1268
    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/util/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x22

    .line 1269
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " UTC"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    :goto_0
    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/b;->c(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Z)Lcom/dropbox/core/util/b;
    .locals 0

    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/b;->c(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract b()Lcom/dropbox/core/util/b;
.end method

.method public abstract b(Ljava/lang/String;)Lcom/dropbox/core/util/b;
.end method

.method public abstract c()Lcom/dropbox/core/util/b;
.end method

.method public abstract c(Ljava/lang/String;)Lcom/dropbox/core/util/b;
.end method

.method public final d(Ljava/lang/String;)Lcom/dropbox/core/util/b;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 227
    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/b;->c(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/util/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/b;->c(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    :goto_0
    return-object p0
.end method
