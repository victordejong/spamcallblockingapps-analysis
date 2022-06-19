.class final Lorg/mistergroup/shouldianswer/components/a/g$b;
.super Ljava/lang/Object;
.source "ContactsLiveData.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/components/a/g;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/mistergroup/shouldianswer/components/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/components/a/g$b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/components/a/a;Lorg/mistergroup/shouldianswer/components/a/a;)I
    .locals 4

    .line 40
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->d()I

    move-result v0

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/a/a;->d()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->d()I

    move-result v0

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/a/a;->d()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 42
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 43
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/components/a/g$b;->a:Z

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ac;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/ac;->i()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lkotlin/i/g;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    invoke-static {p1, p2, v3}, Lkotlin/i/g;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v3

    :cond_5
    :goto_0
    return v2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lorg/mistergroup/shouldianswer/components/a/a;

    check-cast p2, Lorg/mistergroup/shouldianswer/components/a/a;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/components/a/g$b;->a(Lorg/mistergroup/shouldianswer/components/a/a;Lorg/mistergroup/shouldianswer/components/a/a;)I

    move-result p1

    return p1
.end method
