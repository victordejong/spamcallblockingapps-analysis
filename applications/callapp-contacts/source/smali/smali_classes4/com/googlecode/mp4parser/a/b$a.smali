.class final Lcom/googlecode/mp4parser/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field static final synthetic d:Z


# instance fields
.field a:Lcom/mp4parser/iso14496/a/b;

.field b:Lcom/mp4parser/iso14496/a/a;

.field final synthetic c:Lcom/googlecode/mp4parser/a/b;

.field private e:Lcom/b/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 207
    const-class v0, Lcom/googlecode/mp4parser/a/b;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/googlecode/mp4parser/a/b$a;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/a/b;Lcom/b/a/a/e;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/googlecode/mp4parser/a/b$a;->c:Lcom/googlecode/mp4parser/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p2, p0, Lcom/googlecode/mp4parser/a/b$a;->e:Lcom/b/a/a/e;

    return-void
.end method

.method static synthetic a(Lcom/googlecode/mp4parser/a/b$a;)Lcom/mp4parser/iso14496/a/a;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/googlecode/mp4parser/a/b$a;->b:Lcom/mp4parser/iso14496/a/a;

    return-object p0
.end method

.method static synthetic b(Lcom/googlecode/mp4parser/a/b$a;)Lcom/mp4parser/iso14496/a/b;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/googlecode/mp4parser/a/b$a;->a:Lcom/mp4parser/iso14496/a/b;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/googlecode/mp4parser/a/b$a;
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/b$a;->e:Lcom/b/a/a/e;

    const-class v1, Lcom/mp4parser/iso14496/a/b;

    invoke-interface {v0, v1}, Lcom/b/a/a/e;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/googlecode/mp4parser/a/b$a;->e:Lcom/b/a/a/e;

    const-class v2, Lcom/mp4parser/iso14496/a/a;

    invoke-interface {v1, v2}, Lcom/b/a/a/e;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 227
    sget-boolean v2, Lcom/googlecode/mp4parser/a/b$a;->d:Z

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 228
    iput-object v2, p0, Lcom/googlecode/mp4parser/a/b$a;->a:Lcom/mp4parser/iso14496/a/b;

    .line 229
    iput-object v2, p0, Lcom/googlecode/mp4parser/a/b$a;->b:Lcom/mp4parser/iso14496/a/a;

    const/4 v2, 0x0

    .line 231
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    return-object p0

    .line 232
    :cond_2
    iget-object v3, p0, Lcom/googlecode/mp4parser/a/b$a;->a:Lcom/mp4parser/iso14496/a/b;

    const-string v4, "cenc"

    if-nez v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/a/b;

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/a/b;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/a/b;

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 233
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/a/b;

    iput-object v3, p0, Lcom/googlecode/mp4parser/a/b$a;->a:Lcom/mp4parser/iso14496/a/b;

    goto :goto_2

    .line 234
    :cond_5
    iget-object v3, p0, Lcom/googlecode/mp4parser/a/b$a;->a:Lcom/mp4parser/iso14496/a/b;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/a/b;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/a/b;

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 235
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/a/b;

    iput-object v3, p0, Lcom/googlecode/mp4parser/a/b$a;->a:Lcom/mp4parser/iso14496/a/b;

    .line 239
    :goto_2
    iget-object v3, p0, Lcom/googlecode/mp4parser/a/b$a;->b:Lcom/mp4parser/iso14496/a/a;

    if-nez v3, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/a/a;

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/a/a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    :cond_6
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/a/a;

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 240
    :cond_7
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/a/a;

    iput-object v3, p0, Lcom/googlecode/mp4parser/a/b$a;->b:Lcom/mp4parser/iso14496/a/a;

    goto :goto_3

    .line 241
    :cond_8
    iget-object v3, p0, Lcom/googlecode/mp4parser/a/b$a;->b:Lcom/mp4parser/iso14496/a/a;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/a/a;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/a/a;

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 242
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/a/a;

    iput-object v3, p0, Lcom/googlecode/mp4parser/a/b$a;->b:Lcom/mp4parser/iso14496/a/a;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 244
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Are there two cenc labeled saio?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Are there two cenc labeled saiz?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
