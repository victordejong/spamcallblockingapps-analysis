.class public final Lcom/allinone/callerid/util/t9/d;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# static fields
.field private static final a:Lcom/allinone/callerid/util/t9/a;

.field private static final b:Lf/a/a/e/b;

.field private static final c:Lb/h/k/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/k/g<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/e/b;

    invoke-direct {v0}, Lf/a/a/e/b;-><init>()V

    sput-object v0, Lcom/allinone/callerid/util/t9/d;->b:Lf/a/a/e/b;

    .line 2
    sget-object v1, Lf/a/a/e/a;->a:Lf/a/a/e/a;

    invoke-virtual {v0, v1}, Lf/a/a/e/b;->e(Lf/a/a/e/a;)V

    .line 3
    sget-object v1, Lf/a/a/e/c;->b:Lf/a/a/e/c;

    invoke-virtual {v0, v1}, Lf/a/a/e/b;->f(Lf/a/a/e/c;)V

    .line 4
    sget-object v1, Lf/a/a/e/d;->b:Lf/a/a/e/d;

    invoke-virtual {v0, v1}, Lf/a/a/e/b;->g(Lf/a/a/e/d;)V

    .line 5
    new-instance v0, Lb/h/k/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lb/h/k/g;-><init>(I)V

    sput-object v0, Lcom/allinone/callerid/util/t9/d;->c:Lb/h/k/g;

    .line 6
    new-instance v0, Lcom/allinone/callerid/util/t9/d$a;

    invoke-direct {v0}, Lcom/allinone/callerid/util/t9/d$a;-><init>()V

    sput-object v0, Lcom/allinone/callerid/util/t9/d;->a:Lcom/allinone/callerid/util/t9/a;

    .line 7
    new-instance v0, Lcom/allinone/callerid/util/t9/d$b;

    invoke-direct {v0}, Lcom/allinone/callerid/util/t9/d$b;-><init>()V

    sput-object v0, Lcom/allinone/callerid/util/t9/d;->d:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic a()Lb/h/k/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/t9/d;->c:Lb/h/k/g;

    return-object v0
.end method

.method static synthetic b()Lf/a/a/e/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/t9/d;->b:Lf/a/a/e/b;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/t9/d;->a:Lcom/allinone/callerid/util/t9/a;

    invoke-static {p0, v0}, Lcom/allinone/callerid/util/t9/e;->a(Ljava/lang/String;Lcom/allinone/callerid/util/t9/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/search/CallLogBean;

    .line 4
    iget-object v2, v1, Lcom/allinone/callerid/search/CallLogBean;->i0:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/allinone/callerid/util/t9/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/allinone/callerid/util/t9/T9MatchInfo;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/allinone/callerid/util/t9/c;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/allinone/callerid/util/t9/T9MatchInfo;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->a()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    :cond_1
    new-instance v4, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v4}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 8
    iput-object v2, v1, Lcom/allinone/callerid/search/CallLogBean;->f0:Lcom/allinone/callerid/util/t9/T9MatchInfo;

    .line 9
    iput-object v3, v1, Lcom/allinone/callerid/search/CallLogBean;->g0:Lcom/allinone/callerid/util/t9/T9MatchInfo;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    sget-object p0, Lcom/allinone/callerid/util/t9/d;->d:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v0
.end method

.method public static e(Landroid/text/SpannableStringBuilder;Lcom/allinone/callerid/util/t9/T9MatchInfo;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->f()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->b()I

    move-result v1

    add-int/2addr v1, v0

    .line 7
    invoke-virtual {p1}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ge v0, p2, :cond_0

    if-gt v1, p2, :cond_0

    .line 8
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->c()Lcom/allinone/callerid/util/t9/T9MatchInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p0
.end method
