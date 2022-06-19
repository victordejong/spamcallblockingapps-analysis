.class Lcom/allinone/callerid/util/t9/d$a;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"

# interfaces
.implements Lcom/allinone/callerid/util/t9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/util/t9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(C)[Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/t9/d;->a()Lb/h/k/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/h/k/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/t9/d;->b()Lf/a/a/e/b;

    move-result-object v2

    invoke-static {p1, v2}, Lf/a/a/c;->c(CLf/a/a/e/b;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/t9/d;->a()Lb/h/k/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lb/h/k/g;->b(Ljava/lang/Object;)Z

    return-object v1

    .line 6
    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;
    :try_end_1
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/t9/d;->a()Lb/h/k/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/h/k/g;->b(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 12
    invoke-static {}, Lcom/allinone/callerid/util/t9/d;->a()Lb/h/k/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lb/h/k/g;->b(Ljava/lang/Object;)Z

    return-object v1

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 14
    invoke-static {}, Lcom/allinone/callerid/util/t9/d;->a()Lb/h/k/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/h/k/g;->b(Ljava/lang/Object;)Z

    .line 15
    throw p1
.end method
