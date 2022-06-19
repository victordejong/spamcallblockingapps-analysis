.class final enum Lorg/jsoup/c/c$24;
.super Lorg/jsoup/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 891
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method


# virtual methods
.method final anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 2

    .line 978
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 980
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v0

    .line 8152
    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 9046
    iget-object v0, v0, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 980
    sget-object v1, Lorg/jsoup/c/c$a;->C:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 9551
    iput-boolean v0, p2, Lorg/jsoup/c/b;->o:Z

    .line 982
    sget-object v0, Lorg/jsoup/c/c$24;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    const/4 v0, 0x0

    .line 10551
    iput-boolean v0, p2, Lorg/jsoup/c/b;->o:Z

    goto :goto_0

    .line 985
    :cond_0
    sget-object v0, Lorg/jsoup/c/c$24;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 7

    .line 893
    invoke-virtual {p1}, Lorg/jsoup/c/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {p2}, Lorg/jsoup/c/b;->k()V

    .line 895
    invoke-virtual {p2}, Lorg/jsoup/c/b;->b()V

    .line 896
    sget-object v0, Lorg/jsoup/c/c$24;->InTableText:Lorg/jsoup/c/c;

    .line 1145
    iput-object v0, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    .line 897
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 898
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/c/i;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1393
    check-cast p1, Lorg/jsoup/c/i$c;

    .line 899
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$c;)V

    return v1

    .line 901
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/c/i;->b()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 902
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v2

    .line 904
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    const-string v3, "table"

    if-eqz v0, :cond_f

    .line 2377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 906
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v4

    const-string v5, "caption"

    .line 907
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 908
    invoke-virtual {p2}, Lorg/jsoup/c/b;->g()V

    .line 909
    invoke-virtual {p2}, Lorg/jsoup/c/b;->o()V

    .line 910
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 911
    sget-object p1, Lorg/jsoup/c/c$24;->InCaption:Lorg/jsoup/c/c;

    .line 3145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto/16 :goto_0

    :cond_3
    const-string v5, "colgroup"

    .line 912
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 913
    invoke-virtual {p2}, Lorg/jsoup/c/b;->g()V

    .line 914
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 915
    sget-object p1, Lorg/jsoup/c/c$24;->InColumnGroup:Lorg/jsoup/c/c;

    .line 4145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto/16 :goto_0

    :cond_4
    const-string v6, "col"

    .line 916
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 917
    invoke-virtual {p2, v5}, Lorg/jsoup/c/b;->l(Ljava/lang/String;)Z

    .line 918
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 919
    :cond_5
    sget-object v5, Lorg/jsoup/c/c$a;->u:[Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 920
    invoke-virtual {p2}, Lorg/jsoup/c/b;->g()V

    .line 921
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 922
    sget-object p1, Lorg/jsoup/c/c$24;->InTableBody:Lorg/jsoup/c/c;

    .line 5145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto :goto_0

    .line 923
    :cond_6
    sget-object v5, Lorg/jsoup/c/c$a;->v:[Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v0, "tbody"

    .line 924
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->l(Ljava/lang/String;)Z

    .line 925
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 926
    :cond_7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 927
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 928
    invoke-virtual {p2, v3}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 930
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 931
    :cond_8
    sget-object v3, Lorg/jsoup/c/c$a;->w:[Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 932
    sget-object v0, Lorg/jsoup/c/c$24;->InHead:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1

    :cond_9
    const-string v3, "input"

    .line 933
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 934
    iget-object v2, v0, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 935
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/c/c$24;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 937
    :cond_a
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->b(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_b
    const-string v3, "form"

    .line 939
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 940
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 5555
    iget-object p1, p2, Lorg/jsoup/c/b;->k:Lorg/jsoup/nodes/k;

    if-eqz p1, :cond_c

    return v2

    .line 944
    :cond_c
    invoke-virtual {p2, v0, v2}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;Z)Lorg/jsoup/nodes/k;

    :cond_d
    :goto_0
    return v1

    .line 947
    :cond_e
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/c/c$24;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 950
    :cond_f
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 952
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    .line 954
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 955
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 956
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v2

    .line 959
    :cond_10
    invoke-virtual {p2, v3}, Lorg/jsoup/c/b;->c(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    .line 961
    invoke-virtual {p2}, Lorg/jsoup/c/b;->j()V

    return v1

    .line 962
    :cond_11
    sget-object v1, Lorg/jsoup/c/c$a;->B:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 963
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v2

    .line 966
    :cond_12
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/c/c$24;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 969
    :cond_13
    invoke-virtual {p1}, Lorg/jsoup/c/i;->g()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 970
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 7152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 8046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    const-string v0, "html"

    .line 970
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 971
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    :cond_14
    return v1

    .line 974
    :cond_15
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/c/c$24;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1
.end method
