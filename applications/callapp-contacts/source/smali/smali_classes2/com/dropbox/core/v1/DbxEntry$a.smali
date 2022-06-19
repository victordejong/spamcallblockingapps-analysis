.class public final Lcom/dropbox/core/v1/DbxEntry$a;
.super Lcom/dropbox/core/v1/DbxEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v1/DbxEntry$a$a;,
        Lcom/dropbox/core/v1/DbxEntry$a$c;,
        Lcom/dropbox/core/v1/DbxEntry$a$b;
    }
.end annotation


# static fields
.field public static final o:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/DbxEntry$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/DbxEntry$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/Date;

.field public final k:Ljava/util/Date;

.field public final l:Ljava/lang/String;

.field public final m:Lcom/dropbox/core/v1/DbxEntry$a$b;

.field public final n:Lcom/dropbox/core/v1/DbxEntry$a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 310
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$File$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$a;->o:Lcom/dropbox/core/json/JsonReader;

    .line 325
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$2;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$File$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$a;->p:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 275
    invoke-direct/range {v0 .. v11}, Lcom/dropbox/core/v1/DbxEntry$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v1/DbxEntry$a$b;Lcom/dropbox/core/v1/DbxEntry$a$c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v1/DbxEntry$a$b;Lcom/dropbox/core/v1/DbxEntry$a$c;)V
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v1/DbxEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v1/DbxEntry$1;)V

    .line 260
    iput-wide p4, p0, Lcom/dropbox/core/v1/DbxEntry$a;->h:J

    .line 261
    iput-object p6, p0, Lcom/dropbox/core/v1/DbxEntry$a;->i:Ljava/lang/String;

    .line 262
    iput-object p7, p0, Lcom/dropbox/core/v1/DbxEntry$a;->j:Ljava/util/Date;

    .line 263
    iput-object p8, p0, Lcom/dropbox/core/v1/DbxEntry$a;->k:Ljava/util/Date;

    .line 264
    iput-object p9, p0, Lcom/dropbox/core/v1/DbxEntry$a;->l:Ljava/lang/String;

    .line 265
    iput-object p10, p0, Lcom/dropbox/core/v1/DbxEntry$a;->m:Lcom/dropbox/core/v1/DbxEntry$a$b;

    .line 266
    iput-object p11, p0, Lcom/dropbox/core/v1/DbxEntry$a;->n:Lcom/dropbox/core/v1/DbxEntry$a$c;

    return-void
.end method

.method private static a(Lcom/dropbox/core/util/b;Ljava/lang/String;Lcom/dropbox/core/util/c;Lcom/dropbox/core/util/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/dropbox/core/util/c;",
            ">(",
            "Lcom/dropbox/core/util/b;",
            "Ljava/lang/String;",
            "TT;TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 295
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    if-ne p2, p3, :cond_1

    const-string p1, "pending"

    .line 297
    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/b;->c(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    return-void

    .line 299
    :cond_1
    invoke-virtual {p0, p2}, Lcom/dropbox/core/util/b;->a(Lcom/dropbox/core/util/c;)Lcom/dropbox/core/util/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "File"

    return-object v0
.end method

.method public final a(Lcom/dropbox/core/util/b;)V
    .locals 3

    .line 280
    invoke-super {p0, p1}, Lcom/dropbox/core/v1/DbxEntry;->a(Lcom/dropbox/core/util/b;)V

    const-string v0, "numBytes"

    .line 281
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-wide v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->h:J

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/util/b;->a(J)Lcom/dropbox/core/util/b;

    const-string v0, "humanSize"

    .line 282
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    const-string v0, "lastModified"

    .line 283
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->j:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->a(Ljava/util/Date;)Lcom/dropbox/core/util/b;

    const-string v0, "clientMtime"

    .line 284
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->k:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->a(Ljava/util/Date;)Lcom/dropbox/core/util/b;

    const-string v0, "rev"

    .line 285
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    .line 286
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$a;->m:Lcom/dropbox/core/v1/DbxEntry$a$b;

    sget-object v1, Lcom/dropbox/core/v1/DbxEntry$a$b;->d:Lcom/dropbox/core/v1/DbxEntry$a$b;

    const-string v2, "photoInfo"

    invoke-static {p1, v2, v0, v1}, Lcom/dropbox/core/v1/DbxEntry$a;->a(Lcom/dropbox/core/util/b;Ljava/lang/String;Lcom/dropbox/core/util/c;Lcom/dropbox/core/util/c;)V

    .line 287
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$a;->n:Lcom/dropbox/core/v1/DbxEntry$a$c;

    sget-object v1, Lcom/dropbox/core/v1/DbxEntry$a$c;->e:Lcom/dropbox/core/v1/DbxEntry$a$c;

    const-string v2, "videoInfo"

    invoke-static {p1, v2, v0, v1}, Lcom/dropbox/core/v1/DbxEntry$a;->a(Lcom/dropbox/core/util/b;Ljava/lang/String;Lcom/dropbox/core/util/c;Lcom/dropbox/core/util/c;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 344
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    check-cast p1, Lcom/dropbox/core/v1/DbxEntry$a;

    .line 1349
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$a;->a(Lcom/dropbox/core/v1/DbxEntry;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 1350
    :cond_0
    iget-wide v3, p0, Lcom/dropbox/core/v1/DbxEntry$a;->h:J

    iget-wide v5, p1, Lcom/dropbox/core/v1/DbxEntry$a;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1351
    :cond_1
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$a;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1352
    :cond_2
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->j:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$a;->j:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 1353
    :cond_3
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->k:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$a;->k:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 1354
    :cond_4
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$a;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 1355
    :cond_5
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->m:Lcom/dropbox/core/v1/DbxEntry$a$b;

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$a;->m:Lcom/dropbox/core/v1/DbxEntry$a$b;

    invoke-static {v1, v3}, Lcom/dropbox/core/util/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 1356
    :cond_6
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->n:Lcom/dropbox/core/v1/DbxEntry$a$c;

    iget-object p1, p1, Lcom/dropbox/core/v1/DbxEntry$a;->n:Lcom/dropbox/core/v1/DbxEntry$a$c;

    invoke-static {v1, p1}, Lcom/dropbox/core/util/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 363
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxEntry$a;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 364
    iget-wide v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->h:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 365
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->j:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 366
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->k:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 367
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 368
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->m:Lcom/dropbox/core/v1/DbxEntry$a$b;

    invoke-static {v1}, Lcom/dropbox/core/util/d;->a(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 369
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a;->n:Lcom/dropbox/core/v1/DbxEntry$a$c;

    invoke-static {v1}, Lcom/dropbox/core/util/d;->a(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
