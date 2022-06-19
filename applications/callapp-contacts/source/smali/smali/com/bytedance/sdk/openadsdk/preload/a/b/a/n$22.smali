.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$22;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "Lcom/bytedance/sdk/openadsdk/preload/a/l;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 698
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Lcom/bytedance/sdk/openadsdk/preload/a/l;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$30;->a:[I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 732
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 720
    :pswitch_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/o;-><init>()V

    .line 721
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->c()V

    .line 722
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$22;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    goto :goto_0

    .line 725
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d()V

    return-object v0

    .line 712
    :pswitch_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/i;-><init>()V

    .line 713
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a()V

    .line 714
    :goto_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$22;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    goto :goto_1

    .line 717
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b()V

    return-object v0

    .line 709
    :pswitch_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j()V

    .line 710
    sget-object p1, Lcom/bytedance/sdk/openadsdk/preload/a/n;->a:Lcom/bytedance/sdk/openadsdk/preload/a/n;

    return-object p1

    .line 702
    :pswitch_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 707
    :pswitch_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 704
    :pswitch_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    .line 705
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/Number;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Lcom/bytedance/sdk/openadsdk/preload/a/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 737
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 739
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 740
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->m()Lcom/bytedance/sdk/openadsdk/preload/a/q;

    move-result-object p2

    .line 741
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/Number;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    return-void

    .line 743
    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->f()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Z)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    return-void

    .line 746
    :cond_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    return-void

    .line 749
    :cond_3
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 750
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 751
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->l()Lcom/bytedance/sdk/openadsdk/preload/a/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/i;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    .line 752
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$22;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    goto :goto_0

    .line 754
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    return-void

    .line 756
    :cond_5
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 757
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 758
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->k()Lcom/bytedance/sdk/openadsdk/preload/a/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/o;->n()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 759
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 760
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$22;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    goto :goto_1

    .line 762
    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    return-void

    .line 765
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t write "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 738
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    return-void
.end method

.method public final bridge synthetic a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    check-cast p2, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$22;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    return-void
.end method

.method public final synthetic b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$22;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object p1

    return-object p1
.end method
