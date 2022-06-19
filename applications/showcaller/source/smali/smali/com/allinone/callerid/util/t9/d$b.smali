.class Lcom/allinone/callerid/util/t9/d$b;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/util/t9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/allinone/callerid/search/CallLogBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/allinone/callerid/util/t9/T9MatchInfo;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->c()Lcom/allinone/callerid/util/t9/T9MatchInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/search/CallLogBean;Lcom/allinone/callerid/search/CallLogBean;)I
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/allinone/callerid/search/CallLogBean;->f0:Lcom/allinone/callerid/util/t9/T9MatchInfo;

    .line 2
    iget-object v1, p2, Lcom/allinone/callerid/search/CallLogBean;->f0:Lcom/allinone/callerid/util/t9/T9MatchInfo;

    .line 3
    invoke-virtual {v0}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->a()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    .line 4
    invoke-virtual {v1}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->f()I

    move-result v2

    .line 6
    invoke-virtual {v1}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->f()I

    move-result v5

    if-ge v2, v5, :cond_0

    return v3

    :cond_0
    if-le v2, v5, :cond_1

    return v4

    .line 7
    :cond_1
    invoke-direct {p0, v0}, Lcom/allinone/callerid/util/t9/d$b;->b(Lcom/allinone/callerid/util/t9/T9MatchInfo;)I

    move-result v0

    .line 8
    invoke-direct {p0, v1}, Lcom/allinone/callerid/util/t9/d$b;->b(Lcom/allinone/callerid/util/t9/T9MatchInfo;)I

    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v2, v5

    if-eqz v2, :cond_4

    if-ge v0, v1, :cond_2

    return v4

    :cond_2
    if-le v0, v1, :cond_3

    return v3

    :cond_3
    return v2

    :cond_4
    if-eq v0, v1, :cond_6

    .line 10
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_5

    return v4

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    return v3

    .line 12
    :cond_6
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_7
    return v3

    .line 13
    :cond_8
    invoke-virtual {v1}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    .line 14
    :cond_9
    iget-object v0, p1, Lcom/allinone/callerid/search/CallLogBean;->g0:Lcom/allinone/callerid/util/t9/T9MatchInfo;

    .line 15
    iget-object v1, p2, Lcom/allinone/callerid/search/CallLogBean;->g0:Lcom/allinone/callerid/util/t9/T9MatchInfo;

    .line 16
    invoke-virtual {v0}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 17
    invoke-virtual {v1}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 18
    invoke-virtual {v0}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->f()I

    move-result v0

    .line 19
    invoke-virtual {v1}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->f()I

    move-result v1

    if-ge v0, v1, :cond_a

    return v3

    :cond_a
    if-le v0, v1, :cond_b

    return v4

    .line 20
    :cond_b
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_c
    return v3

    .line 21
    :cond_d
    invoke-virtual {v1}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    return v4

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    check-cast p2, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p0, p1, p2}, Lcom/allinone/callerid/util/t9/d$b;->a(Lcom/allinone/callerid/search/CallLogBean;Lcom/allinone/callerid/search/CallLogBean;)I

    move-result p1

    return p1
.end method
